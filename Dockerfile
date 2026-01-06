ARG BUILD_FROM
FROM ${BUILD_FROM}

# Installer nginx
RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/*

# Créer les dossiers nécessaires
RUN mkdir -p /var/www/html /run/nginx /var/log/nginx

# Copier les fichiers web
COPY www /var/www/html
COPY nginx.conf /etc/nginx/nginx.conf

# Copier rootfs (scripts cont-init et services.d)
COPY rootfs /

# Permissions pour tous les scripts
RUN chmod +x /etc/cont-init.d/*.sh && \
    chmod +x /etc/services.d/nginx/run && \
    chmod +x /etc/services.d/nginx/finish

# Pas de CMD nécessaire, /init de l'image HA s'en charge
