#!/bin/bash

# Script de despliegue para el Chatbot de Enfermería
# Configuración optimizada para VPS con recursos limitados

echo "🚀 Iniciando despliegue del Chatbot de Enfermería..."

# Verificar si Docker está instalado
if ! command -v docker &> /dev/null; then
    echo "❌ Docker no está instalado. Instalando..."
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh
    sudo usermod -aG docker $USER
    echo "✅ Docker instalado. Reinicia tu sesión para usar Docker sin sudo."
    exit 1
fi

# Verificar si Docker Compose está disponible
if ! docker compose version &> /dev/null; then
    echo "❌ Docker Compose no está disponible."
    exit 1
fi

# Detener solo los contenedores del proyecto
echo "🛑 Deteniendo contenedores del proyecto..."
docker compose down

# Limpiar solo las imágenes de este proyecto
echo "🧹 Limpiando imágenes del proyecto..."
docker compose down --rmi local 2>/dev/null || true

# Construir y levantar contenedores
echo "🏗️ Construyendo y levantando contenedores..."
docker compose up --build -d

# Verificar estado de los contenedores
echo "📊 Verificando estado de los contenedores..."
docker compose ps

# Mostrar logs de los últimos 20 líneas
echo "📝 Últimos logs de la aplicación:"
docker compose logs --tail=20 chatbot-app

echo ""
echo "✅ Despliegue completado!"
echo ""

# Detectar si estamos en VPS o local
if [ -f "/etc/hostname" ] && [ "$(cat /etc/hostname)" != "$(hostname)" ] 2>/dev/null; then
    # Intentar obtener IP pública
    VPS_IP=$(curl -s ifconfig.me 2>/dev/null || curl -s ipecho.net/plain 2>/dev/null || hostname -I | awk '{print $1}')
    echo "📋 Servicios disponibles (VPS):"
    echo "   🌐 Aplicación: http://$VPS_IP"
    echo "   🗄️ phpMyAdmin: http://$VPS_IP:8080"
    echo "   📊 MySQL: $VPS_IP:3306"
    echo ""
    echo "💡 Configura tu dominio para apuntar a: $VPS_IP"
else
    echo "📋 Servicios disponibles (Local):"
    echo "   🌐 Aplicación: http://localhost"
    echo "   🗄️ phpMyAdmin: http://localhost:8080"
    echo "   📊 MySQL: localhost:3306"
fi
echo ""
echo "🔑 Credenciales de base de datos:"
echo "   Usuario root: root / chatbot_root_2024"
echo "   Usuario app: chatbot_user / chatbot_pass_2024"
echo "   Base de datos: laboratory_reservations"
echo ""
echo "📁 Para ver logs en tiempo real:"
echo "   docker compose logs -f"
echo ""
echo "⏹️ Para detener los servicios:"
echo "   docker compose down"