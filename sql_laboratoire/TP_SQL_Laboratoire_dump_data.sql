INSERT INTO client (id_client, nom, secteur_activite, email_contact, telephone, ville) VALUES
(1, 'Ville de Nantes', 'Collectivité', 'contact@nantes.fr', '0240000001', 'Nantes'),
(2, 'IndusChem Atlantique', 'Industrie chimique', 'qualite@induschem.fr', '0251000002', 'Saint-Nazaire'),
(3, 'Bureau Etudes Vertis', 'Bureau d''études', 'contact@vertis.fr', '0145000003', 'Paris'),
(4, 'EauPure Bretagne', 'Traitement de l''eau', 'contact@eaupure.fr', '0299000004', 'Rennes'),
(5, 'AgriSol Loire', 'Agriculture', 'contact@agrisol.fr', '0241000005', 'Angers'),
(6, 'Port Atlantique Services', 'Logistique portuaire', 'env@port-atlantique.fr', '0252000006', 'Saint-Nazaire'),
(7, 'Hôpital Saint-Luc', 'Santé', 'hygiene@stluc.fr', '0247000007', 'Tours'),
(8, 'Cimenterie Ouest', 'Industrie lourde', 'qse@ciment-ouest.fr', '0231000008', 'Caen'),
(9, 'Métropole Lyon', 'Collectivité', 'environnement@lyon.fr', '0472000009', 'Lyon'),
(10, 'AeroTech Sud', 'Aéronautique', 'hse@aerotech.fr', '0561000010', 'Toulouse'),
(11, 'VitiBio Gironde', 'Viticulture', 'contact@vitibio.fr', '0556000011', 'Bordeaux'),
(12, 'Université Littorale', 'Recherche publique', 'labo@ulittorale.fr', '0321000012', 'Dunkerque');

INSERT INTO site (id_site, nom_site, adresse, ville, type_site, id_client) VALUES
(1, 'Station Eau Nord', '12 rue des Sources', 'Nantes', 'station_traitement', 1),
(2, 'Usine Zone Portuaire', '4 quai industriel', 'Saint-Nazaire', 'site_industriel', 2),
(3, 'Parc Urbain Est', 'avenue des Platanes', 'Nantes', 'zone_urbaine', 1),
(4, 'Bassin Vilaine', '2 chemin des Rives', 'Rennes', 'milieu_naturel', 4),
(5, 'Exploitation Loire Sud', '8 route des Champs', 'Angers', 'site_agricole', 5),
(6, 'Terminal Vrac Liquide', '18 quai des Docks', 'Saint-Nazaire', 'zone_portuaire', 6),
(7, 'Bloc Technique Hospitalier', '5 avenue Santé', 'Tours', 'batiment_sensible', 7),
(8, 'Carrière Calcaire Ouest', 'route de la Carrière', 'Caen', 'site_industriel', 8),
(9, 'Station Rhône Centre', '3 quai du Rhône', 'Lyon', 'station_traitement', 9),
(10, 'Atelier Composites', '11 rue Clément Ader', 'Toulouse', 'site_industriel', 10),
(11, 'Domaine des Graves', '7 route des Vignes', 'Bordeaux', 'site_agricole', 11),
(12, 'Plateforme Marine', '1 boulevard du Littoral', 'Dunkerque', 'site_recherche', 12);

INSERT INTO role_employe (id_role, libelle_role) VALUES
(1, 'technicien'),
(2, 'analyste'),
(3, 'responsable_qualite'),
(4, 'coordinateur_laboratoire'),
(5, 'assistant_administratif'),
(6, 'chef_projet'),
(7, 'responsable_hse'),
(8, 'metrologue'),
(9, 'auditeur_interne'),
(10, 'stagiaire_laboratoire'),
(11, 'data_analyst'),
(12, 'directeur_technique');

INSERT INTO employe (id_employe, nom, prenom, email, date_embauche, id_role) VALUES
(1, 'Martin', 'Claire', 'claire.martin@ecolab.fr', '2021-03-12', 1),
(2, 'Benali', 'Samir', 'samir.benali@ecolab.fr', '2020-06-01', 2),
(3, 'Lemoine', 'Julie', 'julie.lemoine@ecolab.fr', '2019-01-15', 3),
(4, 'Nguyen', 'Thomas', 'thomas.nguyen@ecolab.fr', '2022-09-05', 2),
(5, 'Durand', 'Aline', 'aline.durand@ecolab.fr', '2023-02-20', 1),
(6, 'Rossi', 'Marco', 'marco.rossi@ecolab.fr', '2018-11-03', 2),
(7, 'Petit', 'Laura', 'laura.petit@ecolab.fr', '2021-07-19', 1),
(8, 'Diallo', 'Moussa', 'moussa.diallo@ecolab.fr', '2020-10-12', 8),
(9, 'Moreau', 'Ines', 'ines.moreau@ecolab.fr', '2024-01-08', 10),
(10, 'Garnier', 'Olivier', 'olivier.garnier@ecolab.fr', '2017-05-25', 12),
(11, 'Bernard', 'Sophie', 'sophie.bernard@ecolab.fr', '2022-04-14', 11),
(12, 'Faure', 'Nicolas', 'nicolas.faure@ecolab.fr', '2019-09-30', 6);

