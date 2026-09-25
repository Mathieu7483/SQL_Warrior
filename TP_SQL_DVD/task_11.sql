SELECT d.titre, r.nom, r.prenom, r.pays, gf.libelle_genre
FROM dvd d
JOIN realisateurs r ON d.realisateur_id = r.id
JOIN genres_film gf ON d.genre_id = gf.id
ORDER BY d.titre;