SELECT c.nom, c.prenom
FROM clients c
JOIN factures f ON c.id = f.client_id
WHERE f.date_facture >= '2006-06-01' AND f.date_facture <= '2006-06-30'
ORDER BY c.nom