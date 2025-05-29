#!/bin/sh
# Script pour démarrer le frontend et le backend en parallèle (compatible Windows et Unix)

# Détection de l'OS pour la commande npm
NPM_CMD="npm"
if command -v npm.cmd >/dev/null 2>&1; then
  NPM_CMD="npm.cmd"
fi

# Démarrage du backend (TypeScript)
cd backend
$NPM_CMD run dev &
BACKEND_PID=$!
cd ..

# Attente de l'arrêt
wait $BACKEND_PID
