<p align="center"\>
<img src="https://github.com/Mathieu7483/SQL_Warrior/blob/main/TP_SQL_DVD/Table%20DVD.png"\>
</p>

# 🎬 TP SQL — Gestion d'un Vidéoclub (Catalogue, Clients & Locations)

## 📌 Présentation du Projet

Ce projet s'inscrit dans le cursus de **Machine Learning & Software Engineering** à Holberton School. L'objectif est de modéliser, d'implémenter et d'exploiter la base de données relationnelle `dvd` d'un vidéoclub pour analyser son activité commerciale, suivre son catalogue de films et réaliser des requêtes analytiques sur les comportements de ses clients.

Le projet couvre une progression complète allant de la création de la structure relationnelle à la résolution d'exercices métiers complexes (statistiques par genre, chiffre d'affaires, analyses croisées et filtrages multi-tables).

---

## 🎯 Objectifs Pédagogiques

* **Lecture & Filtrage avancé** : Sélection de données (`SELECT`), filtrage conditionnel (`WHERE`, `LIKE`, `BETWEEN`, combinaisons logiques).
* **Tri & Agrégation** : Tri (`ORDER BY`), calculs statistiques (`COUNT`, `AVG`, `SUM`, `MAX`).
* **Regroupement & Filtrage d'agrégats** : Utilisation de `GROUP BY` et `HAVING`.
* **Jointures Multi-tables** : Manipulation de `INNER JOIN`, `LEFT JOIN` sur 3 à 5 tables simultanément.
* **Analyses Croisées & Métier** : Calcul de chiffre d'affaires (CA), recoupement géographique, analyse démographique et classement de performances (genres/réalisateurs les plus loués).

---

## 🏗️ Structure de la Base de Données (`dvd`)

La base de données repose sur **7 tables interconnectées** avec des clés étrangères et contraintes d'intégrité référentielle (`InnoDB`) :

1. **`genres_film`** : Catégories de films (Aventure, Comédie, SF, Drame, etc.).
2. **`realisateurs`** : Liste des réalisateurs et leur nationalité.
3. **`dvd`** : Catalogue des films (titre, année de sortie, durée, associations aux genres et réalisateurs).
4. **`clients`** : Profils des utilisateurs (civilité, coordonnées, département/ville, statut d'abonné).
5. **`types_location`** : Grille tarifaire des formules de location (Standard, Nouveauté, Promo, VIP, etc.).
6. **`factures`** : Historique des transactions émises pour chaque client.
7. **`locations`** : Traçabilité détaillée des emprunts de DVD (dates prévues et effectives de retour, type de location associé).

---

## 📂 Organisation du Dépôt

```text
.
├── TP_SQL_DVD_DDL.sql         # Script DDL (Création du schéma relationnel et des tables)
├── TP_SQL_DVD_dump_data.sql   # Script DML (Injection des données de test et vérification)
├── solutions.sql              # Solutions des 22 exercices d'analyse et de synthèse
└── README.md                  # Documentation du projet

```

---

## 🚀 Déploiement et Exécution

### 1. Installation sous Linux / Ubuntu / WSL

```bash
# Installation du serveur MySQL
sudo apt update
sudo apt install mysql-server

# Vérification de l'installation
mysql --version

```

### 2. Importation de la Base de Données

Exécutez les scripts dans l'ordre suivant : **DDL** (structure) puis **DML** (données).

```bash
# 1. Création de la base de données et des tables
mysql -u root -p < TP_SQL_DVD_DDL.sql

# 2. Ingestion des données de test
mysql -u root -p dvd < TP_SQL_DVD_dump_data.sql

```

### 3. Option Docker + phpMyAdmin

Un conteneur Docker peut être mis en place pour manipuler la base de données via phpMyAdmin :

```bash
docker run --name mysql-dvd -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d mysql:8.0

```

---

## 📊 Synthèse des Exercices Réalisés

| Categorie | Exercices | Concepts SQL Clés |
| --- | --- | --- |
| **Sélection & Filtres** | Ex. 1 à 6 | `SELECT`, `WHERE`, `LIKE 'A%'`, `BETWEEN`, `ORDER BY` |
| **Agrégations & Groupements** | Ex. 7 à 10 | `COUNT()`, `AVG()`, `GROUP BY` par pays, genre, civilité |
| **Jointures Multi-tables** | Ex. 11 à 16 | `JOIN` sur `dvd`, `realisateurs`, `genres_film`, `locations`, `clients` |
| **Analyses Croisées & CA** | Ex. 17 à 22 | Groupements multi-colonnes, calculs de chiffre d'affaires, requêtes financières |

---

## 🛠️ Stack Technique

* **SGBD** : MySQL 8.0 (Moteur `InnoDB`, Encodage `utf8mb4`)
* **Langage** : SQL (ANSI SQL)
* **Environnement** : Linux (Ubuntu 24.04 LTS / WSL), Docker, phpMyAdmin

---

## 👨‍💻 Auteur
  * **Mathieu** - *Programming student, specialization Machine Learning* - [👤 My Github profile](https://github.com/Mathieu7483)