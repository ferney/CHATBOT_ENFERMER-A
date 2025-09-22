#!/bin/bash

# Script para actualizar la configuración de base de datos en los archivos PHP
# Cambia de localhost a mysql-db (nombre del contenedor)

echo "🔧 Actualizando configuración de base de datos..."

# Actualizar backend.php
if [ -f "reservasChatbot/backend/backend.php" ]; then
    sed -i 's/$servername = "localhost";/$servername = "mysql-db";/g' reservasChatbot/backend/backend.php
    sed -i 's/$username = "root";/$username = "chatbot_user";/g' reservasChatbot/backend/backend.php
    sed -i 's/$password = "";/$password = "chatbot_pass_2024";/g' reservasChatbot/backend/backend.php
    echo "✅ backend.php actualizado"
fi

# Actualizar get_reservations.php
if [ -f "reservasChatbot/backend/get_reservations.php" ]; then
    sed -i 's/$servername = "localhost";/$servername = "mysql-db";/g' reservasChatbot/backend/get_reservations.php
    sed -i 's/$username = "root";/$username = "chatbot_user";/g' reservasChatbot/backend/get_reservations.php
    sed -i 's/$password = "";/$password = "chatbot_pass_2024";/g' reservasChatbot/backend/get_reservations.php
    echo "✅ get_reservations.php actualizado"
fi

# Actualizar test.php
if [ -f "reservasChatbot/test.php" ]; then
    sed -i 's/$servername = "localhost";/$servername = "mysql-db";/g' reservasChatbot/test.php
    sed -i 's/$username = "root";/$username = "chatbot_user";/g' reservasChatbot/test.php
    sed -i 's/$password = "";/$password = "chatbot_pass_2024";/g' reservasChatbot/test.php
    echo "✅ test.php actualizado"
fi

echo "🎉 Configuración de base de datos actualizada para Docker!"
echo "💡 Los archivos PHP ahora apuntan al contenedor mysql-db"