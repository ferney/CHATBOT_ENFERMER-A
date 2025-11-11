// chatbot.js - MODO GUIADO INTERACTIVO
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
  { id: "cuidados básicos", name: "Cuidados Básicos", icon: "🏥" },
  { id: "valoración", name: "Valoración", icon: "📋" },
  { id: "heridas y quirúrgica", name: "Heridas y Quirúrgica", icon: "🩹" },
  { id: "pediatría", name: "Pediatría", icon: "👶" },
  { id: "ginecobstetricia", name: "Ginecobstetricia", icon: "🤰" },
  { id: "debriefing", name: "Debriefing", icon: "💬" },
  { id: "reanimación", name: "Reanimación", icon: "🚑" }
];

// Horarios disponibles (7am a 7pm en bloques de 2 horas)
const HORARIOS = [
  { inicio: "08:00", fin: "10:00", display: "8:00 AM - 10:00 AM" },
  { inicio: "10:00", fin: "12:00", display: "10:00 AM - 12:00 AM" },
  { inicio: "14:00", fin: "16:00", display: "2:00 PM - 4:00 PM" },
  { inicio: "16:00", fin: "18:00", display: "4:00 PM - 6:00 PM" },
/*   { inicio: "15:00", fin: "17:00", display: "3:00 PM - 5:00 PM" },
  { inicio: "17:00", fin: "19:00", display: "5:00 PM - 7:00 PM" } */
];

// Elementos del DOM
const chatWindow = document.getElementById("chatWindow");
const userInput = document.getElementById("userInput");
const sendButton = document.getElementById("sendButton");

// Estado del flujo de conversación
let conversationState = {
  mode: "inicio",
  step: null,
  data: {}
};

// Inicializar el chatbot
function initChatbot() {
  if (!chatWindow || !userInput || !sendButton) {
    console.error("Error: Elementos del DOM no encontrados");
    return;
  }

  sendButton.addEventListener("click", handleUserInput);
  userInput.addEventListener("keypress", (e) => {
    if (e.key === "Enter") handleUserInput();
  });

  showWelcomeMessage();
}

// Mensaje de bienvenida
function showWelcomeMessage() {
  addBotMessage(`
    <div class="space-y-3">
      <p class="text-lg font-semibold">¡Bienvenido al Sistema de Reservas! 👋</p>
      <p>Soy tu asistente virtual y estoy aquí para ayudarte a:</p>
      <ul class="list-disc list-inside space-y-1 ml-2">
        <li>Consultar disponibilidad de laboratorios</li>
        <li>Realizar reservas de forma rápida y sencilla</li>
      </ul>
      <p class="font-medium mt-4">¿Qué deseas hacer?</p>
    </div>
  `);

  showInitialOptions();
}

// Mostrar opciones iniciales
function showInitialOptions() {
  addButtonGroup([
    { text: "🔍 Consultar Disponibilidad", action: "consultar", variant: "primary" },
    { text: "📅 Hacer una Reserva", action: "reservar", variant: "success" }
  ]);
}

// Manejar entrada del usuario
function handleUserInput() {
  const message = userInput.value.trim();
  if (!message) return;

  addUserMessage(message);
  userInput.value = "";

  processConversation(message);
  scrollToBottom();
}

// Procesar conversación según estado
function processConversation(message) {
  const state = conversationState;

  if (state.step === "teacher_name") {
    state.data.teacher_name = sanitizeText(message);
    state.step = "practice_type";
    addBotMessage("¿Qué tipo de práctica vas a realizar? (Ejemplo: Práctica de toma de signos vitales)");
  }
  else if (state.step === "practice_type") {
    state.data.practice_type = sanitizeText(message);
    state.step = "materials";
    addBotMessage("¿Qué materiales necesitas? Sepáralos por comas. (Ejemplo: Estetoscopio, tensiómetro, termómetro)");
  }
  else if (state.step === "materials") {
    state.data.materials = sanitizeText(message);
    state.step = "num_students";
    addBotMessage("¿Cuántos estudiantes van a participar en la práctica?");
  }
  else if (state.step === "num_students") {
    const num = parseInt(message);
    if (isNaN(num) || num <= 0) {
      addBotMessage("⚠️ Por favor ingresa un número válido de estudiantes (mayor a 0).");
      return;
    }
    state.data.num_students = num;
    state.data.students = [];
    state.data.currentStudentIndex = 0;
    state.step = "student_info";
    addBotMessage(`Perfecto. Ahora necesito los datos de los ${num} estudiantes.<br><br>👤 <strong>Estudiante 1 de ${num}</strong><br>Ingresa: Nombre completo, Cédula<br><em>Ejemplo: Juan Pérez García, 1234567890</em>`);
  }
  else if (state.step === "student_info") {
    const studentData = message.split(',').map(part => part.trim());
    if (studentData.length !== 2 || !studentData[0] || !studentData[1]) {
      addBotMessage("⚠️ Formato incorrecto. Por favor ingresa:<br><strong>Nombre completo, Cédula</strong><br>Ejemplo: Juan Pérez García, 1234567890");
      return;
    }

    state.data.students.push({
      name: sanitizeText(studentData[0]),
      id: sanitizeText(studentData[1])
    });

    state.data.currentStudentIndex++;

    if (state.data.currentStudentIndex < state.data.num_students) {
      const nextNum = state.data.currentStudentIndex + 1;
      addBotMessage(`✅ Estudiante registrado.<br><br>👤 <strong>Estudiante ${nextNum} de ${state.data.num_students}</strong><br>Ingresa: Nombre completo, Cédula`);
    } else {
      showReservationSummary();
    }
  }
}

