ARG BUILD_FROM
FROM $BUILD_FROM

# Install nginx and jq for config parsing
RUN apk add --no-cache nginx jq

# Create directories
RUN mkdir -p /var/www/html /run/nginx /var/log/nginx

# Copy web files
COPY www/ /var/www/html/

# Copy nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy run script
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# Expose port
EXPOSE 8099

# Use the run script as entrypoint
ENTRYPOINT ["/run.sh"]
