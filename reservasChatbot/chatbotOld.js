// Current date for validation (May 15, 2025)
const CURRENT_DATE = new Date("2025-05-15");

// Base URL for backend requests
const BASE_URL = "http://localhost/reservasChatbot/";

// List of holidays in 2025 (format: YYYY-MM-DD)
const HOLIDAYS_2025 = [
  "2025-01-01", "2025-01-06", "2025-03-24", "2025-04-17", "2025-04-18",
  "2025-05-01", "2025-06-02", "2025-06-23", "2025-06-30", "2025-07-20",
  "2025-08-07", "2025-08-18", "2025-10-13", "2025-11-03", "2025-11-17",
  "2025-12-08", "2025-12-25"
];

// DOM elements
const chatWindow = document.getElementById("chatWindow");
const userInput = document.getElementById("userInput");
const sendButton = document.getElementById("sendButton");
const suggestionButtons = document.querySelectorAll(".suggestion-btn");
const labSelection = document.getElementById("labSelection");
const labDropdown = document.getElementById("labDropdown");
const checkAvailabilityButton = document.getElementById("checkAvailabilityButton");

// State management for multi-step reservation
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

// Initialize event listeners
function initChatbot() {
  sendButton.addEventListener("click", handleUserInput);
  userInput.addEventListener("keypress", (e) => {
    if (e.key === "Enter") handleUserInput();
  });
  suggestionButtons.forEach(button => {
    button.addEventListener("click", handleSuggestionClick);
  });
  checkAvailabilityButton.addEventListener("click", handleWeeklyAvailabilityQuery);
}

// Handle suggestion button click
function handleSuggestionClick(event) {
  const query = event.target.getAttribute("data-query");
  addMessage(query, "user-message");

  if (query === "Consultar disponibilidad") {
    labSelection.style.display = "block"; // Mostrar la lista desplegable
    addMessage("Por favor, selecciona un laboratorio y haz clic en 'Ver horarios disponibles'.", "bot-message");
  } else if (query === "Reservar laboratorio") {
    initiateReservation(query);
  } else if (query === "Cancelar reserva") {
    handleCancelQuery(query);
  }

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

// Process user message
function processUserMessage(message) {
  const normalizedMessage = message.toLowerCase();

  if (normalizedMessage.includes("disponible") || normalizedMessage.includes("está") || normalizedMessage.includes("consultar disponibilidad")) {
    labSelection.style.display = "block";
    addMessage("Por favor, selecciona un laboratorio y haz clic en 'Ver horarios disponibles'.", "bot-message");
  } else if (normalizedMessage.includes("reservar")) {
    initiateReservation(normalizedMessage);
  } else if (normalizedMessage.includes("cancelar reserva")) {
    handleCancelQuery(normalizedMessage);
  } else {
    const lines = [
      "Lo siento, no entendí tu solicitud. Por favor, intenta con algo como:",
      "– 'Consultar disponibilidad'",
      "– 'Reservar laboratorio de pediatría el 6 de junio de 2025 de 9 a 11'",
      "– 'Cancelar reserva'",
      "O usa las sugerencias abajo."
    ];
    addMessage(lines.join("<br>"), "bot-message");
  }
}

// Check if the date is a Saturday, Sunday, or holiday
function isNonWorkingDay(dateObj, dateStr) {
  const dayOfWeek = dateObj.getDay(); // 0 = Sunday, 6 = Saturday
  const isWeekend = dayOfWeek === 0 || dayOfWeek === 6;
  const isHoliday = HOLIDAYS_2025.includes(dateStr);
  return isWeekend || isHoliday;
}

// Get the dates for the next week (Monday to Friday)
function getNextWeekDates() {
  const dates = [];
  const today = new Date(CURRENT_DATE);
  const dayOfWeek = today.getDay(); // 0 = Sunday, 1 = Monday, ..., 4 = Thursday (May 15, 2025)

  // Find the next Monday (if today is Thursday, next Monday is in 4 days)
  const daysUntilMonday = (dayOfWeek <= 1) ? (1 - dayOfWeek) : (8 - dayOfWeek);
  const nextMonday = new Date(today);
  nextMonday.setDate(today.getDate() + daysUntilMonday);

  // Add Monday to Friday of the next week
  for (let i = 0; i < 5; i++) {
    const date = new Date(nextMonday);
    date.setDate(nextMonday.getDate() + i);
    const dateStr = date.toISOString().split("T")[0]; // Format: YYYY-MM-DD
    dates.push({ dateObj: date, dateStr });
  }

  return dates;
}

// Handle weekly availability query
async function handleWeeklyAvailabilityQuery() {
  const lab = labDropdown.value;
  if (!lab) {
    addMessage("Por favor, selecciona un laboratorio.", "bot-message");
    return;
  }

  const weekDates = getNextWeekDates();
  const startDate = weekDates[0].dateStr; // Monday
  const endDate = weekDates[4].dateStr; // Friday

  addMessage(`Consultando disponibilidad para el laboratorio de ${lab} desde el ${startDate} hasta el ${endDate}...`, "bot-message");

  try {
    const response = await fetch(`${BASE_URL}backend.php?action=get_weekly_availability&lab=${encodeURIComponent(lab)}&start_date=${startDate}&end_date=${endDate}`);
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }
    const data = await response.json();
    if (data.error) {
      addMessage(`Error: ${data.error}`, "bot-message");
    } else {
      let message = `Horarios disponibles para el laboratorio de ${lab} (semana del ${startDate} al ${endDate}):<br>`;
      let hasAvailability = false;

      for (const [date, slots] of Object.entries(data.availability)) {
        if (slots.length > 0) {
          hasAvailability = true;
          message += `<strong>${date}</strong>:<br>`;
          message += slots.join("<br>") + "<br>";
        }
      }

      if (!hasAvailability) {
        message += "No hay horarios disponibles esta semana.";
      }

      addMessage(message, "bot-message");
    }
  } catch (error) {
    addMessage(
      `Hubo un error al consultar la disponibilidad: ${error.message}. Verifica que el servidor esté funcionando.`,
      "bot-message"
    );
  }

  labSelection.style.display = "none"; // Ocultar la lista desplegable después de consultar
}

