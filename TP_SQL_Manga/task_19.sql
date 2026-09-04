UPDATE mangas m
JOIN genres_manga gm ON gm.code_genre = m.code_genre
SET prix_base = prix_base +0.20
WHERE gm.signification = 'Horreur';

SELECT m.num_manga, m.titre, m.prix_base, gm.signification
FROM mangas m
JOIN genres_manga gm ON gm.code_genre = m.code_genre
WHERE gm.signification = 'Horreur';