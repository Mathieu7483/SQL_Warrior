<p align="center"\>
<img src="https://github.com/Mathieu7483/SQL_Warrior/blob/main/SQL%20WARRIOR.png"\>
</p>


---

# 🗄️ SQL & Data Engineering Portfolio — Holberton School

## 📌 Présentation Générale

Ce dépôt regroupe l'ensemble des **projets et travaux pratiques SQL** réalisés durant ma formation en **Machine Learning & Software Engineering** à Holberton School.

L'objectif de cette série de projets était de maîtriser la conception, la modélisation, la sécurisation, l'optimisation et la programmation procédurale sur le SGBDR **MySQL 8.0**, à travers des cas d'usage métiers variés (mobilité urbaine, gestion d'assurance, commerce/culture et système d'information de laboratoire).

---

## 🚀 Récapitulatif des Projets

| Projet | Niveau / Thématique | Points Clés & Techniques | Score |
| :--- | :--- | :--- | :---: |
| **[TP Manga](https://github.com/Mathieu7483/SQL_Warrior/tree/main/TP_SQL_Manga)** | 📚 Amateur / Commerce | `DML`, `JOIN`, Agrégations, Grille tarifaire dynamique, `CASE WHEN` | **99.51%** |
| **[TP Vélos](https://github.com/Mathieu7483/SQL_Warrior/tree/main/TP_SQL_Velo)** | 🚲 Novice / Mobilité Urbaine | Modélisation ERD, Contraintes d'intégrité, Traçabilité, `TIMESTAMPDIFF` | **97.73%** |
| **[TP DVD](https://github.com/Mathieu7483/SQL_Warrior/tree/main/TP_SQL_DVD)** | 🎬 Amateur / Vidéoclub | Analyses croisées, Calcul de Chiffre d'Affaires, Filtres multi-tables | **91.12%** |
| **[TP Assurances](https://github.com/Mathieu7483/SQL_Warrior/tree/main/TP_SQL_Assurance)** | 🚚 Amateur / Flotte Automobile | Programmation procédurale (`UDF`, `STORED PROCEDURES`, `TRIGGERS`) | **75.89%** |
| **[TP Laboratoire](https://github.com/Mathieu7483/SQL_Warrior/tree/main/sql_laboratoire)** | 🧪 Master / LIMS EcoLab | Schéma complexe 15 tables, CTE (`WITH`), `LEFT JOIN`, Vues, `RANK() OVER` | **%** |

---

## 🛠️ Compétences Techniques Acquises

### 1. Modelisation & DDL (Data Definition Language)

* Conception et création de schémas relationnels normalisés sous **MySQL 8.0** (`utf8mb4`).
* Implémentation des contraintes d'intégrité référentielle (`PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`).
* Mise en place de contraintes de domaine complexes (`CHECK`, `DEFAULT`, `ON DELETE CASCADE`).

### 2. Requêtage Avancé & DML (Data Manipulation Language)

* **Jointures complexes** : Maîtrise de `INNER JOIN` et `LEFT JOIN` pour le traitement des données incomplètes ou avec `NULL`.
* **Agrégation & Statistiques** : Utilisation de `COUNT()`, `SUM()`, `AVG()`, `ROUND()`, `GROUP BY` et filtrage sur agrégats avec `HAVING`.
* **Calculs Temporels** : Extraction et comparaison de durées complexes via `TIMESTAMPDIFF()` et `DATE_ADD()`.

### 3. Programmation & Analytic SQL

* **Structures Modulaires** : Utilisation de sous-requêtes comparatives et de **CTE** (`WITH ... AS (...)`).
* **Transformations Dynamiques** : Utilisation des structures conditionnelles `CASE WHEN`.
* **SQL Procédural** : Écriture de fonctions personnalisées (`UDF`), procédures stockées et déclencheurs (`TRIGGERS`) de sécurité.
* **Analytique Avancée** : Utilisation des fonctions de fenêtrage (`Window Functions` telles que `RANK() OVER (...)`) et création de **Vues SQL** réutilisables.

---

## 📂 Architecture du Dépôt

```text
.
├── TP_SQL_Manga/
│   ├── TP_SQL_Manga_DDL.sql
│   ├── TP_SQL_Manga_dump_data.sql
│   └── solutions.sql
├── TP_SQL_Velo/
│   ├── TP_SQL_Velo_DDL.sql
│   ├── TP_SQL_Velo_dump_data.sql
│   └── solutions.sql
├── TP_SQL_DVD/
│   ├── TP_SQL_DVD_DDL.sql
│   ├── TP_SQL_DVD_dump_data.sql
│   └── solutions.sql
├── TP_SQL_Assurance/
│   ├── TP_SQL_Assurance_DDL.sql
│   ├── TP_SQL_Assurance_dump_data.sql
│   └── solutions.sql
├── TP_SQL_Laboratoire/
│   ├── TP_SQL_Laboratoire_DDL.sql
│   ├── TP_SQL_Laboratoire_dump_data.sql
│   └── solutions.sql
└── README.md

```

---

## 💻 Environnement de Travail & Outils

* **SGBD** : MySQL Server 8.0
* **Environnement** : Linux (Ubuntu 24.04 LTS / WSL), Docker, phpMyAdmin
* **Outils d'analyse** : MySQL CLI, DBeaver
* **Langages associés** : SQL (ANSI / Extended MySQL), Python (OOP)

---

## 👨‍💻 Auteur
  * **Mathieu** - *Programming student, specialization Machine Learning* - [👤 My Github profile](https://github.com/Mathieu7483)
