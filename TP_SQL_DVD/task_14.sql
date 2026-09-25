SELECT c.nom, c.prenom, d.titre, f.date_facture
FROM clients c
JOIN factures f ON c.id = f.client_id
JOIN locations l ON f.id = l.facture_id
JOIN dvd d ON l.dvd_id = d.id
JOIN realisateurs r ON d.realisateur_id = r.id
WHERE f.date_facture BETWEEN '2006-06-01' AND '2006-06-30' AND r.pays = 'Allemagne'
ORDER BY c.nom, c.prenom, d.titre