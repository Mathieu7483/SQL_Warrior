SELECT gf.libelle_genre, COUNT(d.id) AS nb_dvd
FROM genres_film gf
LEFT JOIN dvd d ON gf.id = d.genre_id
GROUP BY gf.id, gf.libelle_genre
ORDER BY nb_dvd DESC, gf.libelle_genre ASC;