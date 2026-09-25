SELECT d.titre, gf.libelle_genre
FROM dvd d
JOIN genres_film gf ON d.genre_id = gf.id
ORDER BY d.titre 