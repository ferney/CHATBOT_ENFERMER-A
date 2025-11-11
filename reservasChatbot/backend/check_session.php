<?php
/**
 * Script para verificar si hay una sesión activa
 * Usado por las páginas protegidas
 */

// Incluir configuración de autenticación
require_once 'config_auth.php';

// Headers JSON
header("Content-Type: application/json; charset=utf-8");


if (is_authenticated()) {
    echo json_encode([
        "authenticated" => true,
        "username" => $_SESSION['username'] ?? 'unknown',
        "login_time" => $_SESSION['login_time'] ?? null,
    ]);
} else {
    http_response_code(401);
    echo json_encode([
        "authenticated" => false,
    ]);
}
?>
