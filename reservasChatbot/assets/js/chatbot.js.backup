// chatbot.js
// Configuración inicial
const BASE_URL = "backend/";
const CURRENT_DATE = new Date();

// Lista de laboratorios disponibles
const LABORATORIOS = [
  "Valoración del estado de salud",
  "Fisiopatología 1",
  "Cuidado básico de enfermería",
  "Farmacología clínica",
  "Cuidado básico en enfermería y de la persona con alteración mental",
  "Cuidado de la mujer, gestante y puérpera",
  "Fisiopatología 2",
  "Farmacología básica",
  "Cuidado de enfermería al niño y al adolescente",
  "Cuidado de enfermería al adulto y al adulto mayor",
  "Cuidado de enfermería en urgencias y quirúrgicas",
  "Gestión del cuidado de enfermería 1",
  "Cuidado de los servicios de salud 2",
  "Promoción de la salud sexual y reproductiva",
  "Promoción de la salud infantil y del adolescente"
];

// Lista de áreas de práctica
const PRACTICE_AREAS = [
  "cuidados básicos", "valoración", "heridas y quirúrgica", "pediatría",
  "ginecobstetricia", "debriefing", "reanimación"
];

// Elementos del DOM
const chatWindow = document.getElementById("chatWindow");
const userInput = document.getElementById("userInput");
const sendButton = document.getElementById("sendButton");

// Estado de la reserva
let reservationState = {
  step: "none",
  lab: null,
  date: null,
  startTime: null,
  endTime: null,
  dateObj: null,
  teacher_name: null,
  practice_type: null,
  practice_area: null,
  materials: null,
  num_students: null,
  students: [],
  currentStudentIndex: 0,
  displayDate: null,
  displayTime: null
};

// Inicializar el chatbot
function initChatbot() {
  // Verificar que los elementos existen
  if (!chatWindow || !userInput || !sendButton) {
    console.error("Error: Elementos del DOM no encontrados");
    return;
  }

  sendButton.addEventListener("click", handleUserInput);
  userInput.addEventListener("keypress", (e) => {
    if (e.key === "Enter") handleUserInput();
  });
  
  // SOLO UNA VEZ AL INICIO
  showWelcomeMessage();
}

function showWelcomeMessage() {
  const welcomeMessage = `
    ¡Hola! Bienvenido(a)<br><br>
    🔹 Para consultar disponibilidad:<br>
    Ejemplo: <strong>DISPONIBLE, ASIGNATURA, FECHA, HORA, AMBIENTE</strong><br>
    <strong>DISPONIBLE, VALORACIÓN DEL ESTADO DE SALUD, 5 DE JUNIO, 8 A 10, VALORACIÓN</strong><br><br>
    🔹 Para hacer una reserva:<br>
    Ejemplo:<br> 
    <strong>RESERVAR, CUIDADO DE ENFERMERÍA AL NIÑO Y AL ADOLESCENTE, 6 DE JUNIO, 9 A 11, PEDIATRÍA</strong>`;
  
  addMessage(welcomeMessage, "bot-message");
}

// NUEVA FUNCIÓN DE AYUDA
function showHelpMessage() {
  const helpMessage = `
    Por favor ingresa un comando válido:<br><br>
    🔹 <strong>DISPONIBLE, [Asignatura], [Fecha], [Hora Inicio a Hora Fin], [Área]</strong><br>
    🔹 <strong>RESERVAR, [Asignatura], [Fecha], [Hora Inicio a Hora Fin], [Área]</strong><br><br>
    Ejemplos:<br>
    <strong>DISPONIBLE, Valoración del estado de salud, 5 de junio, 8 a 10, valoración</strong><br>
    <strong>RESERVAR, Cuidado de enfermería al niño, 6 de junio, 9 a 11, pediatría</strong>`;
  
  addMessage(helpMessage, "bot-message");
}

// Manejar entrada del usuario
function handleUserInput() {
  const message = userInput.value.trim();
  if (!message) return;

  addMessage(message, "user-message");
  userInput.value = "";
  
  if (reservationState.step !== "none") {
    handleReservationStep(message);
  } else {
    processUserMessage(message);
  }
  
  scrollToBottom();
}

