DROP DATABASE IF EXISTS ecolab_analyse;
CREATE DATABASE ecolab_analyse
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE ecolab_analyse;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS analyse_equipement;
DROP TABLE IF EXISTS resultat_analyse;
DROP TABLE IF EXISTS analyse;
DROP TABLE IF EXISTS equipement;
DROP TABLE IF EXISTS methode_analyse;
DROP TABLE IF EXISTS parametre_analyse;
DROP TABLE IF EXISTS echantillon;
DROP TABLE IF EXISTS type_echantillon;
DROP TABLE IF EXISTS prelevement;
DROP TABLE IF EXISTS technicien_certification;
DROP TABLE IF EXISTS employe;
DROP TABLE IF EXISTS role_employe;
DROP TABLE IF EXISTS demande_analyse;
DROP TABLE IF EXISTS site;
DROP TABLE IF EXISTS client;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE client (
    id_client INTEGER PRIMARY KEY,
    nom VARCHAR(120) NOT NULL,
    secteur_activite VARCHAR(80) NOT NULL,
    email_contact VARCHAR(120) UNIQUE NOT NULL,
    telephone VARCHAR(20),
    ville VARCHAR(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE site (
    id_site INTEGER PRIMARY KEY,
    nom_site VARCHAR(120) NOT NULL,
    adresse VARCHAR(160) NOT NULL,
    ville VARCHAR(80) NOT NULL,
    type_site VARCHAR(80) NOT NULL,
    id_client INTEGER NOT NULL,
    CONSTRAINT fk_site_client
        FOREIGN KEY (id_client)
        REFERENCES client(id_client)
        ON DELETE CASCADE
);

CREATE TABLE demande_analyse (
    id_demande INTEGER PRIMARY KEY,
    date_demande DATE NOT NULL,
    statut VARCHAR(30) NOT NULL CHECK (statut IN ('nouvelle', 'en_cours', 'terminee', 'annulee')),
    priorite VARCHAR(20) NOT NULL CHECK (priorite IN ('basse', 'normale', 'haute', 'urgente')),
    objet_demande VARCHAR(180) NOT NULL,
    id_client INTEGER NOT NULL,
    CONSTRAINT fk_demande_client
        FOREIGN KEY (id_client)
        REFERENCES client(id_client)
        ON DELETE CASCADE
);

CREATE TABLE role_employe (
    id_role INTEGER PRIMARY KEY,
    libelle_role VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE employe (
    id_employe INTEGER PRIMARY KEY,
    nom VARCHAR(80) NOT NULL,
    prenom VARCHAR(80) NOT NULL,
    email VARCHAR(120) UNIQUE NOT NULL,
    date_embauche DATE NOT NULL,
    id_role INTEGER NOT NULL,
    CONSTRAINT fk_employe_role
        FOREIGN KEY (id_role)
        REFERENCES role_employe(id_role)
);

CREATE TABLE technicien_certification (
    id_employe INTEGER PRIMARY KEY,
    numero_certification VARCHAR(80) UNIQUE NOT NULL,
    date_expiration DATE NOT NULL,
    CONSTRAINT fk_certification_employe
        FOREIGN KEY (id_employe)
        REFERENCES employe(id_employe)
        ON DELETE CASCADE
);

CREATE TABLE prelevement (
    id_prelevement INTEGER PRIMARY KEY,
    date_prelevement TIMESTAMP NOT NULL,
    conditions_meteo VARCHAR(120),
    commentaire TEXT,
    id_site INTEGER NOT NULL,
    id_technicien INTEGER NOT NULL,
    id_demande INTEGER NOT NULL,
    CONSTRAINT fk_prelevement_site
        FOREIGN KEY (id_site)
        REFERENCES site(id_site),
    CONSTRAINT fk_prelevement_technicien
        FOREIGN KEY (id_technicien)
        REFERENCES employe(id_employe),
    CONSTRAINT fk_prelevement_demande
        FOREIGN KEY (id_demande)
        REFERENCES demande_analyse(id_demande)
);

CREATE TABLE type_echantillon (
    id_type_echantillon INTEGER PRIMARY KEY,
    libelle_type VARCHAR(80) UNIQUE NOT NULL,
    description TEXT
);

CREATE TABLE echantillon (
    id_echantillon INTEGER PRIMARY KEY,
    code_echantillon VARCHAR(40) UNIQUE NOT NULL,
    date_reception TIMESTAMP NOT NULL,
    temperature_reception NUMERIC(4,1) NOT NULL,
    statut VARCHAR(30) NOT NULL CHECK (statut IN ('recu', 'analyse', 'termine', 'archive')),
    id_prelevement INTEGER NOT NULL,
    id_type_echantillon INTEGER NOT NULL,
    CONSTRAINT fk_echantillon_prelevement
        FOREIGN KEY (id_prelevement)
        REFERENCES prelevement(id_prelevement)
        ON DELETE CASCADE,
    CONSTRAINT fk_echantillon_type
        FOREIGN KEY (id_type_echantillon)
        REFERENCES type_echantillon(id_type_echantillon)
);

CREATE TABLE parametre_analyse (
    id_parametre INTEGER PRIMARY KEY,
    nom_parametre VARCHAR(80) UNIQUE NOT NULL,
    unite VARCHAR(40) NOT NULL,
    seuil_reglementaire NUMERIC(10,2) NOT NULL
);

CREATE TABLE methode_analyse (
    id_methode INTEGER PRIMARY KEY,
    nom_methode VARCHAR(120) NOT NULL,
    norme_reference VARCHAR(80) NOT NULL,
    duree_estimee_minutes INTEGER NOT NULL CHECK (duree_estimee_minutes > 0),
    id_parametre INTEGER NOT NULL,
    CONSTRAINT fk_methode_parametre
        FOREIGN KEY (id_parametre)
        REFERENCES parametre_analyse(id_parametre)
);

CREATE TABLE equipement (
    id_equipement INTEGER PRIMARY KEY,
    nom_equipement VARCHAR(120) NOT NULL,
    type_equipement VARCHAR(80) NOT NULL,
    date_mise_service DATE NOT NULL,
    statut VARCHAR(30) NOT NULL CHECK (statut IN ('actif', 'maintenance', 'hors_service'))
);

CREATE TABLE analyse (
    id_analyse INTEGER PRIMARY KEY,
    date_debut TIMESTAMP NOT NULL,
    date_fin TIMESTAMP,
    statut VARCHAR(30) NOT NULL CHECK (statut IN ('planifiee', 'en_cours', 'terminee', 'annulee')),
    id_echantillon INTEGER NOT NULL,
    id_methode INTEGER NOT NULL,
    id_analyste INTEGER NOT NULL,
    CONSTRAINT fk_analyse_echantillon
        FOREIGN KEY (id_echantillon)
        REFERENCES echantillon(id_echantillon)
        ON DELETE CASCADE,
    CONSTRAINT fk_analyse_methode
        FOREIGN KEY (id_methode)
        REFERENCES methode_analyse(id_methode),
    CONSTRAINT fk_analyse_analyste
        FOREIGN KEY (id_analyste)
        REFERENCES employe(id_employe),
    CONSTRAINT chk_dates_analyse
        CHECK (date_fin IS NULL OR date_fin >= date_debut)
);

CREATE TABLE resultat_analyse (
    id_resultat INTEGER PRIMARY KEY,
    valeur_mesuree NUMERIC(10,2) NOT NULL,
    conforme TINYINT(1) NOT NULL,
    commentaire_resultat TEXT,
    id_analyse INTEGER NOT NULL,
    CONSTRAINT fk_resultat_analyse
        FOREIGN KEY (id_analyse)
        REFERENCES analyse(id_analyse)
        ON DELETE CASCADE
);

CREATE TABLE analyse_equipement (
    id_analyse INTEGER NOT NULL,
    id_equipement INTEGER NOT NULL,
    PRIMARY KEY (id_analyse, id_equipement),
    CONSTRAINT fk_ae_analyse
        FOREIGN KEY (id_analyse)
        REFERENCES analyse(id_analyse)
        ON DELETE CASCADE,
    CONSTRAINT fk_ae_equipement
        FOREIGN KEY (id_equipement)
        REFERENCES equipement(id_equipement)
);