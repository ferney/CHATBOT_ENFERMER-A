// Current date for validation (May 15, 2025)
const CURRENT_DATE = new Date();

// Base URL para el backend
const BASE_URL = "http://localhost/reservasChatbot/";

// listado de dias festivos
const HOLIDAYS_2025 = [
  "2025-01-01", "2025-01-06", "2025-03-24", "2025-04-17", "2025-04-18",
  "2025-05-01", "2025-06-02", "2025-06-23", "2025-06-30", "2025-07-20",
  "2025-08-07", "2025-08-18", "2025-10-13", "2025-11-03", "2025-11-17",
  "2025-12-08", "2025-12-25"
];

// elementos del DOM
const chatWindow = document.getElementById("chatWindow");
const userInput = document.getElementById("userInput");
const sendButton = document.getElementById("sendButton");
const suggestionButtons = document.querySelectorAll(".suggestion-btn");

// los pasos para reservar
let reservationState = {
  step: "none",
  lab: null,
  date: null,
  startTime: null,
  endTime: null,
  dateObj: null,
  teacher_name: null,
  practice_type: null,
  materials: null,
  num_students: null
};

// Elementos del DOM para el popup
const reservationPopup = document.getElementById("reservationPopup");
const reservationDate = document.getElementById("reservationDate");
const reservationTime = document.getElementById("reservationTime");
const reservationLab = document.getElementById("reservationLab");
const startReservationBtn = document.getElementById("startReservationBtn");
const cancelReservationBtn = document.getElementById("cancelReservationBtn");

// Elementos del DOM para el popup de disponibilidad
const availabilityPopup = document.getElementById("availabilityPopup");
const availabilityDate = document.getElementById("availabilityDate");
const availabilityTime = document.getElementById("availabilityTime");
const availabilityLab = document.getElementById("availabilityLab");
const checkAvailabilityBtn = document.getElementById("checkAvailabilityBtn");
const cancelAvailabilityBtn = document.getElementById("cancelAvailabilityBtn");

// Inicializar eventos del popup
function initPopupEvents() {
    startReservationBtn.addEventListener("click", handleStartReservation);
    cancelReservationBtn.addEventListener("click", closeReservationPopup);
}

// Inicializar eventos del popup de disponibilidad
function initAvailabilityPopupEvents() {
    checkAvailabilityBtn.addEventListener("click", handleCheckAvailability);
    cancelAvailabilityBtn.addEventListener("click", closeAvailabilityPopup);
}

// Mostrar el popup de reserva
function showReservationPopup() {
    // Establecer la fecha mínima como la fecha actual
    const today = new Date();
    const minDate = today.toISOString().split('T')[0];
    reservationDate.min = minDate;
    
    // Mostrar el popup
    reservationPopup.classList.add("active");
}

// Mostrar el popup de disponibilidad
function showAvailabilityPopup() {
    // Establecer la fecha mínima como la fecha actual
    const today = new Date();
    const minDate = today.toISOString().split('T')[0];
    availabilityDate.min = minDate;
    
    // Mostrar el popup
    availabilityPopup.classList.add("active");
}

// Cerrar el popup de reserva
function closeReservationPopup() {
    reservationPopup.classList.remove("active");
    // Limpiar los campos
    reservationDate.value = "";
    reservationTime.selectedIndex = 0;
    reservationLab.selectedIndex = 0;
}

// Cerrar el popup de disponibilidad
function closeAvailabilityPopup() {
    availabilityPopup.classList.remove("active");
    // Limpiar los campos
    availabilityDate.value = "";
    availabilityTime.selectedIndex = 0;
    availabilityLab.selectedIndex = 0;
}

// Función para bloquear/desbloquear el input
function toggleChatInput(disabled) {
    userInput.disabled = disabled;
    sendButton.disabled = disabled;
    if (disabled) {
        userInput.classList.add('input--disabled');
        sendButton.classList.add('button--disabled');
    } else {
        userInput.classList.remove('input--disabled');
        sendButton.classList.remove('button--disabled');
    }
}

// Modificar la función de inicialización
function initChatbot() {
    // Bloquear el input inicialmente
    toggleChatInput(true);
    
    sendButton.addEventListener("click", handleUserInput);
    userInput.addEventListener("keypress", (e) => {
        if (e.key === "Enter" && !userInput.disabled) handleUserInput();
    });
    suggestionButtons.forEach(button => {
        button.addEventListener("click", handleSuggestionClick);
    });
    initPopupEvents();
    initAvailabilityPopupEvents();
}

// Modificar la función de manejo de sugerencias
function handleSuggestionClick(event) {
    const query = event.target.getAttribute("data-query");
    if (query === "Reservar laboratorio") {
        showReservationPopup();
        toggleChatInput(false); // Desbloquear el input al iniciar el proceso
    } else if (query === "Consultar disponibilidad") {
        showAvailabilityPopup();
        toggleChatInput(false); // Desbloquear el input al iniciar el proceso
    } else {
        addMessage(query, "user-message");
        processUserMessage(query);
        scrollToBottom();
    }
}

