SELECT gf.libelle_genre, COUNT(l.id) AS nb_locations
FROM genres_film gf
JOIN dvd d ON gf.id = d.genre_id
JOIN locations l ON d.id = l.dvd_id
GROUP BY gf.libelle_genre
ORDER BY nb_locations DESC;