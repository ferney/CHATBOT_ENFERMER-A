    // Funcionalidad de pestañas - VERSIÓN CORREGIDA
    document.addEventListener('DOMContentLoaded', function () {
        // Inicializar chatbot
        if (typeof initChatbot === 'function') {
          initChatbot();
        }
  
        // Configurar pestañas
        const tabButtons = document.querySelectorAll('.tab-button');
        const tabContents = document.querySelectorAll('.tab-content');
  
        tabButtons.forEach(button => {
          button.addEventListener('click', function () {
            // Remover clase activa
            tabButtons.forEach(btn => btn.classList.remove('active'));
            tabContents.forEach(content => content.classList.remove('active'));
  
            // Activar pestaña seleccionada
            this.classList.add('active');
            const tabId = this.getAttribute('data-tab');
            document.getElementById(`${tabId}-tab`).classList.add('active');
  
            // Redimensionar iframe al cambiar pestaña
            if (tabId === 'reservations') {
              setTimeout(() => {
                const frame = document.getElementById('reservationsFrame');
                if (frame) {
                  frame.style.height = '75vh';
                }
              }, 100);
            }
          });
        });
  
        // Asegurar que el chatbot esté visible inicialmente
        document.getElementById('chat-tab').classList.add('active');
      });