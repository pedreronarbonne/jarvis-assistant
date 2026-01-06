ARG BUILD_FROM
FROM $BUILD_FROM

# Install nginx and jq
RUN apk add --no-cache \
    nginx \
    jq

# Create necessary directories
RUN mkdir -p \
    /var/www/html \
    /run/nginx \
    /var/log/nginx

# Copy files
COPY rootfs /

# Make scripts executable
RUN chmod a+x /etc/services.d/nginx/run /etc/services.d/nginx/finish

# Copy web files
COPY www/ /var/www/html/

# Copy nginx config
COPY nginx.conf /etc/nginx/nginx.conf
