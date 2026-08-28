DROP DATABASE IF EXISTS tp_manga;

CREATE DATABASE IF NOT EXISTS tp_manga;

USE tp_manga;

DROP TABLE IF EXISTS table_location;
DROP TABLE IF EXISTS factures;
DROP TABLE IF EXISTS mangas;
DROP TABLE IF EXISTS genres_manga;
DROP TABLE IF EXISTS mangakas;
DROP TABLE IF EXISTS types_location;
DROP TABLE IF EXISTS clients;

CREATE TABLE clients (
    code_client INT PRIMARY KEY,
    titre VARCHAR(10) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    nom VARCHAR(50) NOT NULL,
    adresse_rue VARCHAR(100) NOT NULL,
    code_postal VARCHAR(10) NOT NULL,
    ville VARCHAR(50) NOT NULL,
    num_telephone VARCHAR(20) NOT NULL,
    date_naissance DATE NOT NULL,
    enfants INT NOT NULL DEFAULT 0
);

CREATE TABLE factures (
    num_facture INT PRIMARY KEY,
    code_client INT NOT NULL,
    date_facture DATE NOT NULL,
    FOREIGN KEY (code_client) REFERENCES clients(code_client)
);

CREATE TABLE types_location (
    code_type INT PRIMARY KEY,
    libelle VARCHAR(50) NOT NULL,
    coefficient DECIMAL(5,2) NOT NULL,
    nb_jours INT NOT NULL
);

CREATE TABLE mangakas (
    code_mangaka INT PRIMARY KEY,
    prenom VARCHAR(50) NOT NULL,
    nom VARCHAR(50) NOT NULL,
    annee_naissance INT NOT NULL,
    pays VARCHAR(50) NOT NULL
);

CREATE TABLE genres_manga (
    code_genre INT PRIMARY KEY,
    signification VARCHAR(50) NOT NULL
);

CREATE TABLE mangas (
    num_manga INT PRIMARY KEY,
    titre VARCHAR(100) NOT NULL,
    prix_base DECIMAL(5,2) NOT NULL,
    code_mangaka INT NOT NULL,
    code_genre INT NOT NULL,
    annee INT NOT NULL,
    descriptif TEXT,
    duree INT NOT NULL,
    FOREIGN KEY (code_mangaka) REFERENCES mangakas(code_mangaka),
    FOREIGN KEY (code_genre) REFERENCES genres_manga(code_genre)
);

CREATE TABLE table_location (
    num_facture INT NOT NULL,
    num_manga INT NOT NULL,
    code_type INT NOT NULL,
    date_retour DATE,
    PRIMARY KEY (num_facture, num_manga),
    FOREIGN KEY (num_facture) REFERENCES factures(num_facture),
    FOREIGN KEY (num_manga) REFERENCES mangas(num_manga),
    FOREIGN KEY (code_type) REFERENCES types_location(code_type)
);

-- Liste des tables créées
SELECT 'Tables créées :';
SHOW TABLES;

SELECT '✔️ Script exécuté avec succès';