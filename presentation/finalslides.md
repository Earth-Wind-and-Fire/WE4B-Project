<style>
p {
  text-align: justify;
}
img {
  display: block;
  margin-left: auto;
  margin-right: auto;
  max-width: 100%;
}
h1, h2, h3, h4, h5, h6 {
  text-align: center;
  margin-top: 2em;
  margin-bottom: 1em;
  text-align: initial;
}
ul, ol {
  margin-left: 2em;
  margin-top: 0.2em;   
  margin-bottom: 0.2em;
  padding-top: 0;
  padding-bottom: 0;
}
li {
  margin-top: 0.1em;
  margin-bottom: 0.1em;
  padding-top: 0;
  padding-bottom: 0;
}
table {
  margin-left: auto;
  margin-right: auto;
}
@page {
  @bottom-center {
    content: counter(page);
  }
}
pre, code {
  max-width: 100% !important;
  width: 100% !important;
  display: block;
  box-sizing: border-box;
  font-size: 0.5em;
  line-height: 1.5;
}
</style>

<!-- -------------------------INTRO------------------------------ -->
<section data-background-image="https://chaelpixserver.ddns.net/filetransfer/data/sy43/moodle.png" style="width: 80%;">
    <br><br><br><br><br><br><br>
    <h4 style="color: black;"> Soutenance WE4B-SI40 - 30 Juin 2025 </h4>
    <p style="font-size: 0.7em; color: black;"> <i>Perrin Antoine, Arnaud Michel, Laurant Antoine </i></p>
</section>

//S

<h5>Introduction</h5>

//VS

<aside class="notes">
   On peut faire des notes (accessible avec la touche "s")
</aside>

//S

<h5> Architecture </h5>
//VS
<table>
    <tr>
        <td><h6>Menu</h6><img src="img/slide/front.png" alt="architecture1" style="max-width: 100%;"></td>
        <td><h6>AR</h6><img src="img/slide/back.png" alt="architecture2" style="max-width: 100%;"></td>
    </tr>
    <tr>
        <td><h6>BDD</h6><img src="img/slide/uml_bdd.png" alt="architecture4" style="max-width: 100%;"></td>
    </tr>
</table>

//S

<h5>Différentes Pages</h5>


//VS


//VS

<h6> Arborescence </h6>

```plaintext[1:1,2-4 | 6, 13 | 6-12 | 13 | 16-20 | 21-28, 31, 33, 35-36 | 36-47 | 48-57]
WE4B-Project
├── start-back.sh
├── start-front.sh
├── install-all.sh
├── README.md
├── backend
│   └── src
│       ├── controllers
│       ├── _devscripts
│       ├── models
│       ├── routes
│       └── services
└── frontend
    └── src
        └───app
            ├───core
            │   ├───guards
            │   ├───models
            │   ├───services
            │   └───utils
            ├───features
            │   ├───dashboard
            │   ├───forums
            │   ├───grades
            │   ├───notifications
            │   ├───others
            │   ├───page-not-found
            │   ├───admin
            │   │   └───components
            │   │       └───modals
            │   ├───profile
            │   │   └───change-password-modal
            │   ├───auth
            │   │   └───login
            │   ├───calendar
            │   ├───courses
            │   │   ├───course-detail
            │   │   │   ├───components
            │   │   │   │   ├───assignment
            │   │   │   │   ├───category
            │   │   │   │   ├───content
            │   │   │   │   ├───forum
            │   │   │   │   ├───pdf-viewer
            │   │   │   │   └───post
            │   │   │   └───modals
            │   │   ├───course-element
            │   │   └───course-list
            ├───layouts
            │   └───header
            └───shared
                └───components
                    ├───calendar
                    ├───confirmation-dialog
                    ├───edit-category-title-modal
                    ├───edit-content-modal
                    ├───file-upload
                    └───gridfs-file-upload
```


//S

<h5> Backend : Serveur, API & BDD </h5>

