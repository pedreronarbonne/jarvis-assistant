🤖 Jarvis Assistant pour Home Assistant

Interface de chat intelligente pour contrôler votre Home Assistant avec un assistant IA conversationnel.

✨ Fonctionnalités

    💬 Chat conversationnel avec votre assistant Home Assistant
    📝 Historique des conversations sauvegardé par utilisateur
    🔐 Authentification automatique via Ingress
    🎨 Interface moderne et responsive
    📱 Compatible mobile et desktop
    🗂️ Gestion multi-conversations avec titres automatiques
    🔄 Contexte conversationnel pour des réponses plus pertinentes

🚀 Installation
Méthode 1 : Via le repository (recommandé)

    Ajoutez ce repository à vos add-ons Home Assistant :
        Allez dans Supervisor → Add-on Store
        Cliquez sur les ⋮ (3 points en haut à droite)
        Sélectionnez Repositories
        Ajoutez l'URL : https://github.com/VOTRE-USERNAME/jarvis-assistant
    Trouvez "Jarvis Assistant" dans la liste et cliquez sur Install
    Configurez l'add-on (voir section Configuration)
    Démarrez l'add-on
    Activez "Show in sidebar" pour un accès facile

Méthode 2 : Installation locale

    Copiez le dossier jarvis-assistant dans /addons/ de votre Home Assistant
    Rechargez la page des add-ons
    Installez depuis "Local add-ons"

⚙️ Configuration

L'add-on nécessite une configuration minimale :
yaml

assistant_id: conversation.hf_co_unsloth_qwen3_vl_8b_instruct_gguf_q8_0_ai_agent

Options disponibles
Option	Description	Défaut
assistant_id	ID de votre assistant conversationnel Home Assistant	conversation.hf_co_unsloth_qwen3_vl_8b_instruct_gguf_q8_0_ai_agent

Pour trouver votre assistant ID :

    Allez dans Outils de développement → États
    Recherchez conversation.
    Copiez l'ID complet de votre assistant

📖 Utilisation

    Accédez à l'interface : Cliquez sur "Jarvis" dans la barre latérale
    Tapez votre message : Posez des questions ou donnez des commandes
    Gérez vos conversations :
        Créez une nouvelle conversation avec le bouton ➕
        Changez de conversation en cliquant dessus
        Supprimez une conversation avec l'icône 🗑️

Exemples de commandes

    "Allume les lumières du salon"
    "Quelle est la température dans la chambre ?"
    "Éteins toutes les lumières"
    "Active la scène soirée"

🔧 Fonctionnement technique
Architecture

Interface Web (nginx) → Ingress → WebSocket API → Home Assistant

    Nginx : Serveur web léger qui sert l'interface
    Ingress : Gère l'authentification automatiquement
    WebSocket : Communication temps réel avec Home Assistant
    LocalStorage : Sauvegarde des conversations côté client

Sécurité

    ✅ Pas de tokens exposés côté client
    ✅ Authentification gérée par Home Assistant
    ✅ Communication sécurisée via WebSocket
    ✅ Isolation par utilisateur

🐛 Dépannage
L'add-on ne démarre pas

    Vérifiez les logs : Supervisor → Jarvis Assistant → Log
    Vérifiez que le port 8099 n'est pas utilisé
    Redémarrez l'add-on

Erreur de connexion WebSocket

    Vérifiez que Home Assistant est accessible
    Vérifiez les logs pour des erreurs d'authentification
    Essayez de redémarrer l'add-on

Les conversations ne se sauvegardent pas

    Vérifiez que le LocalStorage est activé dans votre navigateur
    Vérifiez que vous êtes connecté avec le même utilisateur
    Videz le cache du navigateur et réessayez

Assistant ID non reconnu

    Vérifiez que votre assistant existe dans Home Assistant
    Allez dans Outils de développement → États
    Recherchez votre assistant conversationnel
    Copiez l'ID exact dans la configuration

📊 Compatibilité

    Home Assistant : 2023.1 ou supérieur
    Architectures : armhf, armv7, aarch64, amd64, i386
    Navigateurs : Chrome, Firefox, Safari, Edge (versions récentes)

🛠️ Développement
Structure du projet

jarvis-assistant/
├── config.json          # Configuration de l'add-on
├── Dockerfile          # Image Docker
├── run.sh             # Script de démarrage
├── nginx.conf         # Configuration nginx
├── README.md          # Ce fichier
├── CHANGELOG.md       # Historique des versions
└── www/               # Fichiers web
    └── index.html     # Interface principale

Contribuer

Les contributions sont les bienvenues ! N'hésitez pas à :

    Fork le projet
    Créer une branche (git checkout -b feature/amelioration)
    Commit vos changements (git commit -m 'Ajout fonctionnalité')
    Push vers la branche (git push origin feature/amelioration)
    Ouvrir une Pull Request

📝 Roadmap

    Support de l'upload de fichiers
    Thèmes personnalisables
    Export des conversations
    Support multilingue
    Commandes vocales
    Suggestions de commandes

📄 Licence

MIT License - Voir le fichier LICENSE pour plus de détails
🙏 Remerciements

    Home Assistant pour leur excellente plateforme
    La communauté pour leurs retours et contributions

📞 Support

    🐛 Issues GitHub
    💬 Forum Home Assistant
    📧 Email : votre-email@example.com

Note : Cet add-on nécessite un assistant conversationnel configuré dans Home Assistant. Consultez la documentation officielle pour plus d'informations.
