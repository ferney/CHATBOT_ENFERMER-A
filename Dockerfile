FROM php:8.2-fpm-alpine

# Instalar dependencias básicas
RUN apk add --no-cache \
    nginx \
    supervisor \
    tzdata

# Instalar extensiones de PHP necesarias
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Configurar zona horaria
RUN cp /usr/share/zoneinfo/America/Bogota /etc/localtime && \
    echo "America/Bogota" > /etc/timezone

# Configurar PHP
RUN echo "date.timezone = America/Bogota" >> /usr/local/etc/php/conf.d/timezone.ini

# Copiar archivos del proyecto
COPY reservasChatbot/ /var/www/html/

# Configurar permisos
RUN chown -R www-data:www-data /var/www/html/ && \
    chmod -R 755 /var/www/html/

# Configurar Nginx
COPY docker/nginx.conf /etc/nginx/nginx.conf
COPY docker/default.conf /etc/nginx/http.d/default.conf

# Configurar Supervisor
COPY docker/supervisord.conf /etc/supervisord.conf

# Crear directorios necesarios
RUN mkdir -p /var/log/nginx /var/log/supervisor /run/nginx

# Exponer puerto 80
EXPOSE 80

# Comando por defecto
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]