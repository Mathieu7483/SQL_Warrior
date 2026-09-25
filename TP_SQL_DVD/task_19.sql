SELECT r.pays, gf.libelle_genre, ROUND(AVG(d.duree_minutes), 1) AS duree_moyenne
FROM realisateurs r
JOIN dvd d ON r.id = d.realisateur_id
JOIN genres_film gf ON d.genre_id = gf.id
GROUP BY r.pays, gf.libelle_genre
ORDER BY r.pays, gf.libelle_genre;