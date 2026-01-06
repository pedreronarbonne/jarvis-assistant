#!/bin/sh
set -e

CONFIG_PATH="/data/options.json"

echo "[INFO] Démarrage de Jarvis Assistant..."

# Vérifier si le fichier de config existe
if [ -f "$CONFIG_PATH" ]; then
    echo "[INFO] Lecture de la configuration..."
    
    # Récupérer l'assistant_id depuis la config
    ASSISTANT_ID=$(jq -r '.assistant_id // "conversation.hf_co_unsloth_qwen3_vl_8b_instruct_gguf_q8_0_ai_agent"' "$CONFIG_PATH")
    echo "[INFO] Assistant ID: $ASSISTANT_ID"
    
    # Injecter la config dans le HTML
    sed -i "s|conversation.hf_co_unsloth_qwen3_vl_8b_instruct_gguf_q8_0_ai_agent|$ASSISTANT_ID|g" /var/www/html/index.html
else
    echo "[WARN] Fichier de configuration non trouvé, utilisation des valeurs par défaut"
fi

# Démarrer nginx
echo "[INFO] Démarrage du serveur web sur le port 8099..."
exec nginx -g "daemon off;"
