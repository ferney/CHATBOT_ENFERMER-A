<?php
/**
 * Configuración de autenticación para el panel de administración
 *
 */


ini_set('session.cookie_httponly', 1);
ini_set('session.use_only_cookies', 1);
ini_set('session.cookie_secure', 0); //cambiar a 1 cuando active el https
ini_set('session.cookie_samesite', 'Lax');


if (session_status() === PHP_SESSION_NONE) {
    session_start();
}


define('SESSION_TIMEOUT', 1800);

$ADMIN_USERS = [
    'admin' => password_hash('admin123', PASSWORD_BCRYPT), 
    'unisangil' => password_hash('enfermeria2024', PASSWORD_BCRYPT),
];

/**
 * Verificar credenciales de usuario
 */
function verify_credentials($username, $password) {
    global $ADMIN_USERS;

    if (!isset($ADMIN_USERS[$username])) {
        return false;
    }

    return password_verify($password, $ADMIN_USERS[$username]);
}

/**
 * Verificar si el usuario está autenticado
 */
function is_authenticated() {
    if (!isset($_SESSION['authenticated']) || $_SESSION['authenticated'] !== true) {
        return false;
    }

    // Verificar timeout de sesión
    if (isset($_SESSION['last_activity'])) {
        $inactive_time = time() - $_SESSION['last_activity'];
        if ($inactive_time > SESSION_TIMEOUT) {
            // Sesión expirada
            session_unset();
            session_destroy();
            return false;
        }
    }

    // Actualizar tiempo de última actividad
    $_SESSION['last_activity'] = time();

    return true;
}

/**
 * Iniciar sesión de usuario
 */
function login_user($username) {
    session_regenerate_id(true);
    $_SESSION['authenticated'] = true;
    $_SESSION['username'] = $username;
    $_SESSION['login_time'] = time();
    $_SESSION['last_activity'] = time();
}

/**
 * Cerrar sesión de usuario
 */
function logout_user() {
    session_unset();
    session_destroy();
    session_start();
    session_regenerate_id(true);
}

/**
 * Redirigir al login si no está autenticado
 */
function require_auth() {
    if (!is_authenticated()) {
        header('Location: login.html');
        exit();
    }
}
?>
