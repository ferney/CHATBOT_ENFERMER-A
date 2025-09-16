<?php
// Configurar parámetros de sesión
$cookieParams = session_get_cookie_params();
session_set_cookie_params([
    'lifetime' => 86400,
    'path' => '/',
    'domain' => $_SERVER['HTTP_HOST'],
    'secure' => isset($_SERVER['HTTPS']),
    'httponly' => true,
    'samesite' => 'Lax'
]);
session_name('SecureSession');
session_start();

// Verificar autenticación
if (empty($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    error_log("Acceso no autorizado. Sesión: " . print_r($_SESSION, true));
    header('HTTP/1.1 401 Unauthorized');
    die(json_encode(['error' => 'Acceso no autorizado']));
}

// Configurar cabeceras CORS seguras
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: " . (isset($_SERVER['HTTPS']) ? 'https' : 'http') . "://" . $_SERVER['HTTP_HOST']);
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");
header("Access-Control-Allow-Credentials: true");

// Manejar preflight CORS
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    http_response_code(200);
    exit();
}

// Conexión segura a la base de datos
try {
    $pdo = new PDO(
        "mysql:host=localhost;dbname=laboratory_reservations;charset=utf8mb4",
        "root",
        "",
        [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_EMULATE_PREPARES => false
        ]
    );
} catch (PDOException $e) {
    die(json_encode(['error' => 'Error de conexión a la base de datos']));
}

// Lista de días festivos
$holidays_2025 = [
    "2025-01-01", "2025-01-06", "2025-03-24", "2025-04-17", "2025-04-18",
    "2025-05-01", "2025-06-02", "2025-06-23", "2025-06-30", "2025-07-20",
    "2025-08-07", "2025-08-18", "2025-10-13", "2025-11-03", "2025-11-17",
    "2025-12-08", "2025-12-25"
];

// Función para verificar días no laborables
function is_non_working_day($fecha, $holidays) {
    $date_obj = new DateTime($fecha);
    $day_of_week = $date_obj->format('w');
    $is_weekend = ($day_of_week == 0 || $day_of_week == 6);
    $is_holiday = in_array($fecha, $holidays);
    return $is_weekend || $is_holiday;
}

// Procesar acciones
$action = $_GET['action'] ?? '';
$input = json_decode(file_get_contents('php://input'), true) ?? [];

try {
    switch ($action) {
        case 'get_reservations':
            $id = isset($_GET['id']) ? $_GET['id'] : null;
            $query = "SELECT * FROM reservations";
            $params = [];
            
            if ($id) {
                $query .= " WHERE id = ?";
                $params[] = $id;
            }
            
            $stmt = $pdo->prepare($query);
            $stmt->execute($params);
            echo json_encode(['reservations' => $stmt->fetchAll()]);
            break;
            
        case 'update':
            // Validación de datos
            $required = ['id', 'laboratorio', 'fecha', 'hora_inicio', 'hora_fin', 
                         'teacher_name', 'practice_type', 'materials', 'num_students', 'practice_area'];
            
            foreach ($required as $field) {
                if (empty($input[$field])) {
                    throw new Exception("Falta el campo: $field");
                }
            }
            
            // Verificar disponibilidad
            $stmt = $pdo->prepare("SELECT COUNT(*) FROM reservations 
                                  WHERE laboratorio = ? AND fecha = ? 
                                  AND ((hora_inicio <= ? AND hora_fin > ?) 
                                       OR (hora_inicio < ? AND hora_fin > ?))
                                  AND id != ?");
            $stmt->execute([
                $input['laboratorio'],
                $input['fecha'],
                $input['hora_inicio'], $input['hora_inicio'],
                $input['hora_fin'], $input['hora_inicio'],
                $input['id']
            ]);
            
            if ($stmt->fetchColumn() > 0) {
                throw new Exception("El horario no está disponible");
            }
            
            // Actualizar reserva
            $stmt = $pdo->prepare("UPDATE reservations SET 
                laboratorio = ?, fecha = ?, hora_inicio = ?, hora_fin = ?,
                teacher_name = ?, practice_type = ?, materials = ?, num_students = ?, practice_area = ?
                WHERE id = ?");
                
            $stmt->execute([
                $input['laboratorio'],
                $input['fecha'],
                $input['hora_inicio'],
                $input['hora_fin'],
                $input['teacher_name'],
                $input['practice_type'],
                $input['materials'],
                $input['num_students'],
                $input['practice_area'],
                $input['id']
            ]);
            
            echo json_encode(['success' => true]);
            break;
            
        case 'cancel':
            if (empty($input['id'])) {
                throw new Exception("Falta ID de reserva");
            }
            
            $stmt = $pdo->prepare("DELETE FROM reservations WHERE id = ?");
            $stmt->execute([$input['id']]);
            
            if ($stmt->rowCount() > 0) {
                echo json_encode(['success' => true]);
            } else {
                throw new Exception("No se encontró la reserva");
            }
            break;
            
        default:
            throw new Exception("Acción no válida");
    }
} catch (Exception $e) {
    http_response_code(400);
    echo json_encode(['error' => $e->getMessage()]);
}