// Handle cancellation query
async function handleCancelQuery(message) {
  const { lab, date, startTime, endTime, dateObj } = extractDetails(message);
  const user = "usuario123";

  if (!lab || !date || !startTime || !endTime) {
    addMessage(
      "Por favor, especifica el laboratorio, fecha y horario de la reserva a cancelar. Ejemplo: 'Cancelar reserva del laboratorio de infectología el 5 de junio de 2025 de 8 a 10'.",
      "bot-message"
    );
    return;
  }

  if (dateObj && isDateInPast(dateObj)) {
    addMessage(
      `No puedes cancelar reservas de fechas pasadas. La fecha ${date} es anterior a hoy (15 de mayo de 2025).`,
      "bot-message"
    );
    return;
  }

  if (dateObj && isNonWorkingDay(dateObj, date)) {
    addMessage(
      `No puedes cancelar reservas en fines de semana o festivos. La fecha ${date} no es un día hábil.`,
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
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }
    const data = await response.json();
    if (data.success) {
      addMessage(
        `Reserva cancelada: el laboratorio de ${lab} el ${date} de ${startTime} a ${endTime}.`,
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
      `Hubo un error al cancelar la reserva: ${error.message}. Verifica que el servidor esté funcionando.`,
      "bot-message"
    );
  }
}

// Extract details from user message (lab, date, time range)
function extractDetails(message) {
  const labs = ["infectología", "pediatría", "cardiología", "cirugía", "emergencias", "obstetricia", "neonatología", "quirófano", "terapia intensiva", "general"];
  let lab = labs.find((l) => message.toLowerCase().includes(l)) || "general";

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

  let timeMatch = message.match(/de\s*(\d{1,2})(?::\d{2})?\s*a\s*(\d{1,2})(?::\d{2})?/);
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

// Initiate reservation process
function initiateReservation(message) {
  const { lab, date, startTime, endTime, dateObj } = extractDetails(message);

  if (!lab || !date || !startTime || !endTime || typeof lab !== "string" || typeof date !== "string" || typeof startTime !== "string" || typeof endTime !== "string") {
    addMessage(
      "Por favor, especifica correctamente el laboratorio, fecha y horario. Ejemplo: 'Reservar laboratorio de pediatría el 6 de junio de 2025 de 9 a 11'",
      "bot-message"
    );
    return;
  }

  if (dateObj && isDateInPast(dateObj)) {
    addMessage(
      `Lo siento, no puedes reservar para fechas pasadas. La fecha ${date} es anterior a hoy (15 de mayo de 2025).`,
      "bot-message"
    );
    return;
  }

  if (dateObj && isNonWorkingDay(dateObj, date)) {
    addMessage(
      `Lo siento, no se pueden hacer reservas en fines de semana o festivos. La fecha ${date} no es un día hábil.`,
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

  console.log("Reservation initiated:", reservationState);
  addMessage(
    "Para completar la reserva, necesito más información. ¿Cuál es el nombre del docente a cargo?",
    "bot-message"
  );
}

// Handle multi-step reservation responses
function handleReservationStep(message) {
  console.log("Current step:", reservationState.step, "User input:", message);

  if (reservationState.step === "teacher_name") {
    const teacher_name = message.trim();
    if (!teacher_name) {
      addMessage("Por favor, proporciona el nombre del docente.", "bot-message");
      return;
    }
    reservationState.teacher_name = teacher_name;
    reservationState.step = "practice_type";
    addMessage("¿Qué tipo de práctica se va a realizar?", "bot-message");
  } else if (reservationState.step === "practice_type") {
    const practice_type = message.trim();
    if (!practice_type) {
      addMessage("Por favor, especifica el tipo de práctica.", "bot-message");
      return;
    }
    reservationState.practice_type = practice_type;
    reservationState.step = "materials";
    addMessage("¿Qué materiales se van a usar? (Por ejemplo, 'microscopios, reactivos, guantes')", "bot-message");
  } else if (reservationState.step === "materials") {
    const materials = message.trim();
    if (!materials) {
      addMessage("Por favor, lista los materiales que se usarán.", "bot-message");
      return;
    }
    reservationState.materials = materials;
    reservationState.step = "num_students";
    addMessage("¿Cuántos estudiantes estarán en el laboratorio?", "bot-message");
  } else if (reservationState.step === "num_students") {
    const num_students = parseInt(message.trim(), 10);
    if (isNaN(num_students) || num_students <= 0) {
      addMessage("Por favor, proporciona un número válido de estudiantes (mayor que 0).", "bot-message");
      return;
    }
    reservationState.num_students = num_students;
    reservationState.step = "complete";

    console.log("All details collected:", reservationState);
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
      teacher_name: teacher_name,
      practice_type: practice_type,
      materials: materials,
      num_students: num_students
    };
    console.log("Sending payload to backend:", payload);

    const response = await fetch(`${BASE_URL}backend.php?action=reserve`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(payload)
    });

    console.log("Response status:", response.status);
    const responseText = await response.text();
    console.log("Raw response text:", responseText);

    const data = JSON.parse(responseText);
    console.log("Response data:", data);

    if (data.success) {
      addMessage(
        `¡Reserva confirmada! El laboratorio de ${lab} está reservado el ${date} de ${startTime} a ${endTime}.<br>` +
        `Docente: ${teacher_name}<br>` +
        `Práctica: ${practice_type}<br>` +
        `Materiales: ${materials}<br>` +
        `Número de estudiantes: ${num_students}`,
        "bot-message"
      );
    } else {
      addMessage(
        `Error al reservar: ${data.message || "No se pudo completar la reserva."}`,
        "bot-message"
      );
    }
  } catch (error) {
    console.error("Error during reservation:", error);
    addMessage(
      `Hubo un error al procesar la reserva: ${error.message}. Verifica que el servidor esté funcionando.`,
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
    console.log("Reservation state reset:", reservationState);
  }
}

// Initialize chatbot on page load
document.addEventListener("DOMContentLoaded", initChatbot);