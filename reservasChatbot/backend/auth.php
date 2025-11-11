<?php
/**
 * Script de autenticación para el panel de administración
 * Maneja login y logout de usuarios
 */

// Deshabilitar mostrar errores en producción
ini_set('display_errors', 0);
error_reporting(0);

// Headers de seguridad
header("Content-Type: application/json; charset=utf-8");
header("Access-Control-Allow-Methods: POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

// CORS Seguro
$allowedOrigins = ["http://localhost", "https://tudominio.com"];
$origin = $_SERVER['HTTP_ORIGIN'] ?? '';
if (in_array($origin, $allowedOrigins)) {
    header("Access-Control-Allow-Origin: $origin");
}

if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    http_response_code(200);
    exit();
}

// Incluir configuración de autenticación
require_once 'config_auth.php';

try {
    // Obtener datos de entrada
    $input = json_decode(file_get_contents('php://input'), true);

    if (!$input || !isset($input['action'])) {
        throw new Exception("Acción no especificada");
    }

    $action = $input['action'];

    switch ($action) {
        case 'login':
            if (empty($input['username']) || empty($input['password'])) {
                throw new Exception("Usuario y contraseña son requeridos");
            }

            $username = trim($input['username']);
            $password = $input['password'];

            // Verificar credenciales
            if (verify_credentials($username, $password)) {
                // Login exitoso
                login_user($username);

                echo json_encode([
                    "success" => true,
                    "message" => "Autenticación exitosa",
                    "user" => $username,
                    "debug" => $session_debug  // Remover en producción
                ]);
            } else {
                sleep(1);

                http_response_code(401);
                echo json_encode([
                    "success" => false,
                    "message" => "Usuario o contraseña incorrectos"
                ]);
            }
            break;

        case 'logout':
            // Cerrar sesión
            logout_user();

            echo json_encode([
                "success" => true,
                "message" => "Sesión cerrada exitosamente"
            ]);
            break;

        case 'check':
            // Verificar si hay sesión activa
            if (is_authenticated()) {
                echo json_encode([
                    "success" => true,
                    "authenticated" => true,
                    "username" => $_SESSION['username'] ?? 'unknown'
                ]);
            } else {
                http_response_code(401);
                echo json_encode([
                    "success" => false,
                    "authenticated" => false
                ]);
            }
            break;

        default:
            throw new Exception("Acción no válida");
    }

} catch (Exception $e) {
    http_response_code(400);
    echo json_encode([
        "success" => false,
        "error" => $e->getMessage()
    ]);
}
?>
