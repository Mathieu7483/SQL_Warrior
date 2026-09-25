USE assurance_flotte;

INSERT INTO types_vehicules VALUES
('CITY', 'Citadine', 4),
('SUV', 'SUV', 5),
('UTIL', 'Utilitaire', 2),
('BUS', 'Minibus', 7),
('BERL', 'Berline', 5),
('COMP', 'Compacte', 4),
('ELEC', 'Electrique', 4),
('HYBR', 'Hybride', 5),
('VAN', 'Van', 7),
('PICK', 'Pick-up', 5),
('COUP', 'Coupe', 4),
('MICR', 'Microcar', 2);

INSERT INTO vehicules VALUES
(101, 'Peugeot 208', 'Rouge', 'AA123BB', 'CITY'),
(102, 'Renault Clio', 'Blanc', 'CC456DD', 'CITY'),
(103, 'Toyota Rav4', 'Noir', 'EE789FF', 'SUV'),
(104, 'Ford Transit', NULL, 'GG741HH', 'UTIL'),
(105, 'Mercedes Vito', 'Gris', 'II852JJ', 'BUS'),
(106, 'Dacia Duster', 'Bleu', 'KK963LL', 'SUV'),
(107, 'Citroen C3', 'Vert', 'MM159NN', 'CITY'),
(108, 'Volkswagen Tiguan', 'Noir', 'OO357PP', 'SUV'),
(109, 'Opel Vivaro', 'Blanc', 'QQ951RR', 'UTIL'),
(110, 'Fiat Panda', 'Jaune', 'SS753TT', 'CITY'),
(111, 'Hyundai Tucson', 'Bleu', 'UU654VV', 'SUV'),
(112, 'Peugeot Expert', 'Gris', 'WW852XX', 'UTIL');

INSERT INTO assureurs VALUES
('AX', 'AXA Assurance', 'Paris France', '0102030405'),
('MA', 'MAIF', 'Lyon France', '0203040506'),
('GM', 'Groupama', 'Marseille France', '0304050607'),
('AL', 'Allianz', 'Toulouse France', '0405060708'),
('AG', 'Generali', 'Nantes France', '0506070809'),
('MU', 'MMA', 'Rennes France', '0607080910'),
('AV', 'Aviva', 'Bordeaux France', '0708091011'),
('SM', 'SMACL', 'Niort France', '0809101112'),
('TH', 'Thelem', 'Orleans France', '0910111213'),
('AC', 'April Courtage', 'Lille France', '0111223344'),
('SP', 'Swiss Life', 'Strasbourg France', '0222334455'),
('BN', 'BNP Assurance', 'Nice France', '0333445566');

INSERT INTO contrats VALUES
(1, '2024-01-01 00:00:00', 12, 'AX', 101),
(2, '2024-02-01 00:00:00', 12, 'MA', 102),
(3, '2024-03-10 00:00:00', 24, 'GM', 103),
(4, '2024-04-15 00:00:00', 12, 'AX', 104),
(5, '2024-05-20 00:00:00', 18, 'AL', 105),
(6, '2024-06-01 00:00:00', 12, 'MA', 106),
(7, '2024-06-15 00:00:00', 12, 'GM', 108),
(8, '2024-07-01 00:00:00', 12, 'AL', 109),
(9, '2024-07-10 00:00:00', 6, 'AX', 111),
(10, '2025-01-01 00:00:00', 12, 'AG', 101),
(11, '2025-02-01 00:00:00', 12, 'MU', 102),
(12, '2025-03-01 00:00:00', 12, 'SP', 103);

INSERT INTO employes VALUES
(201, 'DUPONT', 'Marie', '123456789012'),
(202, 'MARTIN', 'Lucas', '123456789013'),
(203, 'BERNARD', 'Emma', NULL),
(204, 'ROBERT', 'Nathan', '123456789014'),
(205, 'RICHARD', 'Lea', '123456789015'),
(206, 'PETIT', 'Tom', NULL),
(207, 'DURAND', 'Sarah', '123456789016'),
(208, 'MOREAU', 'Hugo', '123456789017'),
(209, 'SIMON', 'Eva', '123456789018'),
(210, 'LAURENT', 'Noah', '123456789019'),
(211, 'MICHEL', 'Lina', '123456789020'),
(212, 'GARCIA', 'Jules', NULL);

INSERT INTO deplacements VALUES
(201, 103, '2025-05-15 08:00:00', '2025-05-15 18:00:00', 'Lyon'),
(202, 103, '2025-05-15 08:00:00', '2025-05-15 18:00:00', 'Lyon'),
(204, 105, '2025-05-20 07:00:00', '2025-05-22 20:00:00', 'Paris'),
(205, 105, '2025-05-20 07:00:00', '2025-05-22 20:00:00', 'Paris'),
(206, 106, '2025-05-18 09:00:00', '2025-05-18 19:00:00', 'Lille'),
(207, 108, '2025-05-25 06:00:00', '2025-05-26 21:00:00', 'Nice'),
(208, 108, '2025-05-25 06:00:00', '2025-05-26 21:00:00', 'Nice'),
(209, 110, '2025-05-30 08:30:00', '2025-05-30 17:30:00', 'Nantes'),
(210, 101, '2025-06-02 08:00:00', '2025-06-02 12:00:00', 'Bordeaux'),
(211, 101, '2025-06-02 08:00:00', '2025-06-02 12:00:00', 'Bordeaux'),
(212, 104, '2025-06-03 09:00:00', '2025-06-03 16:00:00', 'Dijon'),
(201, 105, '2025-06-10 08:00:00', '2025-06-10 19:00:00', 'Tours');

SELECT * FROM types_vehicules;
SELECT * FROM vehicules;
SELECT * FROM assureurs;
SELECT * FROM contrats;
SELECT * FROM employes;
SELECT * FROM deplacements;