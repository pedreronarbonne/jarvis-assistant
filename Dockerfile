ARG BUILD_FROM
FROM $BUILD_FROM

# Install nginx
RUN apk add --no-cache nginx

# Create directories
RUN mkdir -p /var/www/html /run/nginx

# Copy web files
COPY www/ /var/www/html/

# Copy nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy run script
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# Expose port
EXPOSE 8099

CMD ["/run.sh"]