SELECT v.id, v.modele, COUNT(d.vehicule) AS nombre_total_de_trajets
FROM vehicules v
JOIN deplacements d ON v.id = d.vehicule
GROUP BY v.id, v.modele
ORDER BY nombre_total_de_trajets DESC, v.id ASC;