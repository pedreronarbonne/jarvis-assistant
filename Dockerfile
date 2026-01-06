ARG BUILD_FROM
FROM ${BUILD_FROM}

# Install nginx
RUN apk add --no-cache nginx

# Create necessary directories
RUN mkdir -p /var/www/html /run/nginx /var/log/nginx

# Copy web files
COPY www /var/www/html

# Copy nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy rootfs
COPY rootfs /