INSERT INTO technicien_certification (id_employe, numero_certification, date_expiration) VALUES
(1, 'CERT-PREL-2026-001', '2026-12-31'),
(5, 'CERT-PREL-2026-002', '2026-10-15'),
(7, 'CERT-PREL-2025-003', '2025-11-30'),
(2, 'CERT-LAB-2026-004', '2026-09-20'),
(4, 'CERT-LAB-2026-005', '2026-08-18'),
(6, 'CERT-LAB-2027-006', '2027-01-12'),
(8, 'CERT-MET-2026-007', '2026-06-30'),
(9, 'CERT-OBS-2025-008', '2025-12-15'),
(10, 'CERT-DIR-2028-009', '2028-04-01'),
(11, 'CERT-DATA-2026-010', '2026-03-21'),
(12, 'CERT-PROJ-2027-011', '2027-05-05'),
(3, 'CERT-QUAL-2027-012', '2027-02-28');

INSERT INTO demande_analyse (id_demande, date_demande, statut, priorite, objet_demande, id_client) VALUES
(1, '2025-01-10', 'en_cours', 'haute', 'Contrôle qualité eau potable', 1),
(2, '2025-01-12', 'terminee', 'normale', 'Surveillance rejet industriel', 2),
(3, '2025-01-15', 'en_cours', 'normale', 'Analyse pollution urbaine', 3),
(4, '2025-02-02', 'terminee', 'urgente', 'Recherche métaux lourds', 4),
(5, '2025-02-08', 'nouvelle', 'basse', 'Contrôle sol agricole', 5),
(6, '2025-02-12', 'en_cours', 'haute', 'Suivi hydrocarbures portuaires', 6),
(7, '2025-03-01', 'terminee', 'normale', 'Contrôle légionelles réseau eau', 7),
(8, '2025-03-09', 'en_cours', 'haute', 'Mesure poussières carrière', 8),
(9, '2025-03-15', 'terminee', 'normale', 'Qualité eaux urbaines', 9),
(10, '2025-03-20', 'nouvelle', 'urgente', 'Analyse solvants atelier', 10),
(11, '2025-04-03', 'en_cours', 'basse', 'Suivi nitrates parcelles', 11),
(12, '2025-04-10', 'annulee', 'normale', 'Campagne expérimentale marine', 12);

INSERT INTO type_echantillon (id_type_echantillon, libelle_type, description) VALUES
(1, 'eau potable', 'Eau destinée à la consommation humaine'),
(2, 'eau industrielle', 'Eau issue de rejets industriels'),
(3, 'sol', 'Échantillon de sol'),
(4, 'air ambiant', 'Air prélevé en zone extérieure'),
(5, 'boue industrielle', 'Résidu de traitement industriel'),
(6, 'eau souterraine', 'Eau prélevée en nappe'),
(7, 'eau de surface', 'Eau de rivière ou de bassin'),
(8, 'poussiere', 'Dépôt particulaire collecté'),
(9, 'sediment', 'Sédiment naturel ou portuaire'),
(10, 'eau chaude sanitaire', 'Eau de réseau sanitaire'),
(11, 'gaz industriel', 'Gaz prélevé en procédé'),
(12, 'compost', 'Matière organique en décomposition');

INSERT INTO prelevement (id_prelevement, date_prelevement, conditions_meteo, commentaire, id_site, id_technicien, id_demande) VALUES
(1, '2025-01-11 09:30', 'Temps sec', 'Prélèvement conforme', 1, 1, 1),
(2, '2025-01-13 14:00', 'Pluie légère', 'Accès difficile', 2, 5, 2),
(3, '2025-01-16 10:15', 'Temps couvert', 'RAS', 3, 7, 3),
(4, '2025-02-03 08:45', 'Vent faible', 'Point amont contrôlé', 4, 1, 4),
(5, '2025-02-09 11:20', 'Temps sec', 'Sol légèrement humide', 5, 5, 5),
(6, '2025-02-13 15:10', 'Averses', 'Zone portuaire sécurisée', 6, 7, 6),
(7, '2025-03-02 07:50', 'Intérieur', 'Réseau purgé avant prélèvement', 7, 1, 7),
(8, '2025-03-10 13:25', 'Vent modéré', 'Mesure proche concasseur', 8, 5, 8),
(9, '2025-03-16 09:05', 'Temps clair', 'Prélèvement rive gauche', 9, 7, 9),
(10, '2025-03-21 16:40', 'Intérieur', 'Atelier ventilé', 10, 1, 10),
(11, '2025-04-04 10:00', 'Temps sec', 'Parcelle nord', 11, 5, 11),
(12, '2025-04-11 12:30', 'Vent fort', 'Sortie annulée partiellement', 12, 7, 12);