// Procesar mensaje del usuario
function processUserMessage(message) {
  // Convertir a mayúsculas solo para comandos
  const upperMessage = message.toUpperCase();
  
  if (upperMessage.startsWith("DISPONIBLE,")) {
    handleAvailabilityQuery(message);
  } else if (upperMessage.startsWith("RESERVAR,")) {
    initiateReservation(message);
  } else {
    // USAR AYUDA EN VEZ DE BIENVENIDA
    showHelpMessage();
  }
}
// Extraer detalles del mensaje
function extractDetails(message) {
  const parts = message.split(',').map(part => part.trim());
  
  if (parts.length < 5) return { valid: false };
  
  const action = parts[0].toLowerCase();
  
  // Buscar laboratorio sin distinguir mayúsculas/minúsculas
  const lab = LABORATORIOS.find(l => 
    message.toLowerCase().includes(l.toLowerCase())
  );
  
  if (!lab) return { valid: false };
  
  // Buscar área de práctica
  const areaPart = parts[4].toLowerCase();
  const practice_area = PRACTICE_AREAS.find(a => 
    areaPart.includes(a)
  );
  
  if (!practice_area) return { valid: false };
  
  // Parsear fecha (formato flexible)
  const datePart = parts[2].toLowerCase();
  const dateMatch = datePart.match(/(\d{1,2})\s*de\s*([a-zñ]+)(?:\s*de\s*(\d{4}))?/);
  
  if (!dateMatch) return { valid: false };
  
  const day = dateMatch[1].padStart(2, '0');
  const monthName = dateMatch[2];
  const year = dateMatch[3] || CURRENT_DATE.getFullYear();
  
  const months = {
    'enero': '01', 'febrero': '02', 'marzo': '03', 'abril': '04', 
    'mayo': '05', 'junio': '06', 'julio': '07', 'agosto': '08',
    'septiembre': '09', 'octubre': '10', 'noviembre': '11', 'diciembre': '12'
  };
  
  const month = months[monthName];
  if (!month) return { valid: false };
  
  const date = `${year}-${month}-${day}`;
  const dateObj = new Date(`${year}-${month}-${day}`);
  
  // Parsear horario (formato flexible)
  const timePart = parts[3].toLowerCase();
  const timeMatch = timePart.match(/(\d{1,2})\s*(?:a|hasta|-)\s*(\d{1,2})/);
  
  if (!timeMatch) return { valid: false };
  
  const startHour = timeMatch[1].padStart(2, '0');
  const endHour = timeMatch[2].padStart(2, '0');
  const startTime = `${startHour}:00`;
  const endTime = `${endHour}:00`;
  
  // Verificar si la fecha/hora es pasada
  const now = new Date();
  const reservationDate = new Date(
    parseInt(year), 
    parseInt(month) - 1, 
    parseInt(day),
    parseInt(startHour)
  );
  
  const isPast = reservationDate < now;
  
  return {
    valid: true,
    action,
    lab,
    date,
    dateObj,
    startTime,
    endTime,
    practice_area,
    displayDate: `${day} DE ${monthName.toUpperCase()}${dateMatch[3] ? ' DE ' + dateMatch[3] : ''}`,
    displayTime: `${startHour} A ${endHour}`,
    isPast
  };
}

// Consultar disponibilidad
async function handleAvailabilityQuery(message) {
  const details = extractDetails(message);
  
  if (!details.valid) {
    addMessage("Formato incorrecto. Por favor sigue el ejemplo mostrado.", "bot-message");
    return;
  }
  
  // Validar fecha/hora no anterior
  if (details.isPast) {
    addMessage("❌ <strong>Error:</strong> No puedes consultar disponibilidad en fechas/horas pasadas", "bot-message");
    return;
  }

  try {
    const response = await fetch(`${BASE_URL}backend.php?action=check_availability`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        laboratorio: details.lab,
        fecha: details.date,
        hora_inicio: details.startTime,
        hora_fin: details.endTime,
        practice_area: details.practice_area
      })
    });
    
    if (!response.ok) throw new Error("Error en la respuesta del servidor");
    
    const data = await response.json();
    
    if (data.error) {
      addMessage(`Error: ${data.error}`, "bot-message");
      return;
    }
    
    if (data.available) {
      addMessage(
        `✅ El ambiente de <strong>${details.practice_area.toUpperCase()}</strong> está disponible el <strong>${details.displayDate}</strong> en el horario de <strong>${details.displayTime}</strong><br><br>` +
        `Para reservar copia y pega:<br>` +
        `<strong>RESERVAR, ${details.lab.toUpperCase()}, ${details.displayDate}, ${details.displayTime}, ${details.practice_area.toUpperCase()}</strong>`,
        "bot-message"
      );
    } else {
      if (data.reason === "area") {
        addMessage(
          `⚠️ El ambiente de <strong>${details.practice_area.toUpperCase()}</strong> NO está disponible el <strong>${details.displayDate}</strong> en el horario de <strong>${details.displayTime}</strong><br>` +
          `Reserva existente en laboratorio: <strong>${data.reserved_lab || 'No especificado'}</strong><br>` +
          `A nombre de: <strong>${data.reserved_by || 'Usuario no disponible'}</strong><br><br>` +
          `Puedes intentar con otro horario.`,
          "bot-message"
        );
      } else {
        addMessage(
          `⚠️ El laboratorio <strong>${details.lab.toUpperCase()}</strong> NO está disponible para <strong>${details.practice_area.toUpperCase()}</strong> el <strong>${details.displayDate}</strong> de <strong>${details.displayTime}</strong><br>` +
          `Reserva existente para área: <strong>${data.reserved_area || 'No especificada'}</strong><br>` +
          `A nombre de: <strong>${data.reserved_by || 'Usuario no disponible'}</strong><br><br>` +
          `Puedes intentar con otro laboratorio u horario.`,
          "bot-message"
        );
      }
    }
  } catch (error) {
    addMessage(
      "❌ Error al conectar con el servidor. Por favor intenta más tarde.",
      "bot-message"
    );
    console.error("Error en handleAvailabilityQuery:", error);
  }
}

