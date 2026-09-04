SELECT gm.signification, ROUND(SUM(m.prix_base * tyl.coefficient), 2) AS chiffre_affaires
FROM mangas m
JOIN genres_manga gm ON m.code_genre = gm.code_genre
JOIN table_location tl ON m.num_manga = tl.num_manga
JOIN types_location tyl ON tl.code_type = tyl.code_type
GROUP BY gm.signification
ORDER BY chiffre_affaires DESC;
