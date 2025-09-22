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

// Consulta reservas
$sql = "SELECT 
            practice_area AS Área, 
            practice_type AS Tipo, 
            DATE_FORMAT(fecha, '%d/%m/%Y') AS Fecha,
            TIME_FORMAT(hora_inicio, '%H:%i') AS 'Hora Inicio',
            TIME_FORMAT(hora_fin, '%H:%i') AS 'Hora Fin',
            teacher_name AS Docente
        FROM reservations
        ORDER BY fecha DESC, hora_inicio DESC";

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
    "columns" => ["Área", "Tipo", "Fecha", "Hora Inicio", "Hora Fin", "Docente"]
]);

$conn->close();
?>