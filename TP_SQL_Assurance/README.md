<p align="center"\>
<img src="https://github.com/Mathieu7483/SQL_Warrior/blob/main/TP_SQL_Assurance/TABLE%20Assurances.png"\>
</p>


# 🚚 TP SQL — Gestion de Flotte de Véhicules & Assurances

## 📌 Présentation du Projet

Ce projet s'inscrit dans le cursus de **Machine Learning & Software Engineering** à Holberton School. L'objectif est de concevoir, d'implémenter et de programmer une base de données relationnelle complète pour la gestion d'une flotte d'entreprise, incluant les véhicules, les contrats d'assurance, les employés et l'historique de leurs déplacements professionnels.

Outre les requêtes de consultation complexes (`JOIN`, `GROUP BY`, `HAVING`), ce projet aborde la **programmation procédurale SQL** avancée en créant des fonctions utilisateur (`UDF`), des procédures stockées (`STORED PROCEDURES`) et des déclencheurs de sécurité (`TRIGGERS`).

---

## 🎯 Objectifs Pédagogiques

* **Conception & Modélisation DDL** :
* Création du schéma relationnel sous MySQL 8.0 (`utf8mb4`).
* Définition des clés primaires simples et composées (`PRIMARY KEY`).
* Définition des contraintes d'intégrité référentielle (`FOREIGN KEY`).
* Implémentation des contraintes de domaine (`CHECK` sur durées, nombre de places et cohérence des dates).


* **Manipulation de Données (DML)** : Insertion structurée de données de test et vérification des contraintes.
* **Programmation SQL Avancée** :
* **UDF (User Defined Functions)** : Calculs automatisés réutilisables dans les requêtes.
* **Stored Procedures** : Encapsulation de traitements complexes (ex: affectation de véhicules, bilan de déplacements).
* **Triggers** : Contrôle dynamique de la cohérence des données lors d'opérations d'insertion ou de mise à jour (ex: interdiction du chevauchement de réservations).



---

## 🏗️ Structure de la Base de Données (`assurance_flotte`)

La base de données relationnelle est composée de **6 tables principales** :

1. **`types_vehicules`** : Typologie des véhicules (Citadine, SUV, Utilitaire...) et capacité d'accueil.
2. **`vehicules`** : Parc automobile (immatriculation, modèle, couleur, association au type).
3. **`assureurs`** : Compagnies d'assurance partenaires et coordonnées.
4. **`contrats`** : Suivi des couvertures d'assurance (date d'effet, durée en mois, véhicule assuré).
5. **`employes`** : Registre des collaborateurs habilités à conduire (permis de conduire).
6. **`deplacements`** : Historique des trajets effectués (clé primaire composée : `employe`, `vehicule`, `debut_dep`).

---

## 📂 Organisation du Dépôt

```text
.
├── TP_SQL_Assurance_DDL.sql         # Script DDL (Création du schéma, tables et contraintes)
├── TP_SQL_Assurance_dump_data.sql   # Script DML (Injection des jeux de données de test)
├── solutions.sql                    # Requêtes d'analyse, fonctions, procédures et triggers
└── README.md                        # Documentation du projet

```

---

## 🚀 Déploiement et Exécution

### 1. Installation sous Linux / Ubuntu / WSL

```bash
# Installation du serveur MySQL
sudo apt update
sudo apt install mysql-server

# Vérification du service
sudo mysql -e "SELECT VERSION();"

```

### 2. Importation de la Base de Données

Exécutez les scripts SQL dans l'ordre strict : **DDL** puis **DML**.

```bash
# 1. Création du schéma et des structures de tables
mysql -u root -p < TP_SQL_Assurance_DDL.sql

# 2. Ingestion des données de test
mysql -u root -p assurance_flotte < TP_SQL_Assurance_dump_data.sql

```

### 3. Option Docker + phpMyAdmin

Un conteneur Docker peut être utilisé pour exécuter MySQL 8.0 avec une interface d'administration graphique :

```bash
docker run --name mysql-assurance -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d mysql:8.0

```

---

## ⚙️ Exemples de Fonctionnalités Programmées

### 1. Contrôle par Trigger MySQL

Vérification automatique de la cohérence temporelle avant chaque insertion dans la table `deplacements` afin d'empêcher les dates de fin antérieures au début du trajet.

### 2. Procédures Stockées & Fonctions

* **Fonction SQL (`UDF`)** : Calcul de l'échéance exacte d'un contrat d'assurance à partir de sa date d'effet et de sa durée (`DATE_ADD`).
* **Procédure stockée** : Génération d'un rapport consolidé de l'utilisation d'un véhicule donné par un employé sur une période définie.

---

## 🛠️ Stack Technique

* **SGBD** : MySQL 8.0
* **Langage** : SQL (ANSI / MySQL procedural extensions)
* **Environnement** : Linux (Ubuntu 24.04 LTS / WSL), Docker, phpMyAdmin

---

## 👨‍💻 Auteur
  * **Mathieu** - *Programming student, specialization Machine Learning* - [👤 My Github profile](https://github.com/Mathieu7483)