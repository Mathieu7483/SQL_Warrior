SELECT c.nom, count(da.id_demande) AS nombre_echantillons
FROM client c
LEFT JOIN demande_analyse da ON c.id_client = da.id_client
GROUP BY c.nom
ORDER BY nombre_echantillons DESC, c.nom