INSERT INTO echantillon (id_echantillon, code_echantillon, date_reception, temperature_reception, statut, id_prelevement, id_type_echantillon) VALUES
(1, 'ECO-2025-001', '2025-01-11 13:00', 4.5, 'termine', 1, 1),
(2, 'ECO-2025-002', '2025-01-13 17:30', 6.2, 'termine', 2, 2),
(3, 'ECO-2025-003', '2025-01-16 15:00', 8.0, 'analyse', 3, 4),
(4, 'ECO-2025-004', '2025-02-03 12:10', 5.1, 'termine', 4, 7),
(5, 'ECO-2025-005', '2025-02-09 15:30', 10.4, 'recu', 5, 3),
(6, 'ECO-2025-006', '2025-02-13 18:00', 7.8, 'analyse', 6, 9),
(7, 'ECO-2025-007', '2025-03-02 11:45', 5.5, 'termine', 7, 10),
(8, 'ECO-2025-008', '2025-03-10 16:50', 12.3, 'analyse', 8, 8),
(9, 'ECO-2025-009', '2025-03-16 12:20', 6.7, 'termine', 9, 7),
(10, 'ECO-2025-010', '2025-03-21 18:10', 9.1, 'recu', 10, 11),
(11, 'ECO-2025-011', '2025-04-04 13:15', 11.0, 'analyse', 11, 3),
(12, 'ECO-2025-012', '2025-04-11 15:30', 8.8, 'archive', 12, 6);

INSERT INTO parametre_analyse (id_parametre, nom_parametre, unite, seuil_reglementaire) VALUES
(1, 'pH', 'unité pH', 8.50),
(2, 'plomb', 'µg/L', 10.00),
(3, 'nitrates', 'mg/L', 50.00),
(4, 'mercure', 'µg/L', 1.00),
(5, 'cadmium', 'µg/L', 5.00),
(6, 'hydrocarbures', 'mg/kg', 100.00),
(7, 'particules_pm10', 'µg/m3', 40.00),
(8, 'legionelles', 'UFC/L', 1000.00),
(9, 'arsenic', 'µg/L', 10.00),
(10, 'conductivite', 'µS/cm', 2500.00),
(11, 'benzene', 'µg/m3', 5.00),
(12, 'phosphates', 'mg/L', 5.00);

INSERT INTO methode_analyse (id_methode, nom_methode, norme_reference, duree_estimee_minutes, id_parametre) VALUES
(1, 'Potentiométrie', 'NF EN ISO 10523', 30, 1),
(2, 'Spectrométrie ICP-MS', 'NF EN ISO 17294', 90, 2),
(3, 'Chromatographie ionique', 'NF EN ISO 10304', 75, 3),
(4, 'Absorption atomique mercure', 'NF EN 1483', 80, 4),
(5, 'ICP-OES cadmium', 'NF EN ISO 11885', 85, 5),
(6, 'Extraction GC-FID', 'NF EN ISO 9377', 120, 6),
(7, 'Gravimétrie PM10', 'NF EN 12341', 60, 7),
(8, 'Culture légionelles', 'NF T90-431', 240, 8),
(9, 'ICP-MS arsenic', 'NF EN ISO 17294-2', 95, 9),
(10, 'Conductimétrie', 'NF EN 27888', 25, 10),
(11, 'GC-MS benzène', 'NF EN ISO 16017', 110, 11),
(12, 'Colorimétrie phosphates', 'NF EN ISO 6878', 50, 12);

