FROM ghcr.io/hassio-addons/base:latest

RUN apk add --no-cache nginx

RUN mkdir -p /var/www/html /run/nginx

COPY www/ /var/www/html/
COPY nginx.conf /etc/nginx/nginx.conf

COPY rootfs /
