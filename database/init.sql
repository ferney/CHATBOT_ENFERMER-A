-- Script de inicialización para el Chatbot de Reservas de Laboratorios de Enfermería
-- Base de datos: laboratory_reservations

-- Crear base de datos si no existe con codificación UTF-8
CREATE DATABASE IF NOT EXISTS laboratory_reservations
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

-- Crear usuario y otorgar permisos
CREATE USER IF NOT EXISTS 'chatbot_user'@'%' IDENTIFIED BY 'chatbot_pass_2024';
GRANT ALL PRIVILEGES ON laboratory_reservations.* TO 'chatbot_user'@'%';
FLUSH PRIVILEGES;

USE laboratory_reservations;

-- Configurar charset y zona horaria
SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;
SET time_zone = '-05:00';

-- Crear tabla de reservas
DROP TABLE IF EXISTS reservations;
CREATE TABLE reservations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    laboratorio VARCHAR(100) NOT NULL COMMENT 'Nombre del laboratorio',
    fecha DATE NOT NULL COMMENT 'Fecha de la reserva',
    hora_inicio TIME NOT NULL COMMENT 'Hora de inicio de la reserva',
    hora_fin TIME NOT NULL COMMENT 'Hora de fin de la reserva',
    teacher_name VARCHAR(255) NOT NULL COMMENT 'Nombre del docente que hace la reserva',
    practice_type VARCHAR(255) NOT NULL COMMENT 'Tipo de práctica a realizar',
    materials TEXT COMMENT 'Materiales necesarios para la práctica',
    num_students INT NOT NULL COMMENT 'Número de estudiantes',
    practice_area VARCHAR(100) NOT NULL COMMENT 'Área de práctica específica',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de creación del registro',
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Fecha de última actualización',

    -- Índices para optimizar consultas
    INDEX idx_fecha_hora (fecha, hora_inicio, hora_fin),
    INDEX idx_laboratorio (laboratorio),
    INDEX idx_practice_area (practice_area),
    INDEX idx_teacher (teacher_name),
    INDEX idx_fecha (fecha)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabla de reservas de laboratorios de enfermería';

-- Crear tabla de estudiantes por reserva
DROP TABLE IF EXISTS reservation_students;
CREATE TABLE reservation_students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    reservation_id INT NOT NULL COMMENT 'ID de la reserva',
    student_name VARCHAR(255) NOT NULL COMMENT 'Nombre completo del estudiante',
    student_id VARCHAR(50) NOT NULL COMMENT 'Número de identificación del estudiante',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de creación del registro',

    -- Clave foránea
    FOREIGN KEY (reservation_id) REFERENCES reservations(id) ON DELETE CASCADE,

    -- Índices
    INDEX idx_reservation_id (reservation_id),
    INDEX idx_student_id (student_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabla de estudiantes asociados a cada reserva';

-- Crear vista para consultas frecuentes
CREATE OR REPLACE VIEW reservas_activas AS
SELECT
    id,
    laboratorio,
    DATE_FORMAT(fecha, '%d/%m/%Y') as fecha_formato,
    TIME_FORMAT(hora_inicio, '%H:%i') as hora_inicio_formato,
    TIME_FORMAT(hora_fin, '%H:%i') as hora_fin_formato,
    teacher_name,
    practice_type,
    practice_area,
    num_students,
    materials
FROM reservations
WHERE fecha >= CURDATE()
ORDER BY fecha ASC, hora_inicio ASC;

-- Mostrar estadísticas de la base de datos
SELECT 'Registros insertados' as Estadistica, COUNT(*) as Valor FROM reservations
UNION ALL
SELECT 'Áreas de práctica distintas', COUNT(DISTINCT practice_area) FROM reservations
UNION ALL
SELECT 'Laboratorios distintos', COUNT(DISTINCT laboratorio) FROM reservations
UNION ALL
SELECT 'Docentes distintos', COUNT(DISTINCT teacher_name) FROM reservations;

-- Mostrar las áreas de práctica válidas según el código
SELECT DISTINCT practice_area as 'Áreas de Práctica Configuradas'
FROM reservations
ORDER BY practice_area;

COMMIT;