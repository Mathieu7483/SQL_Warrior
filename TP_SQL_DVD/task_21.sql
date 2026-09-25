SELECT l.facture_id, f.date_facture, c.nom, c.prenom, SUM(tl.tarif) AS montant_total
FROM locations l
JOIN factures f ON l.facture_id = f.id
JOIN clients c ON f.client_id = c.id
JOIN types_location tl ON l.type_location_id = tl.id
GROUP BY l.facture_id, f.date_facture, c.nom, c.prenom
ORDER BY montant_total DESC
