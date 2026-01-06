ARG BUILD_FROM
FROM $BUILD_FROM

# Install nginx
RUN apk add --no-cache nginx

# Create necessary directories
RUN mkdir -p \
    /var/www/html \
    /run/nginx \
    /var/log/nginx \
    /etc/cont-init.d \
    /etc/services.d/nginx

# Copy web files
COPY www/ /var/www/html/

# Copy nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy init script
COPY rootfs/etc/cont-init.d/00-config.sh /etc/cont-init.d/00-config.sh

# Copy service scripts
COPY rootfs/etc/services.d/nginx/run /etc/services.d/nginx/run
COPY rootfs/etc/services.d/nginx/finish /etc/services.d/nginx/finish

# Make scripts executable
RUN chmod a+x /etc/cont-init.d/00-config.sh && \
    chmod a+x /etc/services.d/nginx/run && \
    chmod a+x /etc/services.d/nginx/finish