// Iniciar proceso de reserva
function initiateReservation(message) {
  const details = extractDetails(message);
  
  if (!details.valid) {
    addMessage("Formato incorrecto. Por favor sigue el ejemplo mostrado.", "bot-message");
    return;
  }
  
  // Validar fecha/hora no anterior
  if (details.isPast) {
    addMessage("❌ <strong>Error:</strong> No puedes reservar en fechas/horas pasadas", "bot-message");
    return;
  }
  
  reservationState = {
    step: "teacher_name",
    lab: details.lab,
    date: details.date,
    startTime: details.startTime,
    endTime: details.endTime,
    dateObj: details.dateObj,
    practice_area: details.practice_area,
    displayDate: details.displayDate,
    displayTime: details.displayTime,
    teacher_name: null,
    practice_type: null,
    materials: null,
    num_students: null
  };
  
  addMessage(
    `Iniciando reserva para ambiente de <strong>${details.practice_area.toUpperCase()}</strong><br>` +
    `Fecha: <strong>${details.displayDate}</strong> Horario: <strong>${details.displayTime}</strong><br>` +
    "Por favor ingresa el nombre del docente a cargo:",
    "bot-message"
  );
}

// Manejar pasos de reserva
function handleReservationStep(message) {
  switch (reservationState.step) {
    case "teacher_name":
      reservationState.teacher_name = sanitizeText(message);
      reservationState.step = "practice_type";
      addMessage("Ingresa el tipo de práctica a realizar:", "bot-message");
      break;
      
    case "practice_type":
      reservationState.practice_type = sanitizeText(message);
      reservationState.step = "materials";
      addMessage("Lista los materiales requeridos (separados por comas):", "bot-message");
      break;
      
    case "materials":
      reservationState.materials = sanitizeText(message);
      reservationState.step = "num_students";
      addMessage("Ingresa el número de estudiantes que participarán:", "bot-message");
      break;
      
    case "num_students":
      const num = parseInt(message);
      if (isNaN(num) || num <= 0){
        addMessage("Por favor ingresa un número válido de estudiantes.", "bot-message");
        return;
      }
      reservationState.num_students = num;
      reservationState.students = [];
      reservationState.currentStudentIndex = 0;
      reservationState.step = "student_info";
      addMessage(`Por favor ingresa el nombre e identificación del estudiante 1 separados por coma (Ejemplo: Juan Pérez, 12345678):`, "bot-message");
      break;

    case "student_info":
      const studentData = message.split(',').map(part => part.trim());
      if (studentData.length !== 2 || !studentData[0] || !studentData[1]) {
        addMessage(`Por favor ingresa el nombre e identificación separados por coma (Ejemplo: Juan Pérez, 12345678):`, "bot-message");
        return;
      }

      reservationState.students.push({
        name: sanitizeText(studentData[0]),
        id: sanitizeText(studentData[1])
      });

      reservationState.currentStudentIndex++;

      if (reservationState.currentStudentIndex < reservationState.num_students) {
        addMessage(`Por favor ingresa el nombre e identificación del estudiante ${reservationState.currentStudentIndex + 1} separados por coma (Ejemplo: María López, 87654321):`, "bot-message");
      } else {
        completeReservation();
      }
      break;
  }
}