INSERT INTO equipement (id_equipement, nom_equipement, type_equipement, date_mise_service, statut) VALUES
(1, 'pH-mètre MetroLab 300', 'mesure electrochimique', '2021-05-10', 'actif'),
(2, 'ICP-MS PlasmaQuant', 'spectrometrie', '2020-11-20', 'actif'),
(3, 'ChromatoIon X2', 'chromatographie', '2022-02-18', 'maintenance'),
(4, 'Analyseur Mercure AMA', 'spectrometrie', '2019-09-12', 'actif'),
(5, 'ICP-OES Optima', 'spectrometrie', '2021-12-01', 'actif'),
(6, 'GC-FID HydroTrack', 'chromatographie gaz', '2018-07-14', 'actif'),
(7, 'Préleveur PM10 AirSafe', 'mesure air', '2023-03-22', 'actif'),
(8, 'Incubateur BioTherm', 'microbiologie', '2022-10-03', 'actif'),
(9, 'Conductimètre CondX', 'mesure electrochimique', '2024-01-15', 'actif'),
(10, 'GC-MS VolatilePro', 'chromatographie gaz', '2023-08-29', 'maintenance'),
(11, 'Spectro UV ColorMax', 'colorimetrie', '2020-04-06', 'actif'),
(12, 'Balance MicroPrecise', 'pesage', '2017-06-11', 'hors_service');

INSERT INTO analyse (id_analyse, date_debut, date_fin, statut, id_echantillon, id_methode, id_analyste) VALUES
(1, '2025-01-11 14:00', '2025-01-11 14:40', 'terminee', 1, 1, 2),
(2, '2025-01-14 09:00', '2025-01-14 10:45', 'terminee', 2, 2, 4),
(3, '2025-01-17 08:30', NULL, 'en_cours', 3, 7, 2),
(4, '2025-02-03 13:00', '2025-02-03 14:25', 'terminee', 4, 4, 6),
(5, '2025-02-10 09:20', NULL, 'planifiee', 5, 3, 4),
(6, '2025-02-14 08:40', NULL, 'en_cours', 6, 6, 6),
(7, '2025-03-02 13:30', '2025-03-02 17:45', 'terminee', 7, 8, 2),
(8, '2025-03-11 09:10', NULL, 'en_cours', 8, 7, 4),
(9, '2025-03-16 13:00', '2025-03-16 13:30', 'terminee', 9, 10, 6),
(10, '2025-03-22 08:30', NULL, 'planifiee', 10, 11, 2),
(11, '2025-04-04 14:00', NULL, 'en_cours', 11, 3, 4),
(12, '2025-04-12 09:00', '2025-04-12 10:40', 'terminee', 12, 9, 6);

INSERT INTO resultat_analyse (id_resultat, valeur_mesuree, conforme, commentaire_resultat, id_analyse) VALUES
(1, 7.20, 1, 'Valeur normale', 1),
(2, 14.50, 0, 'Dépassement du seuil réglementaire', 2),
(3, 0.70, 1, 'Concentration faible', 4),
(4, 1250.00, 0, 'Dépassement microbiologique', 7),
(5, 810.00, 1, 'Conductivité acceptable', 9),
(6, 12.30, 0, 'Arsenic supérieur au seuil', 12),
(7, 8.10, 1, 'pH stable', 1),
(8, 9.20, 1, 'Contrôle interne conforme', 2),
(9, 0.40, 1, 'Blanc analytique correct', 4),
(10, 940.00, 1, 'Contre-analyse conforme', 7),
(11, 760.00, 1, 'Mesure de confirmation', 9),
(12, 8.50, 1, 'Seuil atteint sans dépassement', 12);

INSERT INTO analyse_equipement (id_analyse, id_equipement) VALUES
(1, 1),
(1, 9),
(2, 2),
(2, 5),
(3, 7),
(4, 4),
(5, 3),
(6, 6),
(7, 8),
(8, 7),
(9, 9),
(10, 10);


-- Vérification rapide des données

SELECT 'client' AS table_name, COUNT(*) AS lignes FROM client
UNION ALL SELECT 'site', COUNT(*) FROM site
UNION ALL SELECT 'role_employe', COUNT(*) FROM role_employe
UNION ALL SELECT 'employe', COUNT(*) FROM employe
UNION ALL SELECT 'technicien_certification', COUNT(*) FROM technicien_certification
UNION ALL SELECT 'demande_analyse', COUNT(*) FROM demande_analyse
UNION ALL SELECT 'type_echantillon', COUNT(*) FROM type_echantillon
UNION ALL SELECT 'prelevement', COUNT(*) FROM prelevement
UNION ALL SELECT 'echantillon', COUNT(*) FROM echantillon
UNION ALL SELECT 'parametre_analyse', COUNT(*) FROM parametre_analyse
UNION ALL SELECT 'methode_analyse', COUNT(*) FROM methode_analyse
UNION ALL SELECT 'equipement', COUNT(*) FROM equipement
UNION ALL SELECT 'analyse', COUNT(*) FROM analyse
UNION ALL SELECT 'resultat_analyse', COUNT(*) FROM resultat_analyse
UNION ALL SELECT 'analyse_equipement', COUNT(*) FROM analyse_equipement;