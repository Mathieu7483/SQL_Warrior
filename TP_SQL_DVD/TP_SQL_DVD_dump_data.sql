USE dvd;

INSERT INTO genres_film (id, code_genre, libelle_genre) VALUES
(1, 'AV', 'Aventure'),
(2, 'AC', 'Action'),
(3, 'CO', 'Comédie'),
(4, 'DR', 'Drame'),
(5, 'SF', 'Science-fiction'),
(6, 'FA', 'Fantastique'),
(7, 'TH', 'Thriller'),
(8, 'AN', 'Animation'),
(9, 'DO', 'Documentaire'),
(10, 'HO', 'Horreur'),
(11, 'RO', 'Romance'),
(12, 'PO', 'Policier'),
(13, 'GU', 'Guerre'),
(14, 'MU', 'Musical'),
(15, 'WE', 'Western'),
(16, 'BI', 'Biographie');

INSERT INTO realisateurs (id, code_realisateur, nom, prenom, pays) VALUES
(1, 'R001', 'Spielberg', 'Steven', 'ETATS-UNIS'),
(2, 'R002', 'Nolan', 'Christopher', 'ROYAUME-UNI'),
(3, 'R003', 'Jeunet', 'Jean-Pierre', 'FRANCE'),
(4, 'R004', 'Tarantino', 'Quentin', 'ETATS-UNIS'),
(5, 'R005', 'Cameron', 'James', 'CANADA'),
(6, 'R006', 'Lang', 'Fritz', 'ALLEMAGNE'),
(7, 'R007', 'Wenders', 'Wim', 'ALLEMAGNE'),
(8, 'R008', 'Miyazaki', 'Hayao', 'JAPON'),
(9, 'R009', 'Besson', 'Luc', 'FRANCE'),
(10, 'R010', 'Scott', 'Ridley', 'ROYAUME-UNI'),
(11, 'R011', 'Fincher', 'David', 'ETATS-UNIS'),
(12, 'R012', 'Almodovar', 'Pedro', 'ESPAGNE'),
(13, 'R013', 'Eastwood', 'Clint', 'ETATS-UNIS'),
(14, 'R014', 'Chaplin', 'Charlie', 'ROYAUME-UNI'),
(15, 'R015', 'Verhoeven', 'Paul', 'PAYS-BAS'),
(16, 'R016', 'Varda', 'Agnes', 'FRANCE');

INSERT INTO clients (
    id, code_client, civilite, prenom, nom, adresse,
    code_postal, ville, telephone, date_naissance, abonne
) VALUES
(1, 'C001', 'M.', 'Paul', 'Martin', '12 rue des Lilas', '44000', 'Nantes', '0240000001', '1965-04-12', 1),
(2, 'C002', 'Mme', 'Alice', 'Durand', '8 avenue Victor Hugo', '44100', 'Nantes', '0240000002', '1984-09-21', 1),
(3, 'C003', 'M.', 'Julien', 'Bernard', '5 rue Pasteur', '44200', 'Nantes', '0240000003', '1972-01-08', 0),
(4, 'C004', 'Mme', 'Amelie', 'Petit', '19 rue Nationale', '44300', 'Nantes', '0240000004', '1992-07-30', 1),
(5, 'C005', 'M.', 'Marc', 'Leroy', '3 place Royale', '35000', 'Rennes', '0299000005', '1968-11-17', 0),
(6, 'C006', 'Mme', 'Sophie', 'Moreau', '22 rue Carnot', '49000', 'Angers', '0241000006', '1975-03-02', 1),
(7, 'C007', 'Mlle', 'Anais', 'Simon', '7 rue du Port', '44600', 'Saint-Nazaire', '0240000007', '2001-12-14', 1),
(8, 'C008', 'M.', 'Hugo', 'Laurent', '4 boulevard Voltaire', '75011', 'Paris', '0140000008', '1988-06-25', 0),
(9, 'C009', 'Mme', 'Claire', 'Garcia', '11 rue Foch', '44000', 'Nantes', '0240000009', '1969-02-18', 1),
(10, 'C010', 'M.', 'Thomas', 'Roux', '16 rue Gambetta', '33000', 'Bordeaux', '0556000010', '1979-10-05', 0),
(11, 'C011', 'Mme', 'Aurelie', 'Fournier', '1 impasse Verte', '44800', 'Saint-Herblain', '0240000011', '1981-05-29', 1),
(12, 'C012', 'M.', 'Nicolas', 'Girard', '9 chemin Bleu', '69003', 'Lyon', '0478000012', '1962-08-09', 1),
(13, 'C013', 'Mme', 'Laura', 'Mercier', '14 rue du Stade', '44400', 'Reze', '0240000013', '1995-01-20', 0),
(14, 'C014', 'M.', 'Antoine', 'Blanc', '6 rue des Pins', '31000', 'Toulouse', '0561000014', '1971-04-04', 1),
(15, 'C015', 'Mme', 'Julie', 'Robin', '18 rue Haute', '44000', 'Nantes', '0240000015', '1989-09-09', 1),
(16, 'C016', 'M.', 'Kevin', 'Faure', '2 rue Basse', '67000', 'Strasbourg', '0388000016', '1998-06-16', 0);