// Modificar la función de manejo de reserva
function handleStartReservation() {
    const date = reservationDate.value;
    const time = reservationTime.value;
    const lab = reservationLab.value;

    if (!date || !time || !lab) {
        alert("Por favor, completa todos los campos.");
        return;
    }

    // Formatear la fecha para el mensaje
    const dateObj = new Date(date);
    const day = dateObj.getDate();
    const month = dateObj.toLocaleString('es-ES', { month: 'long' });
    const year = dateObj.getFullYear();
    const formattedDate = `${day} de ${month} de ${year}`;

    // Calcular la hora de fin (2 horas después de la hora de inicio)
    const startHour = parseInt(time.split(':')[0]);
    const endHour = startHour + 2;
    const formattedStartTime = `${startHour}:00`;
    const formattedEndTime = `${endHour}:00`;

    // Crear el mensaje de reserva
    const message = `Reservar ${lab}, ${formattedDate}, ${formattedStartTime} a ${formattedEndTime}`;
    
    // Cerrar el popup
    closeReservationPopup();
    
    // Simular el envío del mensaje
    addMessage(message, "user-message");
    processUserMessage(message);
    scrollToBottom();
}

// Modificar la función de manejo de disponibilidad
function handleCheckAvailability() {
    const date = availabilityDate.value;
    const time = availabilityTime.value;
    const lab = availabilityLab.value;

    if (!date || !time || !lab) {
        alert("Por favor, completa todos los campos.");
        return;
    }

    // Formatear la fecha para el mensaje
    const dateObj = new Date(date);
    const day = dateObj.getDate();
    const month = dateObj.toLocaleString('es-ES', { month: 'long' });
    const year = dateObj.getFullYear();
    const formattedDate = `${day} de ${month} de ${year}`;

    // Calcular la hora de fin (2 horas después de la hora de inicio)
    const startHour = parseInt(time.split(':')[0]);
    const endHour = startHour + 2;
    const formattedStartTime = `${startHour}:00`;
    const formattedEndTime = `${endHour}:00`;

    // Crear el mensaje de consulta
    const message = `Disponible ${lab}, ${formattedDate}, ${formattedStartTime} a ${formattedEndTime}`;
    
    // Cerrar el popup
    closeAvailabilityPopup();
    
    // Simular el envío del mensaje
    addMessage(message, "user-message");
    processUserMessage(message);
    scrollToBottom();
}

// Handle user input
function handleUserInput() {
  const message = userInput.value.trim();
  if (!message) return;

  addMessage(message, "user-message");

  if (reservationState.step !== "none") {
    handleReservationStep(message);
  } else {
    processUserMessage(message);
  }

  userInput.value = "";
  scrollToBottom();
}

// Add a message to the chat window
function addMessage(text, className) {
  const messageDiv = document.createElement("div");
  messageDiv.className = `message ${className}`;
  messageDiv.innerHTML = text;
  chatWindow.appendChild(messageDiv);
}

// Scroll chat window to the bottom
function scrollToBottom() {
  chatWindow.scrollTop = chatWindow.scrollHeight;
}

// Process user message and determine action
function processUserMessage(message) {
  const normalizedMessage = message.toLowerCase();

  if (normalizedMessage.includes("disponible") || normalizedMessage.includes("está") || normalizedMessage.includes("consultar disponibilidad")) {
    handleAvailabilityQuery(normalizedMessage);
  } else if (normalizedMessage.includes("reservar")) {
    initiateReservation(normalizedMessage);
  } else if (normalizedMessage.includes("cancelar reserva")) {
    handleCancelQuery(normalizedMessage);
  } else {
    const lines = [
      "No entendí tu solicitud. Por favor, intenta con:",
      "– 'Disponible infectología, 5 de junio de 2025, 8 a 10'",
      "– 'Reservar pediatría, 6 de junio de 2025, 9 a 11'",
      "O usa las sugerencias abajo."
    ];
    addMessage(lines.join("<br>"), "bot-message");
  }
}

// Check if the date is a Saturday, Sunday, or holiday
function isNonWorkingDay(dateObj, dateStr) {
  const dayOfWeek = dateObj.getDay();
  const isWeekend = dayOfWeek === 0 || dayOfWeek === 6;
  const isHoliday = HOLIDAYS_2025.includes(dateStr);
  return isWeekend || isHoliday;
}

