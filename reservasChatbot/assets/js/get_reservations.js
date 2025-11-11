document.addEventListener('DOMContentLoaded', function() {
    const tableHeader = document.getElementById('tableHeader');
    const tableBody = document.getElementById('tableBody');
    const loadingMessage = document.getElementById('loadingMessage');
    const errorMessage = document.getElementById('errorMessage');
    const refreshBtn = document.getElementById('refreshBtn');

    const modal = document.getElementById('reservationModal');
    const closeBtn = document.querySelector('.close');

    function openReservationModal(reservationId) {
        fetch(`backend/get_reservations.php?id=${reservationId}`)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Error al obtener detalles');
                }
                return response.json();
            })
            .then(data => {
                document.getElementById('modalLaboratorio').textContent = data.laboratorio;
                document.getElementById('modalArea').textContent = data.practice_area;
                document.getElementById('modalTipo').textContent = data.practice_type;
                document.getElementById('modalFecha').textContent = data.fecha;
                document.getElementById('modalHoraInicio').textContent = data.hora_inicio;
                document.getElementById('modalHoraFin').textContent = data.hora_fin;
                document.getElementById('modalDocente').textContent = data.teacher_name;
                document.getElementById('modalMateriales').textContent = data.materials || 'No especificados';
                document.getElementById('modalNumEstudiantes').textContent = data.num_students;

                const studentsContainer = document.getElementById('modalEstudiantes');
                studentsContainer.innerHTML = '';

                if (data.students && data.students.length > 0) {
                    data.students.forEach((student, index) => {
                        const studentDiv = document.createElement('div');
                        studentDiv.className = 'flex items-start p-3 bg-gray-50 rounded-lg border-l-4 border-blue-500';
                        studentDiv.innerHTML = `
                            <div class="font-bold text-blue-500 mr-3 min-w-[30px]">${index + 1}.</div>
                            <div class="flex-1">
                                <div class="font-semibold text-gray-800">${student.student_name}</div>
                                <div class="text-sm text-gray-500">ID: ${student.student_id}</div>
                            </div>
                        `;
                        studentsContainer.appendChild(studentDiv);
                    });
                } else {
                    studentsContainer.innerHTML = '<p class="text-center text-gray-500 italic py-4">No hay estudiantes registrados</p>';
                }

                modal.classList.add('show');
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Error al cargar los detalles de la reserva');
            });
    }

    function closeModal() {
        modal.classList.remove('show');
    }

    closeBtn.addEventListener('click', closeModal);

    window.addEventListener('click', function(event) {
        if (event.target === modal) {
            closeModal();
        }
    });

    function loadReservations() {
        loadingMessage.classList.remove('hidden');
        errorMessage.classList.add('hidden');
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
                loadingMessage.classList.add('hidden');

                data.columns.forEach(column => {
                    const th = document.createElement('th');
                    th.className = 'text-left px-4 py-3 font-semibold text-sm';
                    th.textContent = column;
                    tableHeader.appendChild(th);
                });

                if (data.data.length === 0) {
                    const tr = document.createElement('tr');
                    const td = document.createElement('td');
                    td.colSpan = data.columns.length;
                    td.className = 'text-center py-8 px-4 text-gray-500 text-base';
                    td.textContent = 'No hay reservas registradas';
                    tr.appendChild(td);
                    tableBody.appendChild(tr);
                } else {
                    data.data.forEach(reservation => {
                        const tr = document.createElement('tr');
                        tr.className = 'hover:bg-blue-50 transition-colors duration-150';

                        ['Área', 'Tipo', 'Fecha', 'Hora Inicio', 'Hora Fin', 'Docente'].forEach(key => {
                            const td = document.createElement('td');
                            td.className = 'px-4 py-3 text-gray-800 text-sm';
                            td.textContent = reservation[key];
                            tr.appendChild(td);
                        });

                        const actionsTd = document.createElement('td');
                        actionsTd.className = 'px-4 py-3 text-sm';
                        actionsTd.innerHTML = `<button class="bg-blue-500 hover:bg-blue-600 text-white font-medium px-4 py-2 rounded-lg transition-colors duration-150 text-sm" onclick="openReservationModal(${reservation.id})">Ver</button>`;
                        tr.appendChild(actionsTd);

                        tableBody.appendChild(tr);
                    });
                }
            })
            .catch(error => {
                loadingMessage.classList.add('hidden');
                errorMessage.classList.remove('hidden');
                errorMessage.textContent = 'Error al cargar los datos: ' + error.message;
                console.error('Error:', error);
            });
    }

    window.openReservationModal = openReservationModal;

    loadReservations();

    refreshBtn.addEventListener('click', loadReservations);
});