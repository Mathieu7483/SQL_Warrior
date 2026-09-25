SELECT d.titre, CONCAT(c.civilite, ' ', c.nom,' ', c.prenom) AS client, CONCAT(r.nom,' ', r.prenom) AS realisateur
FROM dvd d
JOIN locations l ON d.id = l.dvd_id
JOIN factures f ON l.facture_id = f.id
JOIN clients c ON f.client_id = c.id
JOIN realisateurs r ON d.realisateur_id = r.id
ORDER BY d.titre