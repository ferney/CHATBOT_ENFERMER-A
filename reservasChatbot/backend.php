<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
header("Access-Control-Allow-Credentials: true");

$method = $_SERVER['REQUEST_METHOD'];
error_log("Request method: $method");
if ($method == "OPTIONS") {
    error_log("Handling OPTIONS preflight request");
    die();
}

// Database connection details
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "laboratory_reservations";

// List of holidays in 2025 (format: YYYY-MM-DD)
$holidays_2025 = [
    "2025-01-01", "2025-01-06", "2025-03-24", "2025-04-17", "2025-04-18",
    "2025-05-01", "2025-06-02", "2025-06-23", "2025-06-30", "2025-07-20",
    "2025-08-07", "2025-08-18", "2025-10-13", "2025-11-03", "2025-11-17",
    "2025-12-08", "2025-12-25"
];

// Create connection
$mysqli = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($mysqli->connect_error) {
    error_log("Database connection failed: " . $mysqli->connect_error);
    die(json_encode(["error" => "Connection failed: " . $mysqli->connect_error]));
}

// Function to check if a date is a non-working day
function is_non_working_day($fecha, $holidays) {
    $date_obj = new DateTime($fecha);
    $day_of_week = $date_obj->format('w');
    $is_weekend = ($day_of_week == 0 || $day_of_week == 6);
    $is_holiday = in_array($fecha, $holidays);
    return $is_weekend || $is_holiday;
}

// Function to get all dates between two dates
function get_dates_between($start_date, $end_date) {
    $dates = [];
    $current = new DateTime($start_date);
    $end = new DateTime($end_date);
    $end->modify('+1 day'); // Include the end date
    while ($current < $end) {
        $dates[] = $current->format('Y-m-d');
        $current->modify('+1 day');
    }
    return $dates;
}

// Function to get available time slots for a day
function get_available_slots($lab, $fecha, $mysqli) {
    $slots = [];
    $possible_slots = [
        ["08:00", "10:00"], ["10:00", "12:00"], ["12:00", "14:00"],
        ["14:00", "16:00"], ["16:00", "18:00"]
    ];

    foreach ($possible_slots as $slot) {
        $inicio = $slot[0];
        $fin = $slot[1];

        $query = "SELECT * FROM reservations WHERE laboratorio = '$lab' AND fecha = '$fecha' 
                  AND ((hora_inicio <= '$inicio' AND hora_fin > '$inicio') 
                       OR (hora_inicio < '$fin' AND hora_fin > '$inicio'))";
        $result = $mysqli->query($query);

        if ($result->num_rows == 0) {
            $slots[] = "$inicio - $fin";
        }
    }

    return $slots;
}

// Handle JSON input only for POST requests
$input = [];
if ($method === "POST") {
    $rawInput = file_get_contents("php://input");
    error_log("Raw input from php://input: " . $rawInput);
    $input = json_decode($rawInput, true);
    if (json_last_error() !== JSON_ERROR_NONE) {
        error_log("JSON decode error: " . json_last_error_msg());
        echo json_encode(["error" => "Invalid JSON: " . json_last_error_msg()]);
        exit;
    }
}

// Handle requests based on action
$action = isset($_GET['action']) ? $_GET['action'] : '';
error_log("Action: $action");

