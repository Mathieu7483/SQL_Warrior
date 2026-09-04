CREATE DATABASE location_velos;
USE location_velos;

CREATE TABLE utilisateurs (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom_complet VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    telephone VARCHAR(30),
    mot_de_passe VARCHAR(255) NOT NULL,
    date_creation DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE stations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    adresse VARCHAR(255),
    latitude DECIMAL(10,7),
    longitude DECIMAL(10,7),
    capacite INT NOT NULL CHECK (capacite > 0)
);

CREATE TABLE velos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(50) NOT NULL UNIQUE,
    type_velo ENUM('classique', 'electrique') DEFAULT 'classique',
    statut ENUM('disponible', 'loue', 'maintenance', 'perdu') DEFAULT 'disponible',
    station_actuelle_id INT,

    FOREIGN KEY (station_actuelle_id)
    REFERENCES stations(id)
);

CREATE TABLE locations (
    id INT PRIMARY KEY AUTO_INCREMENT,

    utilisateur_id INT NOT NULL,
    velo_id INT NOT NULL,

    station_depart_id INT NOT NULL,
    station_retour_id INT,

    date_debut DATETIME NOT NULL,
    date_fin DATETIME,

    statut ENUM('active', 'terminee', 'annulee') DEFAULT 'active',

    FOREIGN KEY (utilisateur_id)
    REFERENCES utilisateurs(id)
    ON DELETE CASCADE,

    FOREIGN KEY (velo_id)
    REFERENCES velos(id),

    FOREIGN KEY (station_depart_id)
    REFERENCES stations(id),

    FOREIGN KEY (station_retour_id)
    REFERENCES stations(id)
);

CREATE TABLE paiements (
    id INT PRIMARY KEY AUTO_INCREMENT,

    location_id INT NOT NULL,

    montant DECIMAL(10,2) NOT NULL,

    methode_paiement ENUM('carte', 'portefeuille', 'especes')
    DEFAULT 'carte',

    statut_paiement ENUM('en_attente', 'paye', 'echec', 'rembourse')
    DEFAULT 'en_attente',

    date_paiement DATETIME,

    FOREIGN KEY (location_id)
    REFERENCES locations(id)
);

CREATE TABLE abonnements (
    id INT PRIMARY KEY AUTO_INCREMENT,

    utilisateur_id INT NOT NULL,

    nom_forfait VARCHAR(100) NOT NULL,

    prix DECIMAL(10,2) NOT NULL,

    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,

    statut ENUM('actif', 'expire', 'annule')
    DEFAULT 'actif',

    FOREIGN KEY (utilisateur_id)
    REFERENCES utilisateurs(id)
);

CREATE TABLE rapports_maintenance (
    id INT PRIMARY KEY AUTO_INCREMENT,

    velo_id INT NOT NULL,
    signale_par INT,

    description TEXT NOT NULL,

    statut ENUM('ouvert', 'en_cours', 'resolu')
    DEFAULT 'ouvert',

    date_creation DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (velo_id)
    REFERENCES velos(id),

    FOREIGN KEY (signale_par)
    REFERENCES utilisateurs(id)
);