INSERT INTO dvd (id, titre, annee_sortie, duree_minutes, genre_id, realisateur_id) VALUES
(1, 'Jurassic Park', 1993, 127, 1, 1),
(2, 'Indiana Jones', 1981, 115, 1, 1),
(3, 'Inception', 2010, 148, 5, 2),
(4, 'Interstellar', 2014, 169, 5, 2),
(5, 'Le Fabuleux Destin d Amelie Poulain', 2001, 122, 3, 3),
(6, 'Delicatessen', 1991, 99, 3, 3),
(7, 'Pulp Fiction', 1994, 154, 7, 4),
(8, 'Kill Bill', 2003, 111, 2, 4),
(9, 'Avatar', 2009, 162, 5, 5),
(10, 'Titanic', 1997, 195, 11, 5),
(11, 'Metropolis', 1927, 153, 5, 6),
(12, 'Les Ailes du Desir', 1987, 128, 4, 7),
(13, 'Le Voyage de Chihiro', 2001, 125, 8, 8),
(14, 'Mon Voisin Totoro', 1988, 86, 8, 8),
(15, 'Le Grand Bleu', 1988, 168, 4, 9),
(16, 'Alien', 1979, 117, 10, 10),
(17, 'Seven', 1995, 127, 12, 11),
(18, 'Fight Club', 1999, 139, 4, 11),
(19, 'Tout sur ma mere', 1999, 101, 4, 12),
(20, 'Paris Texas', 1984, 145, 4, 7),
(21, 'Impitoyable', 1992, 131, 15, 13),
(22, 'Les Temps modernes', 1936, 87, 3, 14),
(23, 'Total Recall', 1990, 113, 5, 15),
(24, 'Sans toit ni loi', 1985, 105, 4, 16);

INSERT INTO types_location (id, code_type, libelle_type, tarif) VALUES
(1, 'J1', 'Location 1 jour', 2.50),
(2, 'J2', 'Location 2 jours', 3.50),
(3, 'J3', 'Location 3 jours', 4.50),
(4, 'S1', 'Location semaine', 7.00),
(5, 'NOUV', 'Nouveaute', 5.50),
(6, 'PROMO', 'Promotion', 1.50),
(7, 'WE', 'Week-end', 4.00),
(8, 'VIP', 'Tarif abonne VIP', 2.00),
(9, 'LONG', 'Longue duree', 9.00),
(10, 'STD', 'Standard', 3.00),
(11, 'ENF', 'Jeunesse', 2.00),
(12, 'COLL', 'Collection', 6.00),
(13, 'RETRO', 'Film ancien', 2.20),
(14, 'PREM', 'Premium', 6.50),
(15, 'DECOU', 'Decouverte', 2.80),
(16, 'FAM', 'Famille', 3.80);