if ($action === "check_availability") {
    $lab = isset($_GET['lab']) ? $mysqli->real_escape_string($_GET['lab']) : '';
    $fecha = isset($_GET['fecha']) ? $mysqli->real_escape_string($_GET['fecha']) : '';
    $inicio = isset($_GET['inicio']) ? $mysqli->real_escape_string($_GET['inicio']) : '';
    $fin = isset($_GET['fin']) ? $mysqli->real_escape_string($_GET['fin']) : '';

    if (!$lab || !$fecha || !$inicio || !$fin) {
        echo json_encode(["error" => "Missing parameters"]);
        exit;
    }

    if (is_non_working_day($fecha, $holidays_2025)) {
        echo json_encode(["error" => "Cannot check availability on weekends or holidays"]);
        exit;
    }

    $query = "SELECT * FROM reservations WHERE laboratorio = '$lab' AND fecha = '$fecha' 
              AND ((hora_inicio <= '$inicio' AND hora_fin > '$inicio') 
                   OR (hora_inicio < '$fin' AND hora_fin > '$inicio'))";
    $result = $mysqli->query($query);

    if ($result->num_rows > 0) {
        $suggestedStart = "14:00";
        $suggestedEnd = "16:00";
        $checkSuggestion = "SELECT * FROM reservations WHERE laboratorio = '$lab' AND fecha = '$fecha' 
                           AND ((hora_inicio <= '$suggestedStart' AND hora_fin > '$suggestedStart') 
                                OR (hora_inicio < '$suggestedEnd' AND hora_fin > '$suggestedStart'))";
        $suggestionResult = $mysqli->query($checkSuggestion);
        if ($suggestionResult->num_rows > 0) {
            $suggestedStart = "16:00";
            $suggestedEnd = "18:00";
        }
        echo json_encode([
            "available" => false,
            "suggestedStart" => $suggestedStart,
            "suggestedEnd" => $suggestedEnd
        ]);
    } else {
        echo json_encode(["available" => true]);
    }
} elseif ($action === "get_weekly_availability") {
    $lab = isset($_GET['lab']) ? $mysqli->real_escape_string($_GET['lab']) : '';
    $start_date = isset($_GET['start_date']) ? $mysqli->real_escape_string($_GET['start_date']) : '';
    $end_date = isset($_GET['end_date']) ? $mysqli->real_escape_string($_GET['end_date']) : '';

    if (!$lab || !$start_date || !$end_date) {
        echo json_encode(["error" => "Missing parameters"]);
        exit;
    }

    $dates = get_dates_between($start_date, $end_date);
    $availability = [];

    foreach ($dates as $date) {
        if (is_non_working_day($date, $holidays_2025)) {
            continue; // Skip weekends and holidays
        }

        $slots = get_available_slots($lab, $date, $mysqli);
        $availability[$date] = $slots;
    }

    echo json_encode(["availability" => $availability]);
} elseif ($action === "reserve") {
    $lab = isset($input['laboratorio']) ? $mysqli->real_escape_string($input['laboratorio']) : '';
    $fecha = isset($input['fecha']) ? $mysqli->real_escape_string($input['fecha']) : '';
    $hora_inicio = isset($input['hora_inicio']) ? $mysqli->real_escape_string($input['hora_inicio']) : '';
    $hora_fin = isset($input['hora_fin']) ? $mysqli->real_escape_string($input['hora_fin']) : '';
    $usuario = isset($input['usuario']) ? $mysqli->real_escape_string($input['usuario']) : '';
    $teacher_name = isset($input['teacher_name']) ? $mysqli->real_escape_string($input['teacher_name']) : '';
    $practice_type = isset($input['practice_type']) ? $mysqli->real_escape_string($input['practice_type']) : '';
    $materials = isset($input['materials']) ? $mysqli->real_escape_string($input['materials']) : '';
    $num_students = isset($input['num_students']) ? (int)$input['num_students'] : 0;

    error_log("Parsed input parameters: laboratorio=$lab, fecha=$fecha, hora_inicio=$hora_inicio, hora_fin=$hora_fin, usuario=$usuario, teacher_name=$teacher_name, practice_type=$practice_type, materials=$materials, num_students=$num_students");

    $missing = [];
    if (!$lab) $missing[] = "laboratorio";
    if (!$fecha) $missing[] = "fecha";
    if (!$hora_inicio) $missing[] = "hora_inicio";
    if (!$hora_fin) $missing[] = "hora_fin";
    if (!$usuario) $missing[] = "usuario";
    if (!$teacher_name) $missing[] = "teacher_name";
    if (!$practice_type) $missing[] = "practice_type";
    if (!$materials) $missing[] = "materials";
    if ($num_students <= 0) $missing[] = "num_students (must be greater than 0)";

    if (!empty($missing)) {
        error_log("Missing parameters: " . implode(", ", $missing));
        echo json_encode(["success" => false, "message" => "Missing or invalid parameters: " . implode(", ", $missing)]);
        exit;
    }

    if (is_non_working_day($fecha, $holidays_2025)) {
        error_log("Cannot reserve on weekends or holidays: $fecha");
        echo json_encode(["success" => false, "message" => "Cannot reserve on weekends or holidays"]);
        exit;
    }

    $query = "SELECT * FROM reservations WHERE laboratorio = '$lab' AND fecha = '$fecha' 
              AND ((hora_inicio <= '$hora_inicio' AND hora_fin > '$hora_inicio') 
                   OR (hora_inicio < '$hora_fin' AND hora_fin > '$hora_inicio'))";
    $result = $mysqli->query($query);

    if (!$result) {
        error_log("Error checking overlapping reservations: " . $mysqli->error);
        echo json_encode(["success" => false, "message" => "Error checking availability: " . $mysqli->error]);
        exit;
    }

    if ($result->num_rows > 0) {
        error_log("Ese espacio está reservado: $lab on $fecha from $hora_inicio to $hora_fin");
        echo json_encode(["success" => false, "message" => "Ese espacio está reservado"]);
        exit;
    }

    $insertQuery = "INSERT INTO reservations (laboratorio, fecha, hora_inicio, hora_fin, usuario, teacher_name, practice_type, materials, num_students) 
                    VALUES ('$lab', '$fecha', '$hora_inicio', '$hora_fin', '$usuario', '$teacher_name', '$practice_type', '$materials', $num_students)";
    error_log("Executing query: $insertQuery");

    if ($mysqli->query($insertQuery) === TRUE) {
        error_log("Reservation successful for $lab on $fecha");
        echo json_encode(["success" => true, "message" => "Reservation successful"]);
    } else {
        error_log("Error inserting reservation: " . $mysqli->error);
        echo json_encode(["success" => false, "message" => "Error inserting reservation: " . $mysqli->error]);
    }
} elseif ($action === "cancel") {
    $lab = isset($input['laboratorio']) ? $mysqli->real_escape_string($input['laboratorio']) : '';
    $fecha = isset($input['fecha']) ? $mysqli->real_escape_string($input['fecha']) : '';
    $hora_inicio = isset($input['hora_inicio']) ? $mysqli->real_escape_string($input['hora_inicio']) : '';
    $hora_fin = isset($input['hora_fin']) ? $mysqli->real_escape_string($input['hora_fin']) : '';
    $usuario = isset($input['usuario']) ? $mysqli->real_escape_string($input['usuario']) : '';

    if (!$lab || !$fecha || !$hora_inicio || !$hora_fin || !$usuario) {
        echo json_encode(["success" => false, "message" => "Missing parameters"]);
        exit;
    }

    if (is_non_working_day($fecha, $holidays_2025)) {
        echo json_encode(["success" => false, "message" => "Cannot cancel on weekends or holidays"]);
        exit;
    }

    $deleteQuery = "DELETE FROM reservations WHERE laboratorio = '$lab' AND fecha = '$fecha' 
                    AND hora_inicio = '$hora_inicio' AND hora_fin = '$hora_fin' AND usuario = '$usuario'";
    if ($mysqli->query($deleteQuery) === TRUE) {
        if ($mysqli->affected_rows > 0) {
            echo json_encode(["success" => true, "message" => "Reservation canceled"]);
        } else {
            echo json_encode(["success" => false, "message" => "No matching reservation found"]);
        }
    } else {
        echo json_encode(["success" => false, "message" => "Error: " . $mysqli->error]);
    }
} else {
    echo json_encode(["error" => "Invalid action"]);
}

$mysqli->close();
?>