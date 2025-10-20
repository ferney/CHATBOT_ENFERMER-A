<?php
// process_crud.php - Procesamiento de operaciones CRUD
session_start();
header("Content-Type: text/html; charset=utf-8");
include 'database.php';

$action = $_POST['action'] ?? $_GET['action'] ?? '';

// Función para redirigir con mensaje
function redirectWithMessage($message, $type = 'success') {
    $_SESSION['message'] = $message;
    $_SESSION['message_type'] = $type;
    header('Location: crud.php');
    exit();
}

switch ($action) {
    case 'create':
        createReservation($conn);
        break;
    case 'update':
        updateReservation($conn);
        break;
    case 'delete':
        deleteReservation($conn);
        break;
    case 'get':
        getReservation($conn);
        break;
    default:
        redirectWithMessage("Acción no válida", "error");
        break;
}

$conn->close();

// Crear nueva reserva
function createReservation($conn) {
    // Validar y obtener datos
    $laboratorio = $conn->real_escape_string($_POST['laboratorio']);
    $fecha = $conn->real_escape_string($_POST['fecha']);
    $hora_inicio = $conn->real_escape_string($_POST['hora_inicio']);
    $hora_fin = $conn->real_escape_string($_POST['hora_fin']);
    $teacher_name = $conn->real_escape_string($_POST['teacher_name']);
    $practice_type = $conn->real_escape_string($_POST['practice_type']);
    $practice_area = $conn->real_escape_string($_POST['practice_area']);
    $materials = $conn->real_escape_string($_POST['materials']);
    $num_students = (int)$_POST['num_students'];
    
    // Validaciones básicas
    if (empty($laboratorio) || empty($fecha) || empty($hora_inicio) || empty($hora_fin) || 
        empty($teacher_name) || empty($practice_type) || empty($practice_area) || $num_students <= 0) {
        redirectWithMessage("Todos los campos son obligatorios", "error");
        return;
    }
    
    // Verificar disponibilidad
    $check_query = "SELECT * FROM reservations 
                   WHERE practice_area = '$practice_area' AND fecha = '$fecha'
                   AND (
                       (hora_inicio < '$hora_fin' AND hora_fin > '$hora_inicio')
                   )";
    
    $check_result = $conn->query($check_query);
    
    if ($check_result->num_rows > 0) {
        redirectWithMessage("El área '$practice_area' ya está reservada para este horario", "error");
        return;
    }
    
    // Insertar reserva
    $insert_query = "INSERT INTO reservations (
        laboratorio, fecha, hora_inicio, hora_fin, 
        teacher_name, practice_type, materials, num_students, practice_area
    ) VALUES (
        '$laboratorio', '$fecha', '$hora_inicio', '$hora_fin', 
        '$teacher_name', '$practice_type', '$materials', $num_students, '$practice_area'
    )";
    
    if ($conn->query($insert_query)) {
        redirectWithMessage("Reserva creada exitosamente");
    } else {
        redirectWithMessage("Error al crear la reserva: " . $conn->error, "error");
    }
}

// Actualizar reserva existente
function updateReservation($conn) {
    $id = (int)$_POST['id'];
    
    // Validar y obtener datos
    $laboratorio = $conn->real_escape_string($_POST['laboratorio']);
    $fecha = $conn->real_escape_string($_POST['fecha']);
    $hora_inicio = $conn->real_escape_string($_POST['hora_inicio']);
    $hora_fin = $conn->real_escape_string($_POST['hora_fin']);
    $teacher_name = $conn->real_escape_string($_POST['teacher_name']);
    $practice_type = $conn->real_escape_string($_POST['practice_type']);
    $practice_area = $conn->real_escape_string($_POST['practice_area']);
    $materials = $conn->real_escape_string($_POST['materials']);
    $num_students = (int)$_POST['num_students'];
    
    // Validaciones básicas
    if (empty($laboratorio) || empty($fecha) || empty($hora_inicio) || empty($hora_fin) || 
        empty($teacher_name) || empty($practice_type) || empty($practice_area) || $num_students <= 0) {
        redirectWithMessage("Todos los campos son obligatorios", "error");
        return;
    }
    
    // Verificar disponibilidad (excluyendo la reserva actual)
    $check_query = "SELECT * FROM reservations 
                   WHERE practice_area = '$practice_area' AND fecha = '$fecha'
                   AND (
                       (hora_inicio < '$hora_fin' AND hora_fin > '$hora_inicio')
                   )
                   AND id != $id";
    
    $check_result = $conn->query($check_query);
    
    if ($check_result->num_rows > 0) {
        redirectWithMessage("El área '$practice_area' ya está reservada para este horario", "error");
        return;
    }
    
    // Actualizar reserva
    $update_query = "UPDATE reservations SET
        laboratorio = '$laboratorio',
        fecha = '$fecha',
        hora_inicio = '$hora_inicio',
        hora_fin = '$hora_fin',
        teacher_name = '$teacher_name',
        practice_type = '$practice_type',
        materials = '$materials',
        num_students = $num_students,
        practice_area = '$practice_area'
        WHERE id = $id";
    
    if ($conn->query($update_query)) {
        redirectWithMessage("Reserva actualizada exitosamente");
    } else {
        redirectWithMessage("Error al actualizar la reserva: " . $conn->error, "error");
    }
}

// Eliminar reserva
function deleteReservation($conn) {
    $id = (int)$_POST['id'];
    
    $delete_query = "DELETE FROM reservations WHERE id = $id";
    
    if ($conn->query($delete_query)) {
        redirectWithMessage("Reserva eliminada exitosamente");
    } else {
        redirectWithMessage("Error al eliminar la reserva: " . $conn->error, "error");
    }
}

// Obtener reserva por ID (solo esta función mantiene JSON para AJAX)
function getReservation($conn) {
    header("Content-Type: application/json");
    
    $id = (int)$_GET['id'];
    
    $query = "SELECT * FROM reservations WHERE id = $id";
    $result = $conn->query($query);
    
    if ($result->num_rows > 0) {
        $reservation = $result->fetch_assoc();
        echo json_encode(["success" => true, "reservation" => $reservation]);
    } else {
        echo json_encode(["success" => false, "message" => "Reserva no encontrada"]);
    }
    exit();
}
?>