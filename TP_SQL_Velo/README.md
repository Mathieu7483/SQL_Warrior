<p align="center"\>
<img src="https://github.com/Mathieu7483/SQL_Warrior/blob/main/TP_SQL_Velo/TABLE%20Velo.png"\>
</p>

# 🧠 TP SQL — Système de Location de Vélos (Mobilité Urbaine)

## 📌 Présentation du Projet

Ce projet s'inscrit dans le cursus de **Machine Learning / Software Engineering** à Holberton School. Il consiste en la conception, la mise en place et l'exploitation d'une base de données relationnelle pour une plateforme de **mobilité urbaine (location de vélos en libre-service)**.

L'objectif principal est de modéliser le domaine métier, d'implémenter le schéma relationnel avec toutes les contraintes d'intégrité, d'alimenter la base avec des jeux de données de test, puis d'exécuter des requêtes d'analyse métier avancées (jointures, agrégations, sous-requêtes, CTE).

---

## 🎯 Objectifs Pédagogiques

* **Conception & DDL** : Création de la base de données, définition des tables, types de données, clés primaires/étrangères et contraintes (`CHECK`, `UNIQUE`, `DEFAULT`, `ON DELETE CASCADE`).
* **Manipulation de Données (DML)** : Insertion et mise à jour structurée d'enregistrements de test.
* **Requêtage Avancé** :
* Utilisation des jointures (`INNER JOIN`, `LEFT JOIN`).
* Utilisation des fonctions d'agrégation (`COUNT`, `AVG`, `SUM`, `ROUND`, `TIMESTAMPDIFF`).
* Implémentation de requêtes complexes avec filtres sur durées, sous-requêtes et requêtes préparées avec CTE (`WITH`).


* **Analyse Métier** : Extraction d'indicateurs clés sur les locations, la maintenance, la gestion du parc et les paiements.

---

## 🏗️ Structure de la Base de Données (ERD)

La base de données `location_velos` s'articule autour de **7 tables principales** :

1. **`utilisateurs`** : Informations sur les clients inscrits.
2. **`stations`** : Géolocalisation et capacité d'accueil des stations.
3. **`velos`** : Flotte de vélos (classiques/électriques), statuts et affectations actuelles.
4. **`locations`** : Traçabilité des trajets (départ, retour, horodatages, statuts).
5. **`paiements`** : Historique financier lié aux locations (montants, méthodes, statuts).
6. **`abonnements`** : Forfaits souscrits par les usagers.
7. **`rapports_maintenance`** : Signalements et suivi de l'état technique du parc.

---

## 📂 Organisation du Dépôt

```text
.
├── TP_SQL_Velo_DDL.sql         # Script DDL (Création de la BDD et des tables)
├── TP_SQL_Velo_dump_data.sql   # Script DML (Insertion du jeu de données de test)
├── solutions.sql               # Ensemble des requêtes d'analyses et exercices (1 à 15)
└── README.md                   # Documentation du projet

```

---

## 🚀 Déploiement et Exécution

### Prérequis

* MySQL Server 8.0+ ou environnement Docker / phpMyAdmin.
* Client CLI MySQL ou interface d'administration GUI (phpMyAdmin, DBeaver).

### 1. Installation via CLI Linux / Ubuntu

```bash
# Mise à jour des paquets et installation de MySQL
sudo apt update
sudo apt install mysql-server

# Vérification de la version
mysql --version

```

### 2. Importation de la Base de Données

Exécutez les scripts dans l'ordre suivant : **DDL** (structure) puis **DML** (données).

```bash
# 1. Création du schéma et des tables
mysql -u root -p < TP_SQL_Velo_DDL.sql

# 2. Injection des données de test
mysql -u root -p location_velos < TP_SQL_Velo_dump_data.sql

```

### 3. Option Docker + phpMyAdmin

Pour lancer l'environnement via un conteneur Docker :

```bash
docker run --name mysql-velo -e MYSQL_ROOT_PASSWORD=root -d mysql:8.0

```

---

## 📊 Exemples de Notions Exploitées

### 1. Jointures Externes (`LEFT JOIN`)

Affichage de la totalité du parc ou des usagers, y compris lorsqu'il n'y a pas de correspondance directe (ex: clients sans location active, vélos sans historique de maintenance).

### 2. Calculs de Durées et Agrégations

Calcul précis des durées d'utilisation en minutes avec `TIMESTAMPDIFF(MINUTE, date_debut, date_fin)` combiné à `AVG()` et `ROUND()` pour mesurer la performance d'utilisation par station ou type de vélo.

### 3. Subqueries & Table Expressions (`CTE`)

Structure de requêtes complexes avec la clause `WITH` afin de découper les calculs en étapes lisibles et modulaires.

```sql
WITH echantillons_par_client AS (
    SELECT 
        c.id_client,
        c.nom_client,
        COUNT(e.id_echantillon) AS nombre_echantillons
    FROM client c
    LEFT JOIN echantillon e ON c.id_client = e.id_client
    GROUP BY c.id_client, c.nom_client
)
SELECT * FROM echantillons_par_client;

```

---

## 🛠️ Stack Technique

* **SGBD** : MySQL 8.0
* **Langage** : SQL (ANSI / MySQL dialect)
* **Environnement** : Linux (Ubuntu 24.04 LTS / WSL), Docker, phpMyAdmin

---

## 👨‍💻 Auteur
  * **Mathieu** - *Programming student, specialization Machine Learning* - [👤 My Github profile](https://github.com/Mathieu7483)