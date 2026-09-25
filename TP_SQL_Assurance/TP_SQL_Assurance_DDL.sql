DROP DATABASE IF EXISTS assurance_flotte;

CREATE DATABASE assurance_flotte
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE assurance_flotte;

CREATE TABLE types_vehicules (
    id VARCHAR(5) PRIMARY KEY,
    libelle VARCHAR(50) NOT NULL UNIQUE,
    nbplaces INT NOT NULL,
    CONSTRAINT chk_nbplaces
        CHECK (nbplaces BETWEEN 2 AND 7)
);

CREATE TABLE vehicules (
    id INT PRIMARY KEY,
    modele VARCHAR(100) NOT NULL,
    couleur VARCHAR(50),
    immat VARCHAR(9) NOT NULL UNIQUE,
    type_voiture VARCHAR(5) NOT NULL,

    CONSTRAINT fk_vehicule_type
        FOREIGN KEY (type_voiture)
        REFERENCES types_vehicules(id)
);

CREATE TABLE assureurs (
    id VARCHAR(2) PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    adresse VARCHAR(100) NOT NULL,
    telephone VARCHAR(10) NOT NULL
);

CREATE TABLE contrats (
    id INT PRIMARY KEY,
    date_effet DATETIME NOT NULL,
    duree INT NOT NULL,
    assureur VARCHAR(2) NOT NULL,
    vehicule INT NOT NULL,

    CONSTRAINT chk_duree
        CHECK (duree > 0),

    CONSTRAINT fk_contrat_assureur
        FOREIGN KEY (assureur)
        REFERENCES assureurs(id),

    CONSTRAINT fk_contrat_vehicule
        FOREIGN KEY (vehicule)
        REFERENCES vehicules(id)
);

CREATE TABLE employes (
    id INT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    num_permis VARCHAR(12) UNIQUE
);

CREATE TABLE deplacements (
    employe INT NOT NULL,
    vehicule INT NOT NULL,
    debut_dep DATETIME NOT NULL,
    fin_dep DATETIME NOT NULL,
    lieu VARCHAR(100) NOT NULL,

    PRIMARY KEY (employe, vehicule, debut_dep),

    CONSTRAINT fk_dep_employe
        FOREIGN KEY (employe)
        REFERENCES employes(id),

    CONSTRAINT fk_dep_vehicule
        FOREIGN KEY (vehicule)
        REFERENCES vehicules(id),

    CONSTRAINT chk_dates_dep
        CHECK (fin_dep > debut_dep)
);