INSERT INTO factures (id, client_id, date_facture) VALUES
(1, 1, '2006-06-03'),
(2, 2, '2006-06-04'),
(3, 3, '2006-06-08'),
(4, 4, '2006-06-12'),
(5, 5, '2006-06-14'),
(6, 6, '2006-06-19'),
(7, 7, '2006-06-22'),
(8, 8, '2006-06-27'),
(9, 9, '2006-07-02'),
(10, 10, '2006-07-05'),
(11, 11, '2006-06-29'),
(12, 12, '2006-05-28'),
(13, 13, '2006-06-30'),
(14, 14, '2006-07-10'),
(15, 15, '2006-06-18'),
(16, 16, '2006-05-20');

INSERT INTO locations (
    id, facture_id, dvd_id, type_location_id,
    date_retour_prevue, date_retour_effective
) VALUES
(1, 1, 1, 2, '2006-06-05', '2006-06-05'),
(2, 1, 8, 1, '2006-06-04', '2006-06-04'),
(3, 2, 5, 7, '2006-06-06', '2006-06-06'),
(4, 2, 13, 11, '2006-06-06', '2006-06-05'),
(5, 3, 2, 3, '2006-06-11', '2006-06-11'),
(6, 3, 11, 12, '2006-06-11', '2006-06-12'),
(7, 4, 14, 11, '2006-06-15', '2006-06-15'),
(8, 4, 6, 6, '2006-06-15', '2006-06-14'),
(9, 5, 12, 10, '2006-06-17', '2006-06-17'),
(10, 5, 16, 1, '2006-06-15', '2006-06-15'),
(11, 6, 3, 5, '2006-06-22', '2006-06-22'),
(12, 6, 7, 2, '2006-06-21', '2006-06-21'),
(13, 7, 10, 4, '2006-06-29', '2006-06-29'),
(14, 7, 18, 3, '2006-06-25', '2006-06-25'),
(15, 8, 4, 5, '2006-06-30', '2006-06-30'),
(16, 8, 17, 2, '2006-06-29', '2006-06-29'),
(17, 9, 9, 4, '2006-07-09', '2006-07-09'),
(18, 9, 15, 9, '2006-07-12', '2006-07-11'),
(19, 10, 19, 10, '2006-07-08', '2006-07-08'),
(20, 10, 20, 2, '2006-07-07', '2006-07-07'),
(21, 11, 11, 12, '2006-07-02', '2006-07-02'),
(22, 11, 12, 10, '2006-07-02', '2006-07-03'),
(23, 12, 2, 1, '2006-05-29', '2006-05-29'),
(24, 12, 1, 7, '2006-05-30', '2006-05-30'),
(25, 13, 21, 14, '2006-07-03', '2006-07-03'),
(26, 13, 22, 13, '2006-07-03', '2006-07-02'),
(27, 14, 23, 5, '2006-07-13', '2006-07-13'),
(28, 15, 24, 8, '2006-06-20', '2006-06-20'),
(29, 15, 3, 14, '2006-06-21', '2006-06-22'),
(30, 16, 6, 15, '2006-05-23', '2006-05-23');

SELECT 'genres_film' AS table_name, COUNT(*) AS nb_lignes FROM genres_film
UNION ALL
SELECT 'realisateurs', COUNT(*) FROM realisateurs
UNION ALL
SELECT 'clients', COUNT(*) FROM clients
UNION ALL
SELECT 'dvd', COUNT(*) FROM dvd
UNION ALL
SELECT 'types_location', COUNT(*) FROM types_location
UNION ALL
SELECT 'factures', COUNT(*) FROM factures
UNION ALL
SELECT 'locations', COUNT(*) FROM locations;