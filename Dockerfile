ARG BUILD_FROM
FROM ${BUILD_FROM}

# Install nginx + bash (IMPORTANT)
RUN apk add --no-cache nginx bash

# Create necessary directories
RUN mkdir -p /var/www/html /run/nginx /var/log/nginx

# Copy web files
COPY www /var/www/html

# Copy nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy rootfs
COPY rootfs /

# Fix permissions for all scripts
RUN chmod +x /etc/cont-init.d/00-config.sh && \
    chmod +x /etc/services.d/nginx/run && \
    chmod +x /etc/services.d/nginx/finish

