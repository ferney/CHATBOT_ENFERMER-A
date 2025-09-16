<?php
// Configurar parámetros de sesión
$cookieParams = session_get_cookie_params();
session_set_cookie_params([
    'lifetime' => 86400,
    'path' => '/',
    'domain' => $_SERVER['HTTP_HOST'],
    'secure' => isset($_SERVER['HTTPS']),
    'httponly' => true,
    'samesite' => 'Lax'
]);
session_name('SecureSession');
session_start();

// Regenerar ID de sesión periódicamente
if (!isset($_SESSION['last_regeneration']) || time() - $_SESSION['last_regeneration'] > 300) {
    session_regenerate_id(true);
    $_SESSION['last_regeneration'] = time();
}

// Verificar fingerprint de sesión
$current_fingerprint = hash('sha256', $_SERVER['HTTP_USER_AGENT'] . (isset($_SERVER['HTTP_X_FORWARDED_FOR']) ? $_SERVER['HTTP_X_FORWARDED_FOR'] : $_SERVER['REMOTE_ADDR']));
if (empty($_SESSION['fingerprint'])) {
    $_SESSION['fingerprint'] = $current_fingerprint;
} elseif ($_SESSION['fingerprint'] !== $current_fingerprint) {
    session_destroy();
    header('Location: index.php');
    exit;
}

// Función para verificar login
function is_logged_in() {
    return isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true;
}

// Función para conectar a la base de datos
function get_db_connection() {
    static $pdo;
    if (!$pdo) {
        $host = 'localhost';
        $db   = 'laboratory_reservations';
        $user = 'root';
        $pass = '';
        $charset = 'utf8mb4';
        
        $dsn = "mysql:host=$host;dbname=$db;charset=$charset";
        $options = [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_EMULATE_PREPARES => false,
        ];
        
        try {
            $pdo = new PDO($dsn, $user, $pass, $options);
        } catch (PDOException $e) {
            die("Error de conexión: " . $e->getMessage());
        }
    }
    return $pdo;
}

// Función para sanitizar entradas
function sanitize($input) {
    return htmlspecialchars(strip_tags(trim($input)), ENT_QUOTES, 'UTF-8');
}

// Procesar login si se envió formulario
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['login'])) {
    $username = sanitize($_POST['username']);
    $password = sanitize($_POST['password']);
    
    $pdo = get_db_connection();
    $stmt = $pdo->prepare("SELECT id, password_hash FROM usuarios WHERE username = ?");
    $stmt->execute([$username]);
    $user = $stmt->fetch();
    
    if ($user && password_verify($password, $user['password_hash'])) {
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['loggedin'] = true;
        $_SESSION['username'] = $username;
    } else {
        $login_error = "Credenciales incorrectas";
    }
}

