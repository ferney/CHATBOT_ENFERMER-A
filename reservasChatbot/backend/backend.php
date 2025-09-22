<?php
ini_set('display_errors', 0);
error_reporting(0);

header("Content-Type: application/json; charset=utf-8");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");
header("Access-Control-Allow-Credentials: true");

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

// Configuración DB
$servername = "mysql-db";
$username = "chatbot_user";
$password = "chatbot_pass_2024";
$dbname = "laboratory_reservations";

try {
    $mysqli = new mysqli($servername, $username, $password, $dbname);
    if ($mysqli->connect_error) {
        throw new Exception("Error de conexión a la base de datos");
    }

    // Configurar charset UTF-8
    $mysqli->set_charset("utf8");

    // Zona horaria Perú
    date_default_timezone_set('America/Bogota');

    // Función días no laborables
    function is_non_working_day($date) {
        $holidays = [
            "2025-01-01", "2025-01-06", "2025-03-24", "2025-04-17", "2025-04-18",
            "2025-05-01", "2025-06-02", "2025-06-23", "2025-06-30", "2025-07-20",
            "2025-08-07", "2025-08-18", "2025-10-13", "2025-11-03", "2025-11-17",
            "2025-12-08", "2025-12-25"
        ];
        
        $date_obj = new DateTime($date);
        $day_of_week = $date_obj->format('w');
        $is_weekend = ($day_of_week == 0 || $day_of_week == 6);
        $is_holiday = in_array($date, $holidays);
        
        return $is_weekend || $is_holiday;
    }

    // Función fecha/hora pasada
    function is_past_datetime($date, $time) {
        $datetime = new DateTime($date . ' ' . $time);
        $now = new DateTime();
        return $datetime < $now;
    }

    // Procesar entrada
    $input = json_decode(file_get_contents('php://input'), true);
    $action = $_GET['action'] ?? '';

    $valid_areas = ['cuidados básicos', 'valoración', 'heridas y quirúrgica', 'pediatría', 'ginecobstetricia', 'debriefing', 'reanimación'];

    switch ($action) {
        case 'check_availability':
            if (empty($input['laboratorio']) || empty($input['fecha']) || empty($input['hora_inicio']) || empty($input['hora_fin']) || empty($input['practice_area'])) {
                throw new Exception("Faltan parámetros requeridos");
            }
            
            $lab = $mysqli->real_escape_string($input['laboratorio']);
            $fecha = $mysqli->real_escape_string($input['fecha']);
            $hora_inicio = $mysqli->real_escape_string($input['hora_inicio']);
            $hora_fin = $mysqli->real_escape_string($input['hora_fin']);
            $practice_area = $mysqli->real_escape_string($input['practice_area']);
            
            if (!in_array($practice_area, $valid_areas)) {
                throw new Exception("Área de práctica no válida");
            }
            
            if (is_non_working_day($fecha)) {
                echo json_encode(["available" => false, "error" => "No se puede reservar en fines de semana o festivos"]);
                break;
            }
            
            if (is_past_datetime($fecha, $hora_inicio)) {
                echo json_encode(["available" => false, "error" => "No se puede reservar en fechas/horas pasadas"]);
                break;
            }
            
            // CONSULTA PREPARADA (Área)
            $stmt = $mysqli->prepare("SELECT teacher_name, laboratorio FROM reservations 
                                     WHERE practice_area = ? AND fecha = ?
                                     AND (hora_inicio < ? AND hora_fin > ?)");
            $stmt->bind_param("ssss", $practice_area, $fecha, $hora_fin, $hora_inicio);
            $stmt->execute();
            $result = $stmt->get_result();
            
            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                echo json_encode([
                    "available" => false,
                    "reserved_by" => $row['teacher_name'] ?? 'Usuario no disponible',
                    "reserved_lab" => $row['laboratorio'] ?? 'Laboratorio no disponible',
                    "reason" => "area"
                ]);
            } else {
                // CONSULTA PREPARADA (Laboratorio)
                $stmt_lab = $mysqli->prepare("SELECT teacher_name, practice_area FROM reservations 
                                             WHERE laboratorio = ? AND fecha = ?
                                             AND (hora_inicio < ? AND hora_fin > ?)");
                $stmt_lab->bind_param("ssss", $lab, $fecha, $hora_fin, $hora_inicio);
                $stmt_lab->execute();
                $lab_result = $stmt_lab->get_result();
                
                if ($lab_result->num_rows > 0) {
                    $row = $lab_result->fetch_assoc();
                    echo json_encode([
                        "available" => false,
                        "reserved_by" => $row['teacher_name'] ?? 'Usuario no disponible',
                        "reserved_area" => $row['practice_area'] ?? 'Área no disponible',
                        "reason" => "lab"
                    ]);
                } else {
                    echo json_encode(["available" => true]);
                }
            }
            break;
            
        case 'reserve':
            $required = ['laboratorio', 'fecha', 'hora_inicio', 'hora_fin', 'teacher_name', 'practice_type', 'materials', 'num_students', 'practice_area'];
            $missing = array_diff($required, array_keys($input));
            
            if (!empty($missing)) {
                throw new Exception("Faltan parámetros: " . implode(', ', $missing));
            }
            
            $lab = $mysqli->real_escape_string($input['laboratorio']);
            $fecha = $mysqli->real_escape_string($input['fecha']);
            $hora_inicio = $mysqli->real_escape_string($input['hora_inicio']);
            $hora_fin = $mysqli->real_escape_string($input['hora_fin']);
            $teacher_name = $mysqli->real_escape_string($input['teacher_name']);
            $practice_type = $mysqli->real_escape_string($input['practice_type']);
            $materials = $mysqli->real_escape_string($input['materials']);
            $num_students = (int)$input['num_students'];
            $practice_area = $mysqli->real_escape_string($input['practice_area']);
            
            if (!in_array($practice_area, $valid_areas)) {
                throw new Exception("Área de práctica no válida");
            }
            
            if (is_non_working_day($fecha)) {
                echo json_encode(["success" => false, "message" => "No se puede reservar en fines de semana o festivos"]);
                break;
            }
            
            if (is_past_datetime($fecha, $hora_inicio)) {
                echo json_encode(["success" => false, "message" => "No se puede reservar en fechas/horas pasadas"]);
                break;
            }
            
            // Verificar área (Preparada)
            $stmt_check = $mysqli->prepare("SELECT teacher_name, laboratorio FROM reservations 
                                           WHERE practice_area = ? AND fecha = ?
                                           AND (hora_inicio < ? AND hora_fin > ?)");
            $stmt_check->bind_param("ssss", $practice_area, $fecha, $hora_fin, $hora_inicio);
            $stmt_check->execute();
            $check_result = $stmt_check->get_result();
            
            if ($check_result->num_rows > 0) {
                $row = $check_result->fetch_assoc();
                echo json_encode([
                    "success" => false,
                    "message" => "El área '$practice_area' ya está reservada en el laboratorio '" . 
                                 ($row['laboratorio'] ?? 'desconocido') . "' por '" . 
                                 ($row['teacher_name'] ?? 'Usuario no disponible') . "'"
                ]);
                break;
            }
            
            // Verificar laboratorio (Preparada)
            $stmt_lab_check = $mysqli->prepare("SELECT practice_area FROM reservations 
                                               WHERE laboratorio = ? AND fecha = ?
                                               AND (hora_inicio < ? AND hora_fin > ?)");
            $stmt_lab_check->bind_param("ssss", $lab, $fecha, $hora_fin, $hora_inicio);
            $stmt_lab_check->execute();
            $lab_check_result = $stmt_lab_check->get_result();
            
            if ($lab_check_result->num_rows > 0) {
                $row = $lab_check_result->fetch_assoc();
                $reserved_area = $row['practice_area'] ?? 'desconocida';
                echo json_encode([
                    "success" => false,
                    "message" => "El laboratorio '$lab' ya está reservado para otra área: '$reserved_area'"
                ]);
                break;
            }
            
            // INSERTAR (Preparada)
            $stmt_insert = $mysqli->prepare("INSERT INTO reservations (
                laboratorio, fecha, hora_inicio, hora_fin, 
                teacher_name, practice_type, materials, num_students, practice_area
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
            
            $stmt_insert->bind_param(
                "sssssssis",
                $lab, $fecha, $hora_inicio, $hora_fin,
                $teacher_name, $practice_type, $materials, $num_students, $practice_area
            );
            
            if ($stmt_insert->execute()) {
                echo json_encode(["success" => true, "message" => "Reserva registrada exitosamente"]);
            } else {
                throw new Exception("Error al registrar la reserva");
            }
            break;
            
        default:
            throw new Exception("Acción no válida");
    }

} catch (Exception $e) {
    http_response_code(400);
    echo json_encode(["error" => $e->getMessage()]);
} finally {
    if (isset($mysqli)) $mysqli->close();
}
?>