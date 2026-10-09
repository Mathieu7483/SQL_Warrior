<p align="center"\>
<img src="https://github.com/Mathieu7483/SQL_Warrior/blob/main/TP_SQL_Manga/table%20SQL_Warrior.png"\>
</p>

---

# 📚 TP SQL — Système de Gestion de Location de Mangas

## 📌 Présentation du Projet

Ce projet s'inscrit dans le cursus de **Machine Learning & Software Engineering** à Holberton School. L'objectif est de créer, structurer et exploiter la base de données relationnelle `tp_manga` destinée à la gestion d'une boutique spécialisée dans la location de mangas.

Le projet couvre un éventail complet de fonctionnalités métiers : consultation du catalogue, suivi des profils clients et de leurs habitudes d'emprunt, gestion des catégories/mangakas, grille tarifaire selon les coefficients de location, calcul du chiffre d'affaires (CA) et exécution de requêtes d'action (`INSERT`, `UPDATE`, `DELETE`).

---

## 🎯 Objectifs Pédagogiques

* **Requêtage & Filtrage** : Utilisation des clauses `SELECT`, `WHERE`, `LIKE`, `IN`, `BETWEEN` et `ORDER BY`.
* **Calculs & Statistiques Métier** : Exploitation des fonctions d'agrégation (`COUNT()`, `SUM()`, `AVG()`, `MAX()`) combinées à `ROUND(..., 2)`.
* **Jointures Multi-tables** : Interconnexion de tables relationnelles (`INNER JOIN`, `LEFT JOIN`) en utilisant des alias courts et lisibles.
* **Analyses Croisées** : Implémentation de conditions dynamiques au sein des requêtes via `CASE WHEN`.
* **Requêtes d'Action (DML)** : Modification et maintenance sécurisée des données (`INSERT`, `UPDATE`, `DELETE` après vérification `SELECT`).

---

## 🏗️ Structure de la Base de Données (`tp_manga`)

La base de données repose sur **7 tables interconnectées** avec contraintes de clés primaires et étrangères :

1. **`clients`** : Informations personnelles, coordonnées, localisation et nombre d'enfants à charge.
2. **`mangakas`** : Auteurs de mangas (nom, prénom, année de naissance, pays d'origine).
3. **`genres_manga`** : Classification éditoriale et thématique (Shōnen, Shōjo, Seinen, Fantasy, etc.).
4. **`mangas`** : Catalogue d'ouvrages avec prix de base, durée de lecture estimée, année de parution et clés étrangères liées.
5. **`types_location`** : Grille des formules de location (Standard, Longue, Nouveauté, Collector...) associées à un coefficient multiplicateur et une durée autorisée.
6. **`factures`** : Historique des transactions émises pour chaque client.
7. **`table_location`** : Table de liaison détaillée retraçant les emprunts (combinaison `num_facture` et `num_manga`, type de location et date de retour effective).

---

## 📂 Organisation du Dépôt

```text
.
├── TP_SQL_Manga_DDL.sql         # Script DDL (Création de la base de données et des 7 tables)
├── TP_SQL_Manga_dump_data.sql   # Script DML (Injection des jeux de données de test et vérifications)
├── solutions.sql                # Solutions des 20 exercices du TP
└── README.md                    # Documentation du projet

```

---

## 🚀 Déploiement et Exécution

### 1. Installation sous Linux / Ubuntu / WSL

```bash
# Installation du serveur MySQL
sudo apt update
sudo apt install mysql-server

# Vérification du service
mysql --version

```

### 2. Importation de la Base de Données

Exécutez les scripts dans l'ordre strict : **DDL** (structure) puis **DML** (données).

```bash
# 1. Création du schéma et des tables
mysql -u root -p < TP_SQL_Manga_DDL.sql

# 2. Ingestion des données de test
mysql -u root -p tp_manga < TP_SQL_Manga_dump_data.sql

```

### 3. Option Docker + phpMyAdmin

Un conteneur Docker peut être déployé pour piloter la base de données via une interface web :

```bash
docker run --name mysql-manga -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d mysql:8.0

```

---

## 📊 Synthèse des Compétences Traitées (20 Exercices)

* **Analyse du Catalogue** : Filtrage des mangas par genre, mangaka, année de parution ou durée de lecture.
* **Gestion des Tarifs & Chiffre d'Affaires** : Calcul des prix de location finaux par application du coefficient (`prix_base * coefficient`) et agrégation du CA total par facture ou par client.
* **Suivi des Emprunts & Comportements Clients** : Analyse de la répartition géographique des abonnés et identification des titres/genres les plus demandés.
* **Opérations d'Action** : Insertion de nouveaux volumes, mise à jour des grilles tarifaires et suppression contrôlée d'enregistrements.

---

## 🛠️ Stack Technique

* **SGBD** : MySQL 8.0 (Moteur `InnoDB`, Encodage `utf8mb4`)
* **Langage** : SQL (ANSI / Extended MySQL)
* **Environnement** : Linux (Ubuntu / WSL), Docker, phpMyAdmin

---

## 👨‍💻 Auteur
  * **Mathieu** - *Programming student, specialization Machine Learning* - [👤 My Github profile](https://github.com/Mathieu7483)