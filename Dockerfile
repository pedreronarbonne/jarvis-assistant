ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache nginx

RUN mkdir -p /var/www/html /run/nginx

COPY www/ /var/www/html/
COPY nginx.conf /etc/nginx/nginx.conf

COPY rootfs /
