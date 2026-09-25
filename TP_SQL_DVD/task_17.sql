SELECT r.pays, gf.libelle_genre, COUNT(d.id) AS nb_dvd
FROM realisateurs r
JOIN dvd d ON r.id = d.realisateur_id
JOIN genres_film gf ON d.genre_id = gf.id
GROUP BY r.pays, gf.libelle_genre
ORDER BY r.pays ASC, gf.libelle_genre ASC