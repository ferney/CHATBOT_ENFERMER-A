// Base URL for backend requests
const BASE_URL = "http://localhost/reservasDos/";

// DOM elements
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
const updateMaterials = document.getElementById("updateMaterials");
const updateStudents = document.getElementById("updateStudents");
const updateButton = document.getElementById("updateButton");
const cancelUpdate = document.getElementById("cancelUpdate");

// Initialize event listeners
document.addEventListener("DOMContentLoaded", initManagement);

function initManagement() {
    refreshButton.addEventListener("click", loadReservations);
    updateButton.addEventListener("click", handleUpdate);
    cancelUpdate.addEventListener("click", () => {
        updateForm.style.display = "none";
    });
    loadReservations();
}

// Load all reservations
async function loadReservations() {
    try {
        const response = await fetch(`${BASE_URL}backend.php?action=get_reservations`);
        if (!response.ok) throw new Error(`HTTP error! status: ${response.status}`);
        const data = await response.json();
        if (data.error) throw new Error(data.error);
        displayReservations(data.reservations);
    } catch (error) {
        addMessage(`Error al cargar las reservas: ${error.message}`, "bot-message");
    }
}

// Display reservations in the table
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
            <td>${res.usuario}</td>
            <td>${res.teacher_name}</td>
            <td>${res.practice_type}</td>
            <td>${res.materials}</td>
            <td>${res.num_students}</td>
            <td>
                <button class="edit-btn" data-id="${res.id}">Editar</button>
                <button class="delete-btn" data-id="${res.id}">Eliminar</button>
            </td>
        `;
        reservationsTable.appendChild(row);
    });
    document.querySelectorAll(".edit-btn").forEach(btn => btn.addEventListener("click", handleEdit));
    document.querySelectorAll(".delete-btn").forEach(btn => btn.addEventListener("click", handleDelete));
}

// Handle edit button click
function handleEdit(event) {
    const id = event.target.getAttribute("data-id");
    fetch(`${BASE_URL}backend.php?action=get_reservations&id=${id}`)
        .then(response => response.json())
        .then(data => {
            if (data.error) throw new Error(data.error);
            const res = data.reservations[0];
            updateId.value = id;
            updateLab.value = res.laboratorio;
            updateDate.value = res.fecha;
            updateStart.value = res.hora_inicio;
            updateEnd.value = res.hora_fin;
            updateTeacher.value = res.teacher_name;
            updatePractice.value = res.practice_type;
            updateMaterials.value = res.materials;
            updateStudents.value = res.num_students;
            updateForm.style.display = "block";
        })
        .catch(error => addMessage(`Error al cargar datos para edición: ${error.message}`, "bot-message"));
}

// Handle update form submission
async function handleUpdate() {
    const id = updateId.value;
    const payload = {
        id: id,
        laboratorio: updateLab.value,
        fecha: updateDate.value,
        hora_inicio: updateStart.value,
        hora_fin: updateEnd.value,
        teacher_name: updateTeacher.value,
        practice_type: updatePractice.value,
        materials: updateMaterials.value,
        num_students: updateStudents.value
    };

    try {
        const response = await fetch(`${BASE_URL}backend.php?action=update`, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(payload)
        });
        if (!response.ok) throw new Error(`HTTP error! status: ${response.status}`);
        const data = await response.json();
        if (data.success) {
            addMessage("Reserva actualizada con éxito.", "bot-message");
            updateForm.style.display = "none";
            loadReservations();
        } else {
            throw new Error(data.message || "Error al actualizar.");
        }
    } catch (error) {
        addMessage(`Error al actualizar la reserva: ${error.message}`, "bot-message");
    }
}

// Handle delete button click
async function handleDelete(event) {
    const id = event.target.getAttribute("data-id");
    if (confirm("¿Estás seguro de que deseas eliminar esta reserva?")) {
        try {
            const response = await fetch(`${BASE_URL}backend.php?action=cancel&id=${id}`, {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify({ id: id })
            });
            if (!response.ok) throw new Error(`HTTP error! status: ${response.status}`);
            const data = await response.json();
            if (data.success) {
                addMessage("Reserva eliminada con éxito.", "bot-message");
                loadReservations();
            } else {
                throw new Error(data.message || "Error al eliminar.");
            }
        } catch (error) {
            addMessage(`Error al eliminar la reserva: ${error.message}`, "bot-message");
        }
    }
}

// Add message to the message area
function addMessage(text, className) {
    const messageDiv = document.createElement("div");
    messageDiv.className = `message ${className}`;
    messageDiv.innerHTML = text;
    messageArea.appendChild(messageDiv);
    messageArea.scrollTop = messageArea.scrollHeight;
}