// Manejar clicks en botones
function handleButtonClick(action, data = null) {
  console.log("🔘 Botón clickeado:", action, data);

  const state = conversationState;

  if (action === "consultar") {
    state.mode = "consultar";
    state.step = "select_lab";
    state.data = {};
    addBotMessage("Excelente, vamos a consultar la disponibilidad. 📋<br><br>Primero, selecciona el <strong>laboratorio</strong> que necesitas:");
    showLaboratorioButtons();
  }
  else if (action === "reservar") {
    state.mode = "reservar";
    state.step = "select_lab";
    state.data = {};
    addBotMessage("¡Perfecto! Vamos a hacer tu reserva paso a paso. 📝<br><br>Primero, selecciona el <strong>laboratorio</strong> que necesitas:");
    showLaboratorioButtons();
  }
  else if (action === "select_lab") {
    state.data.laboratorio = data;
    state.step = "select_area";
    addBotMessage(`Has seleccionado: <strong>${data}</strong> ✅<br><br>Ahora selecciona el <strong>área de práctica</strong>:`);
    showAreaButtons();
  }
  else if (action === "select_area") {
    state.data.practice_area = data;
    state.step = "select_date";
    const areaObj = PRACTICE_AREAS.find(a => a.id === data);
    addBotMessage(`${areaObj.icon} Área seleccionada: <strong>${areaObj.name}</strong> ✅<br><br>¿Para qué <strong>fecha</strong> necesitas el laboratorio?`);
    showDatePicker();
  }
  else if (action === "select_date") {
    state.data.fecha = data;
    state.step = "select_time";
    addBotMessage(`📅 Fecha seleccionada: <strong>${formatDisplayDate(data)}</strong> ✅<br><br>Selecciona el <strong>horario</strong>:`);
    showTimeButtons();
  }
  else if (action === "select_time") {
    const [inicio, fin] = data.split('|');
    state.data.hora_inicio = inicio;
    state.data.hora_fin = fin;
    state.step = "checking";

    const horario = HORARIOS.find(h => h.inicio === inicio && h.fin === fin);
    addBotMessage(`🕐 Horario seleccionado: <strong>${horario.display}</strong> ✅<br><br>⏳ Verificando disponibilidad...`);

    checkAvailability();
  }
  else if (action === "confirm_reservation") {
    submitReservation();
  }
  else if (action === "cancel") {
    state.mode = "inicio";
    state.step = null;
    state.data = {};
    addBotMessage("❌ Operación cancelada. ¿Qué deseas hacer ahora?");
    showInitialOptions();
  }
  else if (action === "restart") {
    state.mode = "inicio";
    state.step = null;
    state.data = {};
    addBotMessage("🔄 Reiniciando... ¿Qué deseas hacer?");
    showInitialOptions();
  }
}

