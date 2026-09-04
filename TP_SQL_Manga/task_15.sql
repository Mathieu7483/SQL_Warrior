SELECT mg.signification,  tyl.libelle, COUNT(tal.num_facture) AS nombre_location
FROM genres_manga mg
JOIN mangas m ON mg.code_genre = m.code_genre
JOIN table_location tal ON m.num_manga = tal.num_manga
JOIN types_location tyl ON tal.code_type = tyl.code_type
GROUP BY mg.signification, tyl.libelle
ORDER BY mg.signification