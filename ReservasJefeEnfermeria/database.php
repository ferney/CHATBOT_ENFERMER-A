<?php
// database.php - Conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "laboratory_reservations";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Establecer zona horaria
date_default_timezone_set('America/Bogota');
?>