# TODO List – Implémentation dynamique de l’application

## Général
- [ ] S’assurer que les appels API sont protégés par authentification (token JWT).
- [ ] Gérer les erreurs d’API et afficher des messages utilisateurs appropriés.

## Authentification
- [X] Authentification utilisateur (login/logout) avec gestion de session.
- [X] Redirection automatique si non authentifié.

## Dashboard
- [x] Affichage dynamique des cours récents (avec date de dernier accès).
- [x] Limiter à 3 cours récents.
- [ ] Affichage dynamique des événements à venir, devoirs, messages, etc.

## Mes cours (/courses)
- [x] Liste dynamique de tous les cours de l’utilisateur.
- [x] Ne pas afficher le champ "Dernier accès" ici.
- [ ] Pouvoir trier par nom, dernier accès avec un bouton
- [ ] Affichage avec des cartes ou une liste.
- [ ] Accès à la fiche détaillée d’un cours.

## Détail d’un cours
- [ ] Charger dynamiquement toutes les informations du cours (description, compétences, contenus, etc.).
- [ ] Afficher les catégories et contenus associés.

## Panel Admin
- [x] Gestion Utilisateur : affichage dynamique de tous les utilisateurs.
- [ ] Ajout, modification, suppression d’un utilisateur (modals dynamiques).
- [ ] Gestion UE : affichage dynamique de toutes les UE/cours.
- [ ] Ajout, modification, suppression d’une UE (modals dynamiques).
- [ ] Gestion des inscriptions : afficher et modifier les étudiants/enseignants inscrits à chaque UE.
- [ ] En gros tout dans le panel admin

## Profil utilisateur
- [X] Affichage dynamique des informations du profil.
- [ ] Modification du profil (infos personnelles, photo, etc.).
- [X] Affichage des cours inscrits
- [ ] Affichage de l’activité récente.
- [ ] Affichage des notes (moyenne) sur les cours suivis.

## Notifications
- [ ] Affichage dynamique des notifications.
- [ ] Marquer comme lue, suppression, etc.

## Divers
- [ ] S’assurer que toutes les images (profil, cours) sont bien chargées dynamiquement.
- [ ] Internationalisation (français/anglais) si besoin.
- [ ] Responsive design et accessibilité.