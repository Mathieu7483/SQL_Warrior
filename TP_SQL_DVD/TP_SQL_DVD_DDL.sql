DROP DATABASE IF EXISTS dvd;
CREATE DATABASE dvd
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE dvd;

CREATE TABLE genres_film (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code_genre VARCHAR(5) NOT NULL UNIQUE,
    libelle_genre VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE realisateurs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code_realisateur VARCHAR(10) NOT NULL UNIQUE,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    pays VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code_client VARCHAR(10) NOT NULL UNIQUE,
    civilite VARCHAR(10) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    nom VARCHAR(50) NOT NULL,
    adresse VARCHAR(100) NOT NULL,
    code_postal VARCHAR(10) NOT NULL,
    ville VARCHAR(50) NOT NULL,
    telephone VARCHAR(20),
    date_naissance DATE NOT NULL,
    abonne BOOLEAN NOT NULL DEFAULT 0
) ENGINE=InnoDB;

CREATE TABLE dvd (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(120) NOT NULL,
    annee_sortie INT NOT NULL,
    duree_minutes INT NOT NULL,
    genre_id INT NOT NULL,
    realisateur_id INT NOT NULL,
    CONSTRAINT fk_dvd_genre
        FOREIGN KEY (genre_id)
        REFERENCES genres_film(id),
    CONSTRAINT fk_dvd_realisateur
        FOREIGN KEY (realisateur_id)
        REFERENCES realisateurs(id)
) ENGINE=InnoDB;

CREATE TABLE types_location (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code_type VARCHAR(10) NOT NULL UNIQUE,
    libelle_type VARCHAR(50) NOT NULL,
    tarif DECIMAL(5,2) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE factures (
    id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT NOT NULL,
    date_facture DATE NOT NULL,
    CONSTRAINT fk_facture_client
        FOREIGN KEY (client_id)
        REFERENCES clients(id)
) ENGINE=InnoDB;

CREATE TABLE locations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    facture_id INT NOT NULL,
    dvd_id INT NOT NULL,
    type_location_id INT NOT NULL,
    date_retour_prevue DATE NOT NULL,
    date_retour_effective DATE,
    CONSTRAINT fk_location_facture
        FOREIGN KEY (facture_id)
        REFERENCES factures(id),
    CONSTRAINT fk_location_dvd
        FOREIGN KEY (dvd_id)
        REFERENCES dvd(id),
    CONSTRAINT fk_location_type
        FOREIGN KEY (type_location_id)
        REFERENCES types_location(id)
) ENGINE=InnoDB;