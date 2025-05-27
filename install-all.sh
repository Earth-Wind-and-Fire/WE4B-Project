#!/bin/sh
# Script d'installation des dépendances Node.js pour le frontend et le backend
set -e

# Détection de l'OS pour la commande npm
NPM_CMD="npm"
if command -v npm.cmd >/dev/null 2>&1; then
  NPM_CMD="npm.cmd"
fi

# Installation dans le frontend
cd frontend
$NPM_CMD install
cd ..

# Installation dans le backend
cd backend
$NPM_CMD install
cd ..
