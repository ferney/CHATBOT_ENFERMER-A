document.addEventListener('DOMContentLoaded', function() {
    const tableHeader = document.getElementById('tableHeader');
    const tableBody = document.getElementById('tableBody');
    const loadingMessage = document.getElementById('loadingMessage');
    const errorMessage = document.getElementById('errorMessage');
    const refreshBtn = document.getElementById('refreshBtn');
    
    // Función para cargar datos
    function loadReservations() {
        // Mostrar carga y ocultar errores
        loadingMessage.style.display = 'block';
        errorMessage.style.display = 'none';
        tableHeader.innerHTML = '';
        tableBody.innerHTML = '';
        
        fetch('http://localhost/reservasChatbot/get_reservations.php')
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
    
    // Cargar datos iniciales
    loadReservations();
    
    // Configurar botón de actualización
    refreshBtn.addEventListener('click', loadReservations);
});