// Completar reserva
async function completeReservation() {
  try {
    const response = await fetch(`${BASE_URL}backend.php?action=reserve`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        laboratorio: reservationState.lab,
        fecha: reservationState.date,
        hora_inicio: reservationState.startTime,
        hora_fin: reservationState.endTime,
        teacher_name: reservationState.teacher_name,
        practice_type: reservationState.practice_type,
        materials: reservationState.materials,
        num_students: reservationState.num_students,
        practice_area: reservationState.practice_area,
        students: reservationState.students
      })
    });
    
    const data = await response.json();
    
    if (data.success) {
      addMessage(
        `🎉 <strong>¡Reserva confirmada!</strong><br><br>` +
        `<strong>Área:</strong> ${reservationState.practice_area.toUpperCase()}<br>` +
        `<strong>Asignatura:</strong> ${reservationState.lab}<br>` +
        `<strong>Fecha:</strong> ${reservationState.displayDate}<br>` +
        `<strong>Horario:</strong> ${reservationState.displayTime}<br>` +
        `<strong>Docente:</strong> ${reservationState.teacher_name}<br>` +
        `<strong>Tipo de práctica:</strong> ${reservationState.practice_type}<br>` +
        `<strong>Materiales:</strong> ${reservationState.materials}<br>` +
        `<strong>N° Estudiantes:</strong> ${reservationState.num_students}`,
        "bot-message"
      );
    } else {
      addMessage(
        `❌ <strong>Error al reservar:</strong> ${data.message || "No se pudo completar la reserva"}`,
        "bot-message"
      );
    }
  } catch (error) {
    addMessage(
      "❌ Error al conectar con el servidor. Por favor intenta más tarde.",
      "bot-message"
    );
    console.error("Error en completeReservation:", error);
  } finally {
    reservationState = {
      step: "none",
      lab: null,
      date: null,
      startTime: null,
      endTime: null,
      dateObj: null,
      practice_area: null,
      teacher_name: null,
      practice_type: null,
      materials: null,
      num_students: null,
      students: [],
      currentStudentIndex: 0,
      displayDate: null,
      displayTime: null
    };
  }
}

// Funciones auxiliares
function sanitizeText(text) {
  return text.trim().replace(/[<>]/g, '');
}

function addMessage(text, className) {
  const messageDiv = document.createElement("div");

  // Aplicar estilos de Tailwind según el tipo de mensaje
  if (className === "bot-message") {
    messageDiv.className = "max-w-[85%] md:max-w-[75%] animate-fadeIn";
    messageDiv.innerHTML = `
      <div class="flex items-start space-x-3">
        <div class="flex-shrink-0 w-8 h-8 rounded-full bg-gradient-to-r from-primary-500 to-purple-500 flex items-center justify-center text-white text-sm font-bold shadow-lg">
          🤖
        </div>
        <div class="flex-1 bg-white border border-gray-200 rounded-2xl rounded-tl-none px-4 py-3 shadow-sm">
          <div class="text-gray-800 text-sm leading-relaxed">${text}</div>
          <div class="text-xs text-gray-400 mt-1">${new Date().toLocaleTimeString('es-ES', {hour: '2-digit', minute: '2-digit'})}</div>
        </div>
      </div>
    `;
  } else if (className === "user-message") {
    messageDiv.className = "max-w-[85%] md:max-w-[75%] ml-auto animate-fadeIn";
    messageDiv.innerHTML = `
      <div class="flex items-start space-x-3 justify-end">
        <div class="flex-1 bg-gradient-to-r from-primary-600 to-purple-600 rounded-2xl rounded-tr-none px-4 py-3 shadow-lg">
          <div class="text-white text-sm leading-relaxed">${text}</div>
          <div class="text-xs text-primary-100 mt-1 text-right">${new Date().toLocaleTimeString('es-ES', {hour: '2-digit', minute: '2-digit'})}</div>
        </div>
        <div class="flex-shrink-0 w-8 h-8 rounded-full bg-gray-200 flex items-center justify-center text-gray-600 text-sm font-bold shadow-lg">
          👤
        </div>
      </div>
    `;
  }

  chatWindow.appendChild(messageDiv);
}

function scrollToBottom() {
  chatWindow.scrollTop = chatWindow.scrollHeight;
}

// Inicializar al cargar la página
document.addEventListener("DOMContentLoaded", initChatbot);