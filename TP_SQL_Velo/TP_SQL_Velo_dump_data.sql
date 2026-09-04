INSERT INTO utilisateurs (nom_complet, email, telephone, mot_de_passe)
VALUES
('Jean Dupont', 'jean@email.com', '0600000001', 'hash1'),
('Marie Martin', 'marie@email.com', '0600000002', 'hash2'),
('Lucas Bernard', 'lucas@email.com', '0600000003', 'hash3'),
('Emma Robert', 'emma@email.com', '0600000004', 'hash4'),
('Sophie Leroy', 'sophie@email.com', '0600000005', 'hash5');

INSERT INTO stations (nom, adresse, latitude, longitude, capacite)
VALUES
('Station Centre', '10 Rue Centrale', 47.218371, -1.553621, 20),
('Station Gare', '5 Avenue Gare', 47.217250, -1.542000, 15),
('Station Université', 'Campus Universitaire', 47.230000, -1.560000, 25),
('Station Commerce', 'Place Commerce', 47.213000, -1.550000, 18);

INSERT INTO velos (code, type_velo, statut, station_actuelle_id)
VALUES
('V001', 'classique', 'disponible', 1),
('V002', 'electrique', 'loue', 2),
('V003', 'classique', 'maintenance', 3),
('V004', 'electrique', 'disponible', 1),
('V005', 'classique', 'loue', 2),
('V006', 'electrique', 'disponible', 4),
('V007', 'classique', 'perdu', 1),
('V008', 'electrique', 'disponible', 3),
('V009', 'classique', 'disponible', 2),
('V010', 'electrique', 'maintenance', 4);

INSERT INTO locations (
utilisateur_id,
velo_id,
station_depart_id,
station_retour_id,
date_debut,
date_fin,
statut
)
VALUES
(1, 2, 2, 1, '2025-05-01 08:00:00', '2025-05-01 10:00:00', 'terminee'),
(2, 5, 2, NULL, '2025-05-03 09:00:00', NULL, 'active'),
(3, 1, 1, 4, '2025-05-02 11:00:00', '2025-05-02 13:00:00', 'terminee'),
(4, 4, 1, 2, '2025-05-04 14:00:00', '2025-05-04 16:30:00', 'terminee'),
(5, 6, 4, NULL, '2025-05-05 10:00:00', NULL, 'active');

INSERT INTO paiements (
location_id,
montant,
methode_paiement,
statut_paiement,
date_paiement
)
VALUES
(1, 12.50, 'carte', 'paye', '2025-05-01 10:05:00'),
(3, 8.00, 'portefeuille', 'paye', '2025-05-02 13:10:00'),
(4, 15.00, 'carte', 'paye', '2025-05-04 16:40:00');