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

-- Insertar datos de prueba
INSERT INTO reservations (
    laboratorio, fecha, hora_inicio, hora_fin,
    teacher_name, practice_type, materials, num_students, practice_area
) VALUES
-- Enero 2025
(
    'Laboratorio 1',
    '2025-01-15',
    '08:00:00',
    '10:00:00',
    'Dr. María González',
    'Fundamentos de Cuidados Básicos',
    'Maniquíes, estetoscopios, tensiómetros, termómetros',
    20,
    'cuidados básicos'
),
(
    'Laboratorio 2',
    '2025-01-16',
    '14:00:00',
    '16:00:00',
    'Enf. Carlos Pérez',
    'Simulación de Emergencias Cardiovasculares',
    'Desfibrilador, medicamentos de emergencia, monitor cardíaco',
    15,
    'reanimación'
),
(
    'Laboratorio 3',
    '2025-01-17',
    '10:00:00',
    '12:00:00',
    'Lic. Ana Rodríguez',
    'Técnicas de Valoración Neurológica',
    'Martillo de reflejos, linterna, escalas de valoración',
    18,
    'valoración'
),
(
    'Laboratorio 1',
    '2025-01-18',
    '16:00:00',
    '18:00:00',
    'Dr. Luis Martínez',
    'Curación de Heridas y Suturas',
    'Material estéril, hilos de sutura, anestésicos locales',
    12,
    'heridas y quirúrgica'
),
(
    'Laboratorio 4',
    '2025-01-20',
    '09:00:00',
    '11:00:00',
    'Enf. Patricia Silva',
    'Cuidados Pediátricos - Vacunación',
    'Jeringas pediátricas, vacunas simuladas, muñecos bebé',
    16,
    'pediatría'
),
(
    'Laboratorio 2',
    '2025-01-21',
    '13:00:00',
    '15:00:00',
    'Obst. Carmen López',
    'Atención del Parto Normal',
    'Simulador de parto, instrumental obstétrico',
    14,
    'ginecobstetricia'
),
(
    'Laboratorio 5',
    '2025-01-22',
    '15:00:00',
    '17:00:00',
    'Dr. Fernando Gómez',
    'Análisis de Casos Clínicos - Debriefing',
    'Videos de casos, material de análisis, proyector',
    25,
    'debriefing'
),

-- Febrero 2025
(
    'Laboratorio 1',
    '2025-02-03',
    '08:00:00',
    '10:00:00',
    'Enf. Mónica Herrera',
    'Administración de Medicamentos',
    'Jeringas, ampollas de práctica, calculadoras',
    22,
    'cuidados básicos'
),
(
    'Laboratorio 3',
    '2025-02-05',
    '14:00:00',
    '16:00:00',
    'Dr. Roberto Díaz',
    'Valoración Respiratoria Avanzada',
    'Espirómetros, oxímetros, gasometría simulada',
    16,
    'valoración'
),
(
    'Laboratorio 2',
    '2025-02-07',
    '10:00:00',
    '12:00:00',
    'Enf. Sandra Morales',
    'RCP Avanzado con Desfibrilador',
    'Maniquí de RCP, desfibrilador automático, medicamentos',
    18,
    'reanimación'
),

-- Marzo 2025
(
    'Laboratorio 4',
    '2025-03-10',
    '09:00:00',
    '11:00:00',
    'Lic. Andrea Vásquez',
    'Desarrollo Infantil y Estimulación',
    'Juguetes didácticos, escalas de desarrollo, material lúdico',
    20,
    'pediatría'
),
(
    'Laboratorio 1',
    '2025-03-12',
    '15:00:00',
    '17:00:00',
    'Dr. Miguel Torres',
    'Cirugía Menor - Técnicas Básicas',
    'Instrumental quirúrgico, material de sutura, campo estéril',
    10,
    'heridas y quirúrgica'
),
(
    'Laboratorio 2',
    '2025-03-14',
    '11:00:00',
    '13:00:00',
    'Obst. Elena Ramírez',
    'Control Prenatal y Ecografía Básica',
    'Simulador de embarazo, doppler fetal, cintas métricas',
    12,
    'ginecobstetricia'
);

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