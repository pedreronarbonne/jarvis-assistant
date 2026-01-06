Changelog

Toutes les modifications notables de ce projet seront documentées dans ce fichier.

Le format est basé sur Keep a Changelog, et ce projet adhère au Semantic Versioning.
1.0.0 - 2025-01-06
Ajouté

    Interface de chat conversationnel initiale
    Support de conversations multiples par utilisateur
    Authentification automatique via Ingress
    Historique des conversations sauvegardé en LocalStorage
    Support du contexte conversationnel (4 derniers messages)
    Génération automatique des titres de conversation
    Interface responsive (mobile et desktop)
    Indicateur de statut de connexion
    Animation de chargement pendant le traitement
    Suppression de conversations
    Navigation entre conversations
    Auto-resize du champ de saisie
    Support de la touche Entrée pour envoyer (Shift+Entrée pour nouvelle ligne)

Technique

    Serveur web nginx
    Communication WebSocket avec Home Assistant
    Configuration via config.json
    Support multi-architecture (armhf, armv7, aarch64, amd64, i386)
    Proxy API Home Assistant via nginx
    Gestion d'état côté client

Documentation

    README complet avec instructions d'installation
    Guide de configuration
    Section dépannage
    Exemples d'utilisation

[Non publié]
À venir dans v1.1.0

    Support de l'upload de fichiers
    Thèmes personnalisables (clair/sombre)
    Export des conversations en JSON/TXT
    Suggestions de commandes fréquentes
    Amélioration de la gestion des erreurs

À venir dans v1.2.0

    Support multilingue (EN, FR, ES, DE)
    Commandes vocales (Speech-to-Text)
    Réponses vocales (Text-to-Speech)
    Historique de recherche dans les conversations

