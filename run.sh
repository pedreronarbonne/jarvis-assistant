#!/usr/bin/with-contenv bashio

bashio::log.info "Démarrage de Jarvis Assistant..."

# Récupérer la configuration
ASSISTANT_ID=$(bashio::config 'assistant_id')
bashio::log.info "Assistant ID: ${ASSISTANT_ID}"

# Injecter la config dans le HTML si nécessaire
if [ -n "${ASSISTANT_ID}" ]; then
    sed -i "s|conversation.hf_co_unsloth_qwen3_vl_8b_instruct_gguf_q8_0_ai_agent|${ASSISTANT_ID}|g" /var/www/html/index.html
fi

# Démarrer nginx
bashio::log.info "Démarrage du serveur web sur le port 8099..."
exec nginx -g "daemon off;"