// Handle cancellation query
async function handleCancelQuery(message) {
  const { lab, date, startTime, endTime, dateObj } = extractDetails(message);
  const user = "usuario123";

  if (!lab || !date || !startTime || !endTime) {
    addMessage(
      "Especifica el laboratorio, fecha y horario a cancelar. Ejemplo: 'Cancelar reserva infectología, 5 de junio de 2025, 8 a 10'.",
      "bot-message"
    );
    return;
  }

  if (dateObj && isDateInPast(dateObj)) {
    addMessage(
      `No puedes cancelar reservas pasadas. La fecha ${date} es anterior a hoy (15 de mayo de 2025).`,
      "bot-message"
    );
    return;
  }

  if (dateObj && isNonWorkingDay(dateObj, date)) {
    addMessage(
      `No puedes cancelar reservas en fines de semana o festivos. La fecha ${date} no es hábil.`,
      "bot-message"
    );
    return;
  }

  try {
    const response = await fetch(`${BASE_URL}backend.php?action=cancel`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        laboratorio: lab,
        fecha: date,
        hora_inicio: startTime,
        hora_fin: endTime,
        usuario: user
      })
    });
    if (!response.ok) throw new Error(`HTTP error! status: ${response.status}`);
    const data = await response.json();
    if (data.success) {
      addMessage(
        `Reserva cancelada: ${lab} el ${date} de ${startTime} a ${endTime}.`,
        "bot-message"
      );
    } else {
      addMessage(
        `Error al cancelar: ${data.message || "No se pudo cancelar la reserva."}`,
        "bot-message"
      );
    }
  } catch (error) {
    addMessage(
      `Error al cancelar: ${error.message}. Verifica que el servidor esté funcionando.`,
      "bot-message"
    );
  }
}

// Extract details from user message (lab, date, time range)
function extractDetails(message) {
  const labs = ["infectología", "pediatría", "cardiología", "cirugía", "emergencias", "obstetricia", "neonatología", "quirófano", "terapia intensiva", "general"];
  let lab = labs.find((l) => message.toLowerCase().includes(l)) || null;

  let dateMatch = message.match(/(\d{1,2})\s*de\s*(\w+)\s*de\s*(\d{4})/) || message.match(/(\d{4}-\d{2}-\d{2})/);
  let date = null;
  let dateObj = null;
  if (dateMatch) {
    if (dateMatch[0].includes("de")) {
      const day = dateMatch[1];
      const monthName = dateMatch[2].toLowerCase();
      const year = dateMatch[3];
      const months = {
        enero: "01", febrero: "02", marzo: "03", abril: "04", mayo: "05", junio: "06",
        julio: "07", agosto: "08", septiembre: "09", octubre: "10", noviembre: "11", diciembre: "12"
      };
      const month = months[monthName] || "01";
      date = `${year}-${month}-${day.padStart(2, "0")}`;
      dateObj = new Date(`${year}-${month}-${day}`);
    } else {
      date = dateMatch[1];
      dateObj = new Date(date);
    }
  }

  let timeMatch = message.match(/(\d{1,2})\s*(?:a|-)\s*(\d{1,2})/);
  let startTime = null, endTime = null;
  if (timeMatch) {
    startTime = `${timeMatch[1].padStart(2, "0")}:00`;
    endTime = `${timeMatch[2].padStart(2, "0")}:00`;
  }

  return { lab, date, startTime, endTime, dateObj };
}

// Validate if the date is in the past
function isDateInPast(dateObj) {
  return dateObj < CURRENT_DATE;
}

// Handle availability query
async function handleAvailabilityQuery(message) {
  const { lab, date, startTime, endTime, dateObj } = extractDetails(message);

  if (!lab || !date || !startTime || !endTime) {
    addMessage(
      "Especifica el laboratorio, fecha y horario. Ejemplo: 'Disponible infectología, 5 de junio de 2025, 8 a 10'.",
      "bot-message"
    );
    return;
  }

  if (dateObj && isDateInPast(dateObj)) {
    addMessage(
      `No puedes consultar fechas pasadas. La fecha ${date} es anterior a hoy (15 de mayo de 2025).`,
      "bot-message"
    );
    return;
  }

  if (dateObj && isNonWorkingDay(dateObj, date)) {
    addMessage(
      `No se puede consultar en fines de semana o festivos. La fecha ${date} no es hábil.`,
      "bot-message"
    );
    return;
  }

  try {
    const response = await fetch(`${BASE_URL}backend.php?action=check_availability&lab=${encodeURIComponent(lab)}&fecha=${date}&inicio=${startTime}&fin=${endTime}`);
    if (!response.ok) throw new Error(`HTTP error! status: ${response.status}`);
    const data = await response.json();
    if (data.error) {
      addMessage(`Error: ${data.error}`, "bot-message");
    } else if (data.available) {
      addMessage(
        `${lab} está disponible el ${date} de ${startTime} a ${endTime}. ¿Deseas reservarlo?`,
        "bot-message"
      );
    } else {
      addMessage(
        `${lab} no está disponible el ${date} de ${startTime} a ${endTime}. ` +
        `Alternativa: mismo día de ${data.suggestedStart || "14:00"} a ${data.suggestedEnd || "16:00"}. ¿Reservar?`,
        "bot-message"
      );
    }
  } catch (error) {
    addMessage(
      `Error al consultar disponibilidad: ${error.message}. Verifica el servidor.`,
      "bot-message"
    );
  }
}

