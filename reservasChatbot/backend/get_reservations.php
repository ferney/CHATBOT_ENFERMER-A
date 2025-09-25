<?php
header("Content-Type: application/json; charset=utf-8");

// CORS Seguro
$allowedOrigins = ["http://localhost", "https://tudominio.com"];
$origin = $_SERVER['HTTP_ORIGIN'] ?? '';
if (in_array($origin, $allowedOrigins)) {
    header("Access-Control-Allow-Origin: $origin");
}

header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Headers: Content-Type");

// Configuración DB
$servername = "mysql-db";
$username = "chatbot_user";
$password = "chatbot_pass_2024";
$dbname = "laboratory_reservations";

// Conectar
$conn = new mysqli($servername, $username, $password, $dbname);

// Configurar charset UTF-8
$conn->set_charset("utf8");

if ($conn->connect_error) {
    http_response_code(500);
    echo json_encode(["error" => "Error de conexión"]);
    exit();
}

// Comprobar si se solicita detalle específico
$reservation_id = $_GET['id'] ?? null;

if ($reservation_id) {
    // Consultar detalle específico de una reserva
    $sql = "SELECT
                r.id,
                r.laboratorio,
                r.practice_area,
                r.practice_type,
                DATE_FORMAT(r.fecha, '%d/%m/%Y') AS fecha,
                TIME_FORMAT(r.hora_inicio, '%H:%i') AS hora_inicio,
                TIME_FORMAT(r.hora_fin, '%H:%i') AS hora_fin,
                r.teacher_name,
                r.materials,
                r.num_students
            FROM reservations r
            WHERE r.id = ?";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $reservation_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows === 0) {
        http_response_code(404);
        echo json_encode(["error" => "Reserva no encontrada"]);
        exit();
    }

    $reservation = $result->fetch_assoc();

    // Obtener estudiantes de la reserva
    $sql_students = "SELECT student_name, student_id FROM reservation_students WHERE reservation_id = ? ORDER BY id";
    $stmt_students = $conn->prepare($sql_students);
    $stmt_students->bind_param("i", $reservation_id);
    $stmt_students->execute();
    $students_result = $stmt_students->get_result();

    $students = [];
    while($student = $students_result->fetch_assoc()) {
        $students[] = $student;
    }

    $reservation['students'] = $students;

    echo json_encode($reservation);
} else {
    // Consulta listado básico de reservas con ID para el modal
    $sql = "SELECT
                r.id,
                r.practice_area AS Área,
                r.practice_type AS Tipo,
                DATE_FORMAT(r.fecha, '%d/%m/%Y') AS Fecha,
                TIME_FORMAT(r.hora_inicio, '%H:%i') AS 'Hora Inicio',
                TIME_FORMAT(r.hora_fin, '%H:%i') AS 'Hora Fin',
                r.teacher_name AS Docente
            FROM reservations r
            ORDER BY r.fecha DESC, r.hora_inicio DESC";

    $result = $conn->query($sql);

    if (!$result) {
        http_response_code(500);
        echo json_encode(["error" => "Error en la consulta"]);
        exit();
    }

    $reservations = [];
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $reservations[] = $row;
        }
    }

    echo json_encode([
        "data" => $reservations,
        "columns" => ["Área", "Tipo", "Fecha", "Hora Inicio", "Hora Fin", "Docente", "Acciones"]
    ]);
}

$conn->close();
?>