// Verificar disponibilidad
async function checkAvailability() {
  const state = conversationState;

  try {
    const response = await fetch(`${BASE_URL}backend.php?action=check_availability`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        laboratorio: state.data.laboratorio,
        fecha: state.data.fecha,
        hora_inicio: state.data.hora_inicio,
        hora_fin: state.data.hora_fin,
        practice_area: state.data.practice_area
      })
    });

    const data = await response.json();

    if (data.error) {
      addBotMessage(`❌ <strong>Error:</strong> ${data.error}`);
      addButtonGroup([{ text: "🔄 Intentar de nuevo", action: "restart", variant: "secondary" }]);
      return;
    }

    if (data.available) {
      const areaObj = PRACTICE_AREAS.find(a => a.id === state.data.practice_area);
      const horario = HORARIOS.find(h => h.inicio === state.data.hora_inicio);

      if (state.mode === "consultar") {
        addBotMessage(`
          <div class="space-y-2">
            <p class="text-lg font-semibold text-green-600">✅ ¡Disponible!</p>
            <div class="bg-green-50 border border-green-200 rounded-lg p-3 space-y-1 text-sm">
              <p><strong>Laboratorio:</strong> ${state.data.laboratorio}</p>
              <p><strong>Área:</strong> ${areaObj.icon} ${areaObj.name}</p>
              <p><strong>Fecha:</strong> ${formatDisplayDate(state.data.fecha)}</p>
              <p><strong>Horario:</strong> ${horario.display}</p>
            </div>
            <p class="text-sm">¿Deseas hacer la reserva ahora?</p>
          </div>
        `);
        addButtonGroup([
          { text: "📅 Sí, reservar ahora", action: "reservar", variant: "success" },
          { text: "🔍 Consultar otro horario", action: "restart", variant: "secondary" }
        ]);
      } else {
        addBotMessage(`
          <div class="space-y-2">
            <p class="text-lg font-semibold text-green-600">✅ ¡Disponible!</p>
            <p>Perfecto, el laboratorio está disponible. Ahora necesito algunos datos adicionales.</p>
            <p class="font-medium">👨‍🏫 ¿Cuál es el nombre del docente a cargo?</p>
          </div>
        `);
        state.step = "teacher_name";
      }
    } else {
      const areaObj = PRACTICE_AREAS.find(a => a.id === state.data.practice_area);
      const horario = HORARIOS.find(h => h.inicio === state.data.hora_inicio);

      let mensaje = `
        <div class="space-y-2">
          <p class="text-lg font-semibold text-red-600">❌ No Disponible</p>
          <div class="bg-red-50 border border-red-200 rounded-lg p-3 space-y-1 text-sm">
            <p><strong>Laboratorio:</strong> ${state.data.laboratorio}</p>
            <p><strong>Área:</strong> ${areaObj.icon} ${areaObj.name}</p>
            <p><strong>Fecha:</strong> ${formatDisplayDate(state.data.fecha)}</p>
            <p><strong>Horario:</strong> ${horario.display}</p>
          </div>
      `;

      if (data.reason === "area") {
        mensaje += `<p class="text-sm">Ya existe una reserva para el área de <strong>${areaObj.name}</strong> en el laboratorio <strong>${data.reserved_lab}</strong> a nombre de <strong>${data.reserved_by}</strong>.</p>`;
      } else {
        mensaje += `<p class="text-sm">El laboratorio ya está reservado para el área <strong>${data.reserved_area}</strong> a nombre de <strong>${data.reserved_by}</strong>.</p>`;
      }

      mensaje += `</div>`;

      addBotMessage(mensaje);
      addButtonGroup([
        { text: "🔄 Probar otro horario", action: "restart", variant: "secondary" },
        { text: "❌ Cancelar", action: "cancel", variant: "danger" }
      ]);
    }
  } catch (error) {
    console.error("Error:", error);
    addBotMessage("❌ Error al conectar con el servidor. Por favor intenta más tarde.");
    addButtonGroup([{ text: "🔄 Intentar de nuevo", action: "restart", variant: "secondary" }]);
  }
}

// Mostrar resumen de reserva antes de confirmar
function showReservationSummary() {
  const state = conversationState;
  const areaObj = PRACTICE_AREAS.find(a => a.id === state.data.practice_area);
  const horario = HORARIOS.find(h => h.inicio === state.data.hora_inicio);

  let studentsHtml = state.data.students.map((s, i) =>
    `<div class="flex items-start space-x-2">
      <span class="font-semibold">${i + 1}.</span>
      <div>
        <p class="font-medium">${s.name}</p>
        <p class="text-xs text-gray-500">CC: ${s.id}</p>
      </div>
    </div>`
  ).join('');

  addBotMessage(`
    <div class="space-y-3">
      <p class="text-lg font-semibold text-blue-600">📋 Resumen de tu Reserva</p>
      <p>Por favor verifica que toda la información sea correcta:</p>

      <div class="bg-blue-50 border border-blue-200 rounded-lg p-4 space-y-2 text-sm">
        <div><strong>🏥 Laboratorio:</strong> ${state.data.laboratorio}</div>
        <div><strong>${areaObj.icon} Área:</strong> ${areaObj.name}</div>
        <div><strong>📅 Fecha:</strong> ${formatDisplayDate(state.data.fecha)}</div>
        <div><strong>🕐 Horario:</strong> ${horario.display}</div>
        <div><strong>👨‍🏫 Docente:</strong> ${state.data.teacher_name}</div>
        <div><strong>📝 Tipo de práctica:</strong> ${state.data.practice_type}</div>
        <div><strong>🧪 Materiales:</strong> ${state.data.materials}</div>
        <div><strong>👥 Estudiantes (${state.data.num_students}):</strong></div>
        <div class="ml-4 space-y-1">
          ${studentsHtml}
        </div>
      </div>

      <p class="font-medium">¿Confirmas la reserva?</p>
    </div>
  `);

  addButtonGroup([
    { text: "✅ Confirmar Reserva", action: "confirm_reservation", variant: "success" },
    { text: "❌ Cancelar", action: "cancel", variant: "danger" }
  ]);

  conversationState.step = "confirming";
}

