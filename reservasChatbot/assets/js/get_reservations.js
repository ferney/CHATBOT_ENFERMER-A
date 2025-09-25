document.addEventListener('DOMContentLoaded', function() {
    const tableHeader = document.getElementById('tableHeader');
    const tableBody = document.getElementById('tableBody');
    const loadingMessage = document.getElementById('loadingMessage');
    const errorMessage = document.getElementById('errorMessage');
    const refreshBtn = document.getElementById('refreshBtn');

    // Referencias del modal
    const modal = document.getElementById('reservationModal');
    const closeBtn = document.querySelector('.close');

    // Función para abrir modal con detalles
    function openReservationModal(reservationId) {
        fetch(`backend/get_reservations.php?id=${reservationId}`)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Error al obtener detalles');
                }
                return response.json();
            })
            .then(data => {
                // Llenar datos del modal
                document.getElementById('modalLaboratorio').textContent = data.laboratorio;
                document.getElementById('modalArea').textContent = data.practice_area;
                document.getElementById('modalTipo').textContent = data.practice_type;
                document.getElementById('modalFecha').textContent = data.fecha;
                document.getElementById('modalHoraInicio').textContent = data.hora_inicio;
                document.getElementById('modalHoraFin').textContent = data.hora_fin;
                document.getElementById('modalDocente').textContent = data.teacher_name;
                document.getElementById('modalMateriales').textContent = data.materials || 'No especificados';
                document.getElementById('modalNumEstudiantes').textContent = data.num_students;

                // Llenar lista de estudiantes
                const studentsContainer = document.getElementById('modalEstudiantes');
                studentsContainer.innerHTML = '';

                if (data.students && data.students.length > 0) {
                    data.students.forEach((student, index) => {
                        const studentDiv = document.createElement('div');
                        studentDiv.className = 'student-item';
                        studentDiv.innerHTML = `
                            <div class="student-number">${index + 1}.</div>
                            <div class="student-info">
                                <div class="student-name">${student.student_name}</div>
                                <div class="student-id">ID: ${student.student_id}</div>
                            </div>
                        `;
                        studentsContainer.appendChild(studentDiv);
                    });
                } else {
                    studentsContainer.innerHTML = '<p class="no-students">No hay estudiantes registrados</p>';
                }

                // Mostrar modal
                modal.style.display = 'block';
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Error al cargar los detalles de la reserva');
            });
    }

    // Función para cerrar modal
    function closeModal() {
        modal.style.display = 'none';
    }

    // Event listeners del modal
    closeBtn.addEventListener('click', closeModal);

    window.addEventListener('click', function(event) {
        if (event.target === modal) {
            closeModal();
        }
    });

    // Función para cargar datos
    function loadReservations() {
        // Mostrar carga y ocultar errores
        loadingMessage.style.display = 'block';
        errorMessage.style.display = 'none';
        tableHeader.innerHTML = '';
        tableBody.innerHTML = '';

        fetch('backend/get_reservations.php')
            .then(response => {
                if (!response.ok) {
                    throw new Error('Error en la respuesta del servidor');
                }
                return response.json();
            })
            .then(data => {
                // Ocultar mensaje de carga
                loadingMessage.style.display = 'none';

                // Crear encabezados de tabla
                data.columns.forEach(column => {
                    const th = document.createElement('th');
                    th.textContent = column;
                    tableHeader.appendChild(th);
                });

                // Crear filas de datos
                if (data.data.length === 0) {
                    const tr = document.createElement('tr');
                    const td = document.createElement('td');
                    td.colSpan = data.columns.length;
                    td.textContent = 'No hay reservas registradas';
                    td.style.textAlign = 'center';
                    td.style.padding = '20px';
                    td.style.color = '#7f8c8d';
                    tr.appendChild(td);
                    tableBody.appendChild(tr);
                } else {
                    data.data.forEach(reservation => {
                        const tr = document.createElement('tr');

                        // Orden específico: Área, Tipo, Fecha, Hora Inicio, Hora Fin, Docente
                        ['Área', 'Tipo', 'Fecha', 'Hora Inicio', 'Hora Fin', 'Docente'].forEach(key => {
                            const td = document.createElement('td');
                            td.textContent = reservation[key];
                            tr.appendChild(td);
                        });

                        // Agregar columna de acciones
                        const actionsTd = document.createElement('td');
                        actionsTd.innerHTML = `<button class="view-btn" onclick="openReservationModal(${reservation.id})">Ver</button>`;
                        tr.appendChild(actionsTd);

                        tableBody.appendChild(tr);
                    });
                }
            })
            .catch(error => {
                loadingMessage.style.display = 'none';
                errorMessage.style.display = 'block';
                errorMessage.textContent = 'Error al cargar los datos: ' + error.message;
                console.error('Error:', error);
            });
    }

    // Hacer la función global para el onclick
    window.openReservationModal = openReservationModal;

    // Cargar datos iniciales
    loadReservations();

    // Configurar botón de actualización
    refreshBtn.addEventListener('click', loadReservations);
});