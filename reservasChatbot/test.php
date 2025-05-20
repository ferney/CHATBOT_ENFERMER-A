<?php
// Database connection details
$servername = "localhost";
$username = "root"; // Default XAMPP MySQL user
$password = ""; // Default XAMPP MySQL password (empty)
$dbname = "laboratory_reservations"; // Replace with your database name
// Create connection
$mysqli = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($mysqli->connect_error) {
    echo json_encode(["status" => "error", "message" => "Connection failed: " . $mysqli->connect_error]);
} else {
    echo json_encode(["status" => "success", "message" => "Successfully connected to the database"]);
}
?>