// Enviar reserva al backend
async function submitReservation() {
  const state = conversationState;

  addBotMessage("⏳ Procesando tu reserva...");

  try {
    const response = await fetch(`${BASE_URL}backend.php?action=reserve`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        laboratorio: state.data.laboratorio,
        fecha: state.data.fecha,
        hora_inicio: state.data.hora_inicio,
        hora_fin: state.data.hora_fin,
        teacher_name: state.data.teacher_name,
        practice_type: state.data.practice_type,
        materials: state.data.materials,
        num_students: state.data.num_students,
        practice_area: state.data.practice_area,
        students: state.data.students
      })
    });

    const data = await response.json();

    if (data.success) {
      const areaObj = PRACTICE_AREAS.find(a => a.id === state.data.practice_area);
      const horario = HORARIOS.find(h => h.inicio === state.data.hora_inicio);

      addBotMessage(`
        <div class="space-y-3">
          <p class="text-xl font-bold text-green-600">🎉 ¡Reserva Confirmada!</p>
          <p>Tu reserva ha sido registrada exitosamente.</p>

          <div class="bg-green-50 border border-green-300 rounded-lg p-4 space-y-2 text-sm">
            <div><strong>🏥 Laboratorio:</strong> ${state.data.laboratorio}</div>
            <div><strong>${areaObj.icon} Área:</strong> ${areaObj.name}</div>
            <div><strong>📅 Fecha:</strong> ${formatDisplayDate(state.data.fecha)}</div>
            <div><strong>🕐 Horario:</strong> ${horario.display}</div>
            <div><strong>👨‍🏫 Docente:</strong> ${state.data.teacher_name}</div>
            <div><strong>👥 Estudiantes:</strong> ${state.data.num_students}</div>
          </div>

          <p class="text-sm text-gray-600">Recuerda llegar 10 minutos antes del horario programado.</p>
        </div>
      `);

      addButtonGroup([
        { text: "📅 Hacer otra reserva", action: "restart", variant: "primary" }
      ]);

      state.mode = "inicio";
      state.step = null;
      state.data = {};
    } else {
      addBotMessage(`❌ <strong>Error:</strong> ${data.message || "No se pudo completar la reserva"}`);
      addButtonGroup([
        { text: "🔄 Intentar de nuevo", action: "restart", variant: "secondary" },
        { text: "❌ Cancelar", action: "cancel", variant: "danger" }
      ]);
    }
  } catch (error) {
    console.error("Error:", error);
    addBotMessage("❌ Error al conectar con el servidor. Por favor intenta más tarde.");
    addButtonGroup([{ text: "🔄 Intentar de nuevo", action: "restart", variant: "secondary" }]);
  }
}

// ===== FUNCIONES DE UI =====

function showLaboratorioButtons() {
  const buttons = LABORATORIOS.map(lab => ({
    text: lab,
    action: "select_lab",
    data: lab,
    variant: "outline"
  }));

  addButtonGroup(buttons, 2);
}

function showAreaButtons() {
  const buttons = PRACTICE_AREAS.map(area => ({
    text: `${area.icon} ${area.name}`,
    action: "select_area",
    data: area.id,
    variant: "outline"
  }));

  addButtonGroup(buttons, 2);
}

