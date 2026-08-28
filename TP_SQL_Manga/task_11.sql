SELECT c.code_client, c.prenom, c.nom, COUNT(f.num_facture) AS nombre_de_location,ROUND(SUM(m.prix_base * typ.coefficient), 2) AS total_depenses
FROM clients c
JOIN factures f ON c.code_client = f.code_client
JOIN table_location tl ON f.num_facture = tl.num_facture
JOIN types_location typ ON tl.code_type = typ.code_type
JOIN mangas m ON tl.num_manga = m.num_manga
GROUP BY c.code_client
ORDER BY total_depenses DESC
LIMIT 5;