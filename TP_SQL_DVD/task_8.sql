SELECT pays, COUNT(id) AS nb_realisateurs
FROM realisateurs
GROUP BY pays
ORDER BY nb_realisateurs DESC, pays ASC