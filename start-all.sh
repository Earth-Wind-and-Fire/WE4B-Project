#!/bin/sh
# Script pour démarrer le frontend et le backend en parallèle

# Détection de l'OS pour la commande npm
NPM_CMD="npm"
if command -v npm.cmd >/dev/null 2>&1; then
  NPM_CMD="npm.cmd"
fi

# Démarrage du backend
cd backend
$NPM_CMD start &
BACKEND_PID=$!
cd ..

# Démarrage du frontend
cd frontend
$NPM_CMD start &
FRONTEND_PID=$!
cd ..

# Attente de l'arrêt d'un des deux
wait $BACKEND_PID $FRONTEND_PID
