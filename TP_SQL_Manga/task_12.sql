SELECT m.titre, mg.prenom, mg.nom, g.signification
FROM mangas m
JOIN mangakas mg ON m.code_mangaka = mg.code_mangaka
JOIN genres_manga g ON m.code_genre = g.code_genre
WHERE signification = 'Horreur'
