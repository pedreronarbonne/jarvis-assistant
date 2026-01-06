ARG BUILD_FROM
FROM ${BUILD_FROM}

# Installer bash + nginx
RUN apk add --no-cache bash nginx

# Créer les dossiers nécessaires
RUN mkdir -p /var/www/html /run/nginx /var/log/nginx

# Copier les fichiers web
COPY www /var/www/html
COPY nginx.conf /etc/nginx/nginx.conf

# Copier rootfs (scripts cont-init, services.d, etc.)
COPY rootfs /

# Rendre les scripts exécutables
RUN chmod +x /etc/cont-init.d/*.sh && \
    chmod +x /etc/services.d/nginx/run && \
    chmod +x /etc/services.d/nginx/finish

# CMD par défaut (s6-overlay gère /init)
# Aucun CMD à ajouter, l'image de base HA s'en charge
