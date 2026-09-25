SELECT vehicule, COUNT(*) AS nb_deplacements
FROM deplacements
GROUP BY vehicule
ORDER BY nb_deplacements DESC