<aside class="notes">
    MongoDB Atlas en ligne
</aside>


//VS

 <h5> API REST & Base de données </h5> <!-- (Critère : Intégration BDD) -->
- API RESTful (PHP) pour toutes les interactions client-serveur.

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>API Routes</title>
    <style>
        .container {
            display: flex;
            height: 400px;
            font-size: 0.3em;
            gap: 20px;
        }
        .api-table {
            height: 400px;
            border-collapse: collapse;
            border: 2px solid rgb(140, 140, 140);
            letter-spacing: 0.5px;
            flex: 1;
        }
        .api-table thead {
            background-color: rgb(228, 240, 245);
        }
        .api-table th {
            text-align: center;
            border: 1px solid black;
            padding: 8px 10px;
        }
        .api-table tbody tr {
            border: 1px solid rgb(160, 160, 160);
        }
        .api-table tbody tr:nth-child(odd) {
            background-color: rgb(245, 245, 245);
        }
        .api-table tbody tr:nth-child(even) {
            background-color: rgb(228, 240, 245);
        }
        .api-table td {
            border: 1px solid rgb(160, 160, 160);
            padding: 8px 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <table class="api-table" style="height: 400px;">
            <thead>
                <tr>
                    <th scope="col">Route</th>
                    <th scope="col">Méthode HTTP</th>
                    <th scope="col">Description rapide</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>add_skin.php</td>
                    <td>POST</td>
                    <td>Ajout d'un skin (upload + BDD, protégé par mot de passe)</td>
                </tr>
                <tr>
                    <td>buy_skin.php</td>
                    <td>GET</td>
                    <td>Achat d'un skin par un utilisateur</td>
                </tr>
                <tr>
                    <td>check_username.php</td>
                    <td>GET</td>
                    <td>Vérifie la disponibilité d'un nom d'utilisateur</td>
                </tr>
                <tr>
                    <td>delete_score.php</td>
                    <td>GET</td>
                    <td>Supprime un score pour un utilisateur</td>
                </tr>
                <tr>
                    <td>delete_user.php</td>
                    <td>POST</td>
                    <td>Supprime un utilisateur (et ses données)</td>
                </tr>
                <tr>
                    <td>get_all_skins.php</td>
                    <td>GET</td>
                    <td>Récupère la liste de tous les skins</td>
                </tr>
                <tr>
                    <td>get_all_users.php</td>
                    <td>GET</td>
                    <td>Récupère la liste de tous les utilisateurs</td>
                </tr>
                <tr>
                    <td>get_global_scores.php</td>
                    <td>GET</td>
                    <td>Récupère les scores globaux (classement)</td>
                </tr>
                <tr>
                    <td>get_player_rank.php</td>
                    <td>GET</td>
                    <td>Récupère le rang d'un joueur</td>
                </tr>
                <tr>
                    <td>get_total_user_count.php</td>
                    <td>GET</td>
                    <td>Nombre total d'utilisateurs</td>
                </tr>
                <tr>
                    <td>get_user_bestscore.php</td>
                    <td>GET</td>
                    <td>Meilleur score d'un utilisateur</td>
                </tr>
            </tbody>
        </table>
        <table class="api-table" style="height: 400px;">
            <thead>
                <tr>
                    <th scope="col">Route</th>
                    <th scope="col">Méthode HTTP</th>
                    <th scope="col">Description rapide</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>get_user_money.php</td>
                    <td>GET</td>
                    <td>Argent d'un utilisateur</td>
                </tr>
                <tr>
                    <td>get_user_role.php</td>
                    <td>GET</td>
                    <td>Rôle d'un utilisateur</td>
                </tr>
                <tr>
                    <td>get_user_scores.php</td>
                    <td>GET</td>
                    <td>Liste des scores d'un utilisateur</td>
                </tr>
                <tr>
                    <td>get_user_skins.php</td>
                    <td>GET</td>
                    <td>Liste des skins d'un utilisateur</td>
                </tr>
                <tr>
                    <td>list_skins.php</td>
                    <td>GET</td>
                    <td>Liste détaillée des skins (fonction avancée/admin)</td>
                </tr>
                <tr>
                    <td>login.php</td>
                    <td>GET</td>
                    <td>Vérifie l'existence d'un utilisateur (connexion)</td>
                </tr>
                <tr>
                    <td>register.php</td>
                    <td>GET</td>
                    <td>Inscription ou mise à jour du nom d'utilisateur</td>
                </tr>
                <tr>
                    <td>send_score.php</td>
                    <td>GET</td>
                    <td>Ajoute un score et met à jour l'argent</td>
                </tr>
                <tr>
                    <td>send_user_skin.php</td>
                    <td>GET</td>
                    <td>Ajoute un skin à un utilisateur</td>
                </tr>
                <tr>
                    <td>update_money.php</td>
                    <td>GET</td>
                    <td>Modifie l'argent d'un utilisateur</td>
                </tr>
                <tr>
                    <td>update_server.php</td>
                    <td>POST</td>
                    <td>Met à jour le serveur (protégé par mot de passe)</td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>


//VS

```php [1:, 2-3 | 6-16 | 18-30 | 34-39 | 42-45 | 47-50 | 52-56 | 58-74]
<?php
// Connexion à la base de données
require 'DB.php'; // nous donne l'objet $mysqli pour la connexion


// Fonction pour calculer l'argent gagné en fonction des niveaux passés
function calculate_money($levels_passed, $base = 1, $scale = 1.5, $offset = 1) {
  $total_money = 0;
    for ($level = 1; $level <= $levels_passed; $level++) {
        // Calcule l'argent gagné pour ce niveau, avec une formule logarithmique
        $money_for_level = (int) floor($base + log($level + $offset, $scale));
        $total_money += $money_for_level;
    }

    return $total_money;
}
/*
Exemple :

Level 1: Money = 2
Level 2: Money = 3
Level 3: Money = 4
Level 4: Money = 4
Level 5: Money = 5
Level 6: Money = 5
Level 7: Money = 6
Level 8: Money = 6
Level 9: Money = 6
Level 10: Money = 6
Total money for 10 levels: 47

*/

// Récupération des paramètres de la requête
$uuid = $_GET['user_id'] ?? $_GET['uuid'] ?? '';
$score = intval($_GET['score'] ?? 0);
$arrows_thrown = intval($_GET['arrows_thrown'] ?? 0);
$planets_hit = intval($_GET['planets_hit'] ?? 0);
$levels_passed = intval($_GET['levels_passed'] ?? 0);


// Insert score into database
$q = $mysqli->prepare("INSERT INTO score (uuid, score, arrows_thrown, planets_hit, levels_passed) VALUES (?, ?, ?, ?, ?)");
$q->bind_param("siiii", $uuid, $score, $arrows_thrown, $planets_hit, $levels_passed);
$q->execute();

// Update bestscore if necessary
$update = $mysqli->prepare("UPDATE user SET bestscore = ? WHERE uuid = ? AND bestscore < ?");
$update->bind_param("isi", $score, $uuid, $score);
$update->execute();

// Update money thanks to levels_passed
$money = calculate_money($levels_passed);
$updateMoney = $mysqli->prepare("UPDATE user SET money = money + ? WHERE uuid = ?");
$updateMoney->bind_param("is", $money, $uuid);
$updateMoney->execute();

header('Content-Type: application/json');
if ($q->affected_rows > 0 && $update->affected_rows > 0 && $updateMoney->affected_rows > 0)
{
  echo json_encode([
    "success" => true,
        "money" => $money,
        "message" => "SUCCESS"
    ]);
}
else
{
    echo json_encode([
        "success" => false,
        "money" => 0,
        "message" => "ERROR"
    ]);
}
?>

```

//VS