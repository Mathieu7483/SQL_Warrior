SELECT gf.libelle_genre, ROUND(AVG(duree_minutes), 1) AS duree_moyenne
FROM genres_film gf
JOIN dvd d ON gf.id = d.genre_id
GROUP BY gf.id, gf.libelle_genre
ORDER BY duree_moyenne DESC, gf.libelle_genre ASC;