// Procesar logout
if (isset($_GET['logout'])) {
    session_destroy();
    header('Location: index.php');
    exit;
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Reservas</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <script>
        const BASE_URL = window.location.origin + '<?= dirname($_SERVER['PHP_SELF']) ?>';
    </script>
</head>
<body>
    <div class="container">
        <?php if (!is_logged_in()): ?>
            <!-- FORMULARIO DE LOGIN -->
            <div class="login-container">
                <h1>Acceso Administrativo</h1>
                <?php if (isset($login_error)): ?>
                    <div class="error"><?= $login_error ?></div>
                <?php endif; ?>
                <form method="post">
                    <input type="hidden" name="login" value="1">
                    <div class="form-group">
                        <label>Usuario:</label>
                        <input type="text" name="username" required autocomplete="username">
                    </div>
                    <div class="form-group">
                        <label>Contraseña:</label>
                        <input type="password" name="password" required autocomplete="current-password">
                    </div>
                    <button type="submit" class="login-button">Ingresar</button>
                </form>
            </div>
        <?php else: ?>
            <!-- INTERFAZ DEL CRUD -->
            <div class="user-bar">
                <span>Bienvenido, <?= htmlspecialchars($_SESSION['username']) ?></span>
                <a href="?logout=1" class="logout-button">Cerrar Sesión</a>
            </div>
            
            <h1>Gestión de Reservas de Laboratorios</h1>
            <div id="messageArea" class="message-area"></div>
            
            <div class="reservation-list">
                <h2>Lista de Reservas</h2>
                <table id="reservationsTable">
                    <thead>
                        <tr>
                            <th>Materia</th>
                            <th>Fecha</th>
                            <th>Hora Inicio</th>
                            <th>Hora Fin</th>
                            <th>Docente</th>
                            <th>Práctica</th>
                            <th>Área</th>
                            <th>Materiales</th>
                            <th>Estudiantes</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody id="reservationsBody"></tbody>
                </table>
                <i class="fas fa-rotate" id="refreshButton" title="Actualizar"></i>
            </div>
            
            <!-- Formulario de actualización -->
<form id="updateForm" class="update-form" style="display: none;" onsubmit="return validarFormulario()">
    <h2>Actualizar Reserva</h2>
    <input type="hidden" id="updateId" name="updateId" value="">

    <label for="updateLab">Materia:</label>
    <select id="updateLab" name="updateLab" required>
        <option value="">-- Seleccione una asignatura --</option>
        <option value="valoracion-del-estado-de-la-salud">Valoración del estado de la salud</option>
        <option value="fisiopatologia-1">Fisiopatología 1</option>
        <option value="cuidado-basico-enfermeria">Cuidado básico de enfermería</option>
        <option value="farmacologia-clinica">Farmacología clínica</option>
        <option value="cuidado-enfermeria-alteracion-mental">Cuidado básico en enfermería y de la persona con alteración mental</option>
        <option value="cuidado-mujer-gestante-puerpera">Cuidado de la mujer, gestante y puérpera</option>
        <option value="fisiopatologia-2">Fisiopatología 2</option>
        <option value="farmacologia-basica">Farmacología básica</option>
        <option value="cuidado-nino-adolescente">Cuidado de enfermería al niño y al adolescente</option>
        <option value="cuidado-adulto-mayor">Cuidado de enfermería al adulto y al adulto mayor</option>
        <option value="cuidado-urgencias-quirurgicas">Cuidado de enfermería en urgencias y quirúrgicas</option>
        <option value="gestion-cuidado-enfermeria-1">Gestión del cuidado de enfermería 1</option>
        <option value="cuidado-servicios-salud-2">Cuidado de los servicios de salud 2</option>
        <option value="promocion-salud-sexual-reproductiva">Promoción de la salud sexual y reproductiva</option>
        <option value="promocion-salud-infantil-adolescente">Promoción de la salud infantil y del adolescente</option>
    </select><br><br>

    <label for="updateDate">Fecha (YYYY-MM-DD):</label>
    <input type="date" id="updateDate" name="updateDate" required><br><br>

    <label for="updateStart">Hora Inicio (HH:MM):</label>
    <input type="time" id="updateStart" name="updateStart" required><br><br>

    <label for="updateEnd">Hora Fin (HH:MM):</label>
    <input type="time" id="updateEnd" name="updateEnd" required><br><br>

    <label for="updateTeacher">Docente:</label>
    <input type="text" id="updateTeacher" name="updateTeacher" required><br><br>

    <label for="updatePractice">Práctica:</label>
    <input type="text" id="updatePractice" name="updatePractice" required><br><br>

    <label for="updatePracticeArea">Área:</label>
    <select id="updatePracticeArea" name="updatePracticeArea" required>
        <option value="">-- Seleccione un área --</option>
        <option value="Cuidados básicos">Cuidados básicos</option>
        <option value="Valoración">Valoración</option>
        <option value="Heridas y quirúrgica">Heridas y quirúrgica</option>
        <option value="Pediatría">Pediatría</option>
        <option value="Ginecobstetricia">Ginecobstetricia</option>
        <option value="Debriefing">Debriefing</option>
        <option value="Reanimación">Reanimación</option>
    </select><br><br>

    <label for="updateMaterials">Materiales:</label>
    <textarea id="updateMaterials" name="updateMaterials" required></textarea><br><br>

    <label for="updateStudents">Estudiantes:</label>
    <input type="number" id="updateStudents" name="updateStudents" min="1" required><br><br>

    <button type="submit" id="updateButton"><i class="fas fa-floppy-disk" title="Guardar"></i></button>
    <button type="button" id="cancelUpdate"><i class="fas fa-xmark" title="Cancelar"></i></button>
</form>

<script>
function validarFormulario() {
    const campos = [
        'updateLab', 'updateDate', 'updateStart', 'updateEnd',
        'updateTeacher', 'updatePractice', 'updatePracticeArea',
        'updateMaterials', 'updateStudents'
    ];

    for (let id of campos) {
        const campo = document.getElementById(id);
        if (!campo.value || campo.value.trim() === "") {
            alert("Por favor complete todos los campos obligatorios.");
            campo.focus();
            return false;
        }
    }

    return true;
}
</script>

            
            <script>
                // ==================== CONSTANTES Y ELEMENTOS ====================
                const messageArea = document.getElementById("messageArea");
                const reservationsTable = document.getElementById("reservationsBody");
                const refreshButton = document.getElementById("refreshButton");
                const updateForm = document.getElementById("updateForm");
                const updateId = document.getElementById("updateId");
                const updateLab = document.getElementById("updateLab");
                const updateDate = document.getElementById("updateDate");
                const updateStart = document.getElementById("updateStart");
                const updateEnd = document.getElementById("updateEnd");
                const updateTeacher = document.getElementById("updateTeacher");
                const updatePractice = document.getElementById("updatePractice");
                const updatePracticeArea = document.getElementById("updatePracticeArea");
                const updateMaterials = document.getElementById("updateMaterials");
                const updateStudents = document.getElementById("updateStudents");
                const updateButton = document.getElementById("updateButton");
                const cancelUpdate = document.getElementById("cancelUpdate");

                // ==================== INICIALIZACIÓN ====================
                document.addEventListener("DOMContentLoaded", initManagement);

                function initManagement() {
                    refreshButton.addEventListener("click", loadReservations);
                    updateButton.addEventListener("click", handleUpdate);
                    cancelUpdate.addEventListener("click", () => {
                        updateForm.style.display = "none";
                    });
                    
                    // Cargar reservas al iniciar
                    loadReservations();
                }

                // ==================== FUNCIONES PRINCIPALES ====================
                // Cargar todas las reservas
                async function loadReservations() {
                    try {
                        const response = await fetch(`${BASE_URL}/backend.php?action=get_reservations`, {
                            credentials: 'include' // Enviar cookies
                        });
                        
                        // Manejar error de autenticación
                        if (response.status === 401) {
                            window.location.href = 'index.php?logout=1';
                            return;
                        }
                        
                        if (!response.ok) throw new Error(`Error HTTP! estado: ${response.status}`);
                        
                        const data = await response.json();
                        if (data.error) throw new Error(data.error);
                        displayReservations(data.reservations);
                    } catch (error) {
                        showMessage(`Error al cargar reservas: ${error.message}`, "error");
                    }
                }

                // Mostrar reservas en la tabla
                function displayReservations(reservations) {
                    reservationsTable.innerHTML = "";
                    if (!reservations || reservations.length === 0) {
                        reservationsTable.innerHTML = "<tr><td colspan='10'>No hay reservas registradas.</td></tr>";
                        return;
                    }
                    
                    reservations.forEach(res => {
                        const row = document.createElement("tr");
                        row.innerHTML = `
                            <td>${res.laboratorio}</td>
                            <td>${res.fecha}</td>
                            <td>${res.hora_inicio}</td>
                            <td>${res.hora_fin}</td>
                            <td>${res.teacher_name}</td>
                            <td>${res.practice_type}</td>
                            <td>${res.practice_area}</td>
                            <td>${res.materials}</td>
                            <td>${res.num_students}</td>
                            <td>
                               <i class="fas fa-pen edit-btn" data-id="${res.id}" title="Editar"></i>
                                <i class="fas fa-trash delete-btn" data-id="${res.id}" title="Eliminar"></i>
                            </td>
                        `;
                        reservationsTable.appendChild(row);
                    });
                    
                    // Agregar eventos a los botones
                    document.querySelectorAll(".edit-btn").forEach(btn => {
                        btn.addEventListener("click", handleEdit);
                    });
                    
                    document.querySelectorAll(".delete-btn").forEach(btn => {
                        btn.addEventListener("click", handleDelete);
                    });
                }

                // Manejar edición de reserva
                function handleEdit(event) {
                    const id = event.target.getAttribute("data-id");
                    fetch(`${BASE_URL}/backend.php?action=get_reservations&id=${id}`, {
                        credentials: 'include' // Enviar cookies
                    })
                        .then(response => {
                            // Manejar error de autenticación
                            if (response.status === 401) {
                                window.location.href = 'index.php?logout=1';
                                return;
                            }
                            return response.json();
                        })
                        .then(data => {
                            if (data.error) throw new Error(data.error);
                            if (data.reservations.length === 0) throw new Error("Reserva no encontrada");
                            
                            const res = data.reservations[0];
                            updateId.value = id;
                            updateLab.value = res.laboratorio;
                            updateDate.value = res.fecha;
                            updateStart.value = res.hora_inicio;
                            updateEnd.value = res.hora_fin;
                            updateTeacher.value = res.teacher_name;
                            updatePractice.value = res.practice_type;
                            updatePracticeArea.value = res.practice_area;
                            updateMaterials.value = res.materials;
                            updateStudents.value = res.num_students;
                            updateForm.style.display = "block";
                        })
                        .catch(error => {
                            showMessage(`Error al cargar reserva: ${error.message}`, "error");
                        });
                }

                // Actualizar reserva
                async function handleUpdate() {
                    const payload = {
                        id: updateId.value,
                        laboratorio: updateLab.value,
                        fecha: updateDate.value,
                        hora_inicio: updateStart.value,
                        hora_fin: updateEnd.value,
                        teacher_name: updateTeacher.value,
                        practice_type: updatePractice.value,
                        practice_area: updatePracticeArea.value,
                        materials: updateMaterials.value,
                        num_students: updateStudents.value
                    };

                    try {
                        const response = await fetch(`${BASE_URL}/backend.php?action=update`, {
                            method: "POST",
                            headers: { "Content-Type": "application/json" },
                            body: JSON.stringify(payload),
                            credentials: 'include' // Enviar cookies
                        });
                        
                        // Manejar error de autenticación
                        if (response.status === 401) {
                            window.location.href = 'index.php?logout=1';
                            return;
                        }
                        
                        if (!response.ok) throw new Error(`Error HTTP! estado: ${response.status}`);
                        const data = await response.json();
                        
                        if (data.success) {
                            showMessage("Reserva actualizada con éxito", "success");
                            updateForm.style.display = "none";
                            loadReservations();
                        } else {
                            throw new Error(data.message || "Error al actualizar");
                        }
                    } catch (error) {
                        showMessage(`Error al actualizar: ${error.message}`, "error");
                    }
                }

                // Eliminar reserva
                async function handleDelete(event) {
                    const id = event.target.getAttribute("data-id");
                    if (confirm("¿Estás seguro de eliminar esta reserva?")) {
                        try {
                            const response = await fetch(`${BASE_URL}/backend.php?action=cancel`, {
                                method: "POST",
                                headers: { "Content-Type": "application/json" },
                                body: JSON.stringify({ id: id }),
                                credentials: 'include' // Enviar cookies
                            });
                            
                            // Manejar error de autenticación
                            if (response.status === 401) {
                                window.location.href = 'index.php?logout=1';
                                return;
                            }
                            
                            if (!response.ok) throw new Error(`Error HTTP! estado: ${response.status}`);
                            const data = await response.json();
                            
                            if (data.success) {
                                showMessage("Reserva eliminada con éxito", "success");
                                loadReservations();
                            } else {
                                throw new Error(data.message || "Error al eliminar");
                            }
                        } catch (error) {
                            showMessage(`Error al eliminar: ${error.message}`, "error");
                        }
                    }
                }

                // Mostrar mensajes
                function showMessage(text, type) {
                    messageArea.textContent = text;
                    messageArea.className = `message-area ${type}`;
                    messageArea.style.display = "block";
                    
                    // Ocultar después de 5 segundos
                    setTimeout(() => {
                        messageArea.style.display = "none";
                    }, 5000);
                }
            </script>
        <?php endif; ?>
    </div>
</body>
</html>