function showDatePicker() {
  const today = new Date();
  const dates = [];

  for (let i = 0; i < 30; i++) {
    const date = new Date(today);
    date.setDate(today.getDate() + i);

    if (date.getDay() !== 0 && date.getDay() !== 6) {
      const dateStr = date.toISOString().split('T')[0];
      dates.push({
        text: formatDisplayDate(dateStr),
        action: "select_date",
        data: dateStr,
        variant: "outline"
      });
    }

    if (dates.length >= 10) break;
  }

  addButtonGroup(dates, 2);
}

function showTimeButtons() {
  const buttons = HORARIOS.map(horario => ({
    text: horario.display,
    action: "select_time",
    data: `${horario.inicio}|${horario.fin}`,
    variant: "outline"
  }));

  addButtonGroup(buttons, 2);
}

function addButtonGroup(buttons, columns = 1) {
  const containerDiv = document.createElement("div");
  containerDiv.className = `grid grid-cols-1 ${columns === 2 ? 'md:grid-cols-2' : ''} gap-2 max-w-[85%] md:max-w-[75%] animate-fadeIn my-4`;

  buttons.forEach(btn => {
    const button = document.createElement("button");

    const variants = {
      primary: "bg-gradient-to-r from-primary-600 to-purple-600 text-white hover:from-primary-700 hover:to-purple-700",
      success: "bg-green-600 text-white hover:bg-green-700",
      danger: "bg-red-600 text-white hover:bg-red-700",
      secondary: "bg-gray-600 text-white hover:bg-gray-700",
      outline: "bg-white border-2 border-primary-300 text-primary-700 hover:bg-primary-50 hover:border-primary-500"
    };

    button.className = `px-4 py-3 rounded-xl font-medium transition-all duration-200 hover:scale-105 active:scale-95 shadow-sm hover:shadow-md text-left ${variants[btn.variant || 'outline']}`;
    button.textContent = btn.text;
    button.onclick = () => handleButtonClick(btn.action, btn.data);

    containerDiv.appendChild(button);
  });

  chatWindow.appendChild(containerDiv);
  scrollToBottom();
}

function addBotMessage(html) {
  const messageDiv = document.createElement("div");
  messageDiv.className = "max-w-[85%] md:max-w-[75%] animate-fadeIn";
  messageDiv.innerHTML = `
    <div class="flex items-start space-x-3">
      <div class="flex-shrink-0 w-8 h-8 rounded-full bg-gradient-to-r from-primary-500 to-purple-500 flex items-center justify-center text-white text-sm font-bold shadow-lg">
        🤖
      </div>
      <div class="flex-1 bg-white border border-gray-200 rounded-2xl rounded-tl-none px-4 py-3 shadow-sm">
        <div class="text-gray-800 text-sm leading-relaxed">${html}</div>
        <div class="text-xs text-gray-400 mt-1">${new Date().toLocaleTimeString('es-ES', {hour: '2-digit', minute: '2-digit'})}</div>
      </div>
    </div>
  `;
  chatWindow.appendChild(messageDiv);
  scrollToBottom();
}

function addUserMessage(text) {
  const messageDiv = document.createElement("div");
  messageDiv.className = "max-w-[85%] md:max-w-[75%] ml-auto animate-fadeIn";
  messageDiv.innerHTML = `
    <div class="flex items-start space-x-3 justify-end">
      <div class="flex-1 bg-gradient-to-r from-primary-600 to-purple-600 rounded-2xl rounded-tr-none px-4 py-3 shadow-lg">
        <div class="text-white text-sm leading-relaxed">${sanitizeText(text)}</div>
        <div class="text-xs text-primary-100 mt-1 text-right">${new Date().toLocaleTimeString('es-ES', {hour: '2-digit', minute: '2-digit'})}</div>
      </div>
      <div class="flex-shrink-0 w-8 h-8 rounded-full bg-gray-200 flex items-center justify-center text-gray-600 text-sm font-bold shadow-lg">
        👤
      </div>
    </div>
  `;
  chatWindow.appendChild(messageDiv);
  scrollToBottom();
}

function sanitizeText(text) {
  return text.trim().replace(/[<>]/g, '');
}

function scrollToBottom() {
  chatWindow.scrollTop = chatWindow.scrollHeight;
}

function formatDisplayDate(dateStr) {
  const date = new Date(dateStr + 'T00:00:00');
  const days = ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'];
  const months = ['enero', 'febrero', 'marzo', 'abril', 'mayo', 'junio', 'julio', 'agosto', 'septiembre', 'octubre', 'noviembre', 'diciembre'];

  return `${days[date.getDay()]}, ${date.getDate()} de ${months[date.getMonth()]} de ${date.getFullYear()}`;
}

document.addEventListener("DOMContentLoaded", initChatbot);
