#!/usr/bin/with-contenv /bin/bash
set -e

bashio::log.info "Configuration de Jarvis Assistant..."

if bashio::config.exists 'assistant_id'; then
    ASSISTANT_ID=$(bashio::config 'assistant_id')
    bashio::log.info "Assistant ID: ${ASSISTANT_ID}"

    # Injecter l'ID dans le HTML
    sed -i "s|conversation.hf_co_unsloth_qwen3_vl_8b_instruct_gguf_q8_0_ai_agent|${ASSISTANT_ID}|g" /var/www/html/index.html
else
    bashio::log.warning "Aucune configuration trouvée, utilisation des valeurs par défaut"
fi

bashio::log.info "Configuration terminée"
