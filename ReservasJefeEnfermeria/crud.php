<?php
// crud.php - Interfaz principal del CRUD
include 'database.php';

// Obtener todas las reservas
$sql = "SELECT * FROM reservations ORDER BY fecha DESC, hora_inicio DESC";
$result = $conn->query($sql);
$reservations = [];

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $reservations[] = $row;
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD - Reservas de Laboratorios</title>
    <link rel="stylesheet" href="style_crud.css">
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Gestión de Reservas de Laboratorios</h1>
            <p>Crear, ver, editar y eliminar reservas</p>
        </div>

        <!-- Tabla de reservas (PRIMERO) -->
        <div class="table-container">
            <h2>Reservas Existentes</h2>
            <?php if (empty($reservations)): ?>
                <p class="no-data">No hay reservas registradas</p>
            <?php else: ?>
                <table>
                    <thead>
                        <tr>
                            <th>Laboratorio</th>
                            <th>Fecha</th>
                            <th>Hora Inicio</th>
                            <th>Hora Fin</th>
                            <th>Docente</th>
                            <th>Área</th>
                            <th>Estudiantes</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($reservations as $reservation): ?>
                            <tr>
                                <td><?php echo htmlspecialchars($reservation['laboratorio']); ?></td>
                                <td><?php echo date('d/m/Y', strtotime($reservation['fecha'])); ?></td>
                                <td><?php echo date('H:i', strtotime($reservation['hora_inicio'])); ?></td>
                                <td><?php echo date('H:i', strtotime($reservation['hora_fin'])); ?></td>
                                <td><?php echo htmlspecialchars($reservation['teacher_name']); ?></td>
                                <td><?php echo htmlspecialchars($reservation['practice_area']); ?></td>
                                <td><?php echo $reservation['num_students']; ?></td>
                                <td class="actions">
                                    <button class="edit-btn" onclick="editReservation(<?php echo $reservation['id']; ?>)">Editar</button>
                                    <button class="delete-btn" onclick="deleteReservation(<?php echo $reservation['id']; ?>)">Eliminar</button>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            <?php endif; ?>
        </div>

        <!-- Formulario para agregar/editar reservas (DESPUÉS) -->
        <div class="form-container">
            <h2 id="form-title">Agregar Nueva Reserva</h2>
            <form id="reservation-form" action="process_crud.php" method="POST">
                <input type="hidden" id="reservation-id" name="id" value="">
                
                <div class="form-row">
                    <div class="form-group">
                        <label for="laboratorio">Laboratorio:</label>
                        <select id="laboratorio" name="laboratorio" required>
                            <option value="">Seleccione un laboratorio</option>
                            <option value="Valoración del estado de la salud">Valoración del estado de la salud</option>
                            <option value="Fisiopatología 1">Fisiopatología 1</option>
                            <option value="Cuidado básico de enfermería">Cuidado básico de enfermería</option>
                            <option value="Farmacología clínica">Farmacología clínica</option>
                            <option value="Cuidado básico en enfermería y de la persona con alteración mental">Cuidado básico en enfermería y de la persona con alteración mental</option>
                            <option value="Cuidado de la mujer, gestante y puérpera">Cuidado de la mujer, gestante y puérpera</option>
                            <option value="Fisiopatología 2">Fisiopatología 2</option>
                            <option value="Farmacología básica">Farmacología básica</option>
                            <option value="Cuidado de enfermería al niño y al adolescente">Cuidado de enfermería al niño y al adolescente</option>
                            <option value="Cuidado de enfermería al adulto y al adulto mayor">Cuidado de enfermería al adulto y al adulto mayor</option>
                            <option value="Cuidado de enfermería en urgencias y quirúrgicas">Cuidado de enfermería en urgencias y quirúrgicas</option>
                            <option value="Gestión del cuidado de enfermería 1">Gestión del cuidado de enfermería 1</option>
                            <option value="Cuidado de los servicios de salud 2">Cuidado de los servicios de salud 2</option>
                            <option value="Promoción de la salud sexual y reproductiva">Promoción de la salud sexual y reproductiva</option>
                            <option value="Promoción de la salud infantil y del adolescente">Promoción de la salud infantil y del adolescente</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="practice_area">Área de Práctica:</label>
                        <select id="practice_area" name="practice_area" required>
                            <option value="">Seleccione un área</option>
                            <option value="cuidados básicos">Cuidados Básicos</option>
                            <option value="valoración">Valoración</option>
                            <option value="heridas y quirúrgica">Heridas y Quirúrgica</option>
                            <option value="pediatría">Pediatría</option>
                            <option value="ginecobstetricia">Ginecobstetricia</option>
                            <option value="debriefing">Debriefing</option>
                            <option value="reanimación">Reanimación</option>
                        </select>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="fecha">Fecha:</label>
                        <input type="date" id="fecha" name="fecha" required>
                    </div>

                    <div class="form-group">
                        <label for="hora_inicio">Hora Inicio:</label>
                        <input type="time" id="hora_inicio" name="hora_inicio" required>
                    </div>

                    <div class="form-group">
                        <label for="hora_fin">Hora Fin:</label>
                        <input type="time" id="hora_fin" name="hora_fin" required>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="teacher_name">Nombre del Docente:</label>
                        <input type="text" id="teacher_name" name="teacher_name" required>
                    </div>

                    <div class="form-group">
                        <label for="practice_type">Tipo de Práctica:</label>
                        <input type="text" id="practice_type" name="practice_type" required>
                    </div>

                    <div class="form-group">
                        <label for="num_students">Número de Estudiantes:</label>
                        <input type="number" id="num_students" name="num_students" min="1" required>
                    </div>
                </div>

                <div class="form-group">
                    <label for="materials">Materiales Requeridos:</label>
                    <textarea id="materials" name="materials" rows="3" placeholder="Lista los materiales separados por comas"></textarea>
                </div>

                <div class="form-actions">
                    <button type="submit" id="submit-btn" name="action" value="create">Agregar Reserva</button>
                    <button type="button" id="cancel-btn" style="display:none;">Cancelar Edición</button>
                </div>
            </form>
        </div>
    </div>

    <script>
        // Función para editar reserva
        function editReservation(id) {
            fetch(`process_crud.php?action=get&id=${id}`)
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        const reservation = data.reservation;
                        
                        // Llenar el formulario con los datos
                        document.getElementById('reservation-id').value = reservation.id;
                        document.getElementById('laboratorio').value = reservation.laboratorio;
                        document.getElementById('fecha').value = reservation.fecha;
                        document.getElementById('hora_inicio').value = reservation.hora_inicio;
                        document.getElementById('hora_fin').value = reservation.hora_fin;
                        document.getElementById('teacher_name').value = reservation.teacher_name;
                        document.getElementById('practice_type').value = reservation.practice_type;
                        document.getElementById('practice_area').value = reservation.practice_area;
                        document.getElementById('materials').value = reservation.materials;
                        document.getElementById('num_students').value = reservation.num_students;
                        
                        // Cambiar el formulario a modo edición
                        document.getElementById('form-title').textContent = 'Editar Reserva';
                        document.getElementById('submit-btn').textContent = 'Actualizar Reserva';
                        document.getElementById('submit-btn').value = 'update';
                        document.getElementById('cancel-btn').style.display = 'inline-block';
                        
                        // Desplazarse al formulario
                        document.querySelector('.form-container').scrollIntoView({ behavior: 'smooth' });
                    } else {
                        alert('Error al cargar los datos de la reserva');
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('Error al cargar los datos de la reserva');
                });
        }
        
        // Función para eliminar reserva
        function deleteReservation(id) {
            if (confirm('¿Está seguro de que desea eliminar esta reserva?')) {
                fetch('process_crud.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: `action=delete&id=${id}`
                })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        alert('Reserva eliminada correctamente');
                        location.reload();
                    } else {
                        alert('Error al eliminar la reserva: ' + data.message);
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('Error al eliminar la reserva');
                });
            }
        }
        
        // Función para cancelar edición
        document.getElementById('cancel-btn').addEventListener('click', function() {
            resetForm();
        });
        
        // Función para resetear el formulario
        function resetForm() {
            document.getElementById('reservation-form').reset();
            document.getElementById('reservation-id').value = '';
            document.getElementById('form-title').textContent = 'Agregar Nueva Reserva';
            document.getElementById('submit-btn').textContent = 'Agregar Reserva';
            document.getElementById('submit-btn').value = 'create';
            document.getElementById('cancel-btn').style.display = 'none';
        }
        
        // Validación del formulario
        document.getElementById('reservation-form').addEventListener('submit', function(e) {
            const horaInicio = document.getElementById('hora_inicio').value;
            const horaFin = document.getElementById('hora_fin').value;
            
            if (horaInicio >= horaFin) {
                e.preventDefault();
                alert('La hora de inicio debe ser anterior a la hora de fin');
                return false;
            }
            
            const fecha = document.getElementById('fecha').value;
            const hoy = new Date().toISOString().split('T')[0];
            
            if (fecha < hoy) {
                e.preventDefault();
                alert('No se pueden hacer reservas en fechas pasadas');
                return false;
            }
        });

        // Establecer fecha mínima como hoy
        document.addEventListener('DOMContentLoaded', function() {
            const today = new Date().toISOString().split('T')[0];
            document.getElementById('fecha').min = today;
        });
    </script>
</body>
</html>