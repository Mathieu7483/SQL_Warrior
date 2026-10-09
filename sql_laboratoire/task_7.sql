SELECT s.nom_site , c.ville, s.type_site, c.nom AS client
FROM site s
JOIN client c ON c.id_client = s.id_client
ORDER BY client