// Initiate reservation process
function initiateReservation(message) {
  const { lab, date, startTime, endTime, dateObj } = extractDetails(message);

  if (!lab || !date || !startTime || !endTime) {
    addMessage(
      "Especifica correctamente el laboratorio, fecha y horario. Ejemplo: 'Reservar pediatría, 6 de junio de 2025, 9 a 11'.",
      "bot-message"
    );
    return;
  }

  if (dateObj && isDateInPast(dateObj)) {
    addMessage(
      `No puedes reservar fechas pasadas. La fecha ${date} es anterior a hoy (15 de mayo de 2025).`,
      "bot-message"
    );
    return;
  }

  if (dateObj && isNonWorkingDay(dateObj, date)) {
    addMessage(
      `No se pueden reservar fines de semana o festivos. La fecha ${date} no es hábil.`,
      "bot-message"
    );
    return;
  }

  reservationState = {
    step: "teacher_name",
    lab,
    date,
    startTime,
    endTime,
    dateObj,
    teacher_name: null,
    practice_type: null,
    materials: null,
    num_students: null
  };

  addMessage(
    "Para reservar, indica el nombre del docente a cargo.",
    "bot-message"
  );
}

// aqui es donde pide todos los datos y al final dice si esta reservado o no
function handleReservationStep(message) {
  if (reservationState.step === "teacher_name") {
    const teacher_name = message.trim();
    if (!teacher_name) {
      addMessage("Proporciona el nombre del docente.", "bot-message");
      return;
    }
    reservationState.teacher_name = teacher_name;
    reservationState.step = "practice_type";
    addMessage("¿Qué tipo de práctica se realizará?", "bot-message");
  } else if (reservationState.step === "practice_type") {
    const practice_type = message.trim();
    if (!practice_type) {
      addMessage("Especifica el tipo de práctica.", "bot-message");
      return;
    }
    reservationState.practice_type = practice_type;
    reservationState.step = "materials";
    addMessage("¿Qué materiales se usarán? (Ejemplo: 'microscopios, guantes')", "bot-message");
  } else if (reservationState.step === "materials") {
    const materials = message.trim();
    if (!materials) {
      addMessage("Lista los materiales a usar.", "bot-message");
      return;
    }
    reservationState.materials = materials;
    reservationState.step = "num_students";
    addMessage("¿Cuántos estudiantes participarán?", "bot-message");
  } else if (reservationState.step === "num_students") {
    const num_students = parseInt(message.trim(), 10);
    if (isNaN(num_students) || num_students <= 0) {
      addMessage("Proporciona un número válido de estudiantes (> 0).", "bot-message");
      return;
    }
    reservationState.num_students = num_students;
    reservationState.step = "complete";
    handleReservationQuery();
  }
}

// Handle reservation query after collecting all information
async function handleReservationQuery() {
  const { lab, date, startTime, endTime, teacher_name, practice_type, materials, num_students } = reservationState;
  const user = "usuario123";

  try {
    const payload = {
      laboratorio: lab,
      fecha: date,
      hora_inicio: startTime,
      hora_fin: endTime,
      usuario: user,
      teacher_name,
      practice_type,
      materials,
      num_students
    };

    const response = await fetch(`${BASE_URL}backend.php?action=reserve`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(payload)
    });

    if (!response.ok) throw new Error(`HTTP error! status: ${response.status}`);

    const data = await response.json();
    if (data.success) {
      addMessage(
        `¡Reserva confirmada! ${lab} el ${date} de ${startTime} a ${endTime}.<br>` +
        `Docente: ${teacher_name}<br>` +
        `Práctica: ${practice_type}<br>` +
        `Materiales: ${materials}<br>` +
        `Estudiantes: ${num_students}`,
        "bot-message"
      );
    } else {
      addMessage(
        ` ${data.message || "No se pudo completar la reserva."}`,
        "bot-message"
      );
    }
  } catch (error) {
    addMessage(
      `Error al procesar la reserva: ${error.message}. Verifica el servidor.`,
      "bot-message"
    );
  } finally {
    reservationState = {
      step: "none",
      lab: null,
      date: null,
      startTime: null,
      endTime: null,
      dateObj: null,
      teacher_name: null,
      practice_type: null,
      materials: null,
      num_students: null
    };
  }
}

// Initialize chatbot on page load
document.addEventListener("DOMContentLoaded", initChatbot);