<p align="center"\>
<img src="https://github.com/Mathieu7483/SQL_Warrior/blob/main/sql_laboratoire/TABLES%20laboratoire%20analyse.png"\>
</p>
---

# 🧪 TP SQL — Système d'Information de Laboratoire (LIMS - EcoLab Analyse)

## 📌 Présentation du Projet

Ce projet s'inscrit dans le cursus de **Machine Learning & Software Engineering** à Holberton School. Il consiste en la modélisation, l'implémentation et l'exploitation de la base de données relationnelle d'un **LIMS (Laboratory Information Management System)** pour l'entreprise **EcoLab Analyse**, un laboratoire spécialisé dans les analyses environnementales (eau potable, eaux usées, air, sols et rejets industriels).

L'objectif est d'explorer un domaine métier complexe comprenant la gestion des clients, des sites de prélèvement, des habilitations et certifications des techniciens, du suivi de la température des échantillons, des méthodes analytiques normées (ISO/NF), des équipements de précision et des contrôles de conformité réglementaire.

---

## 🎯 Objectifs Pédagogiques

* **Modélisation & Intégrité Référentielle** : Exploitation d'un modèle relationnel métier étendu comprenant **15 tables interconnectées**.
* **Requêtage Avancé & Exclusions** :
* Utilisation des jointures multiples (`INNER JOIN`).
* Utilisation strategique de `LEFT JOIN` pour conserver l'exhaustivité des données (ex. échantillons sans résultat enregistré).


* **Agrégation & Regroupement Métier** : Calcul de statistiques (`COUNT()`, `AVG()`, `MIN()`, `MAX()`) combinées à `GROUP BY` et au filtrage sur agrégats (`HAVING`).
* **Programmation SQL & Abstraction** :
* **Sous-requêtes & CTE (`WITH`)** : Isolation et décomposition de calculs complexes (ex. comparaison par rapport à une durée moyenne).
* **Expressions Conditionnelles (`CASE WHEN`)** : Transformation de données brutes en statuts et indicateurs lisibles.
* **Vues SQL (`CREATE VIEW`)** : Création d'abstractions réutilisables pour la génération de rapports de conformité.
* **Fonctions de Fenêtrage (`Window Functions`)** : Classement séquentiel et analytique des données avec `RANK() OVER (...)`.



---

## 🏗️ Structure de la Base de Données (`ecolab_analyse`)

La base repose sur **15 tables relationnelles** configurées sous le moteur `InnoDB` avec encodage `utf8mb4` :

1. **`client`** : Collectivités, industries, bureaux d'études et organismes publics.
2. **`site`** : Localisations physiques et types de sites prélevés.
3. **`demande_analyse`** : Dossiers de demandes, suivi des priorités et statuts.
4. **`role_employe`** & **`employe`** : Registre du personnel et répartition des rôles.
5. **`technicien_certification`** : Habilitations officielles et suivi des dates d'expiration.
6. **`prelevement`** : Interventions terrain (horodatages, conditions météo, intervenants).
7. **`type_echantillon`** & **`echantillon`** : Traçabilité des matrices (eau potable, sols, air) et contrôle de la température de réception.
8. **`parametre_analyse`** : Définition des paramètres physico-chimiques/microbiologiques et leurs seuils réglementaires.
9. **`methode_analyse`** : Protocoles d'essais et normes de référence (ISO/NF).
10. **`equipement`** & **`analyse_equipement`** : Parc d'instruments (ICP-MS, chromatographes, pH-mètres) et matériels mobilisés.
11. **`analyse`** : Horodatage et suivi de l'exécution des analyses au laboratoire.
12. **`resultat_analyse`** : Mesures relevées, essais de confirmation et évaluation de conformité (`TINYINT(1)`).

---

## 📂 Organisation du Dépôt

```text
.
├── TP_SQL_Laboratoire_DDL.sql         # Script DDL (Création du schéma relationnel, tables et contraintes)
├── TP_SQL_Laboratoire_dump_data.sql   # Script DML (Injection du jeu de données de test)
├── solutions.sql                      # Réponses aux 20 exercices du projet (Requêtes, CTE, Vues, Window Functions)
└── README.md                          # Documentation du projet

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
# 1. Création de la base de données et des tables
mysql -u root -p < TP_SQL_Laboratoire_DDL.sql

# 2. Ingestion des données de test
mysql -u root -p ecolab_analyse < TP_SQL_Laboratoire_dump_data.sql

```

### 3. Option Docker + phpMyAdmin

Pour déployer un conteneur MySQL 8.0 prêt à l'emploi :

```bash
docker run --name mysql-ecolab -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d mysql:8.0

```

---

## 📊 Synthèse des Compétences Traitées (Exercices 1 à 20)

| Exercices | Thématiques Métier / Technique | Concepts SQL Exploités |
| --- | --- | --- |
| **Ex. 1 à 6** | Consultation & Filtres | `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`, `AVG()` |
| **Ex. 7 à 11** | Modélisation & Jointures | `JOIN`, `LEFT JOIN` (gestion des valeurs `NULL`), alias courts |
| **Ex. 12 à 15** | Agrégations & Durées | `GROUP BY`, `HAVING`, `TIMESTAMPDIFF(MINUTE, ...)` |
| **Ex. 16 & 17** | Structures Avancées | Sous-requêtes, `WITH ... AS (...)` (CTE) |
| **Ex. 18 à 20** | Métier & Analytic SQL | `CASE WHEN`, `CREATE VIEW`, `RANK() OVER (...)` |

---

## 🛠️ Stack Technique

* **SGBD** : MySQL 8.0 (Moteur `InnoDB`, Encodage `utf8mb4`)
* **Langage** : SQL (ANSI / Extended MySQL 8.0)
* **Environnement** : Linux (Ubuntu 24.04 LTS / WSL), Docker, phpMyAdmin

---

## 👨‍💻 Auteur
  * **Mathieu** - *Programming student, specialization Machine Learning* - [👤 My Github profile](https://github.com/Mathieu7483)