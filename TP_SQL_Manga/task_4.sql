SELECT num_manga, titre 
FROM mangas
WHERE titre LIKE '%Tome 1%'
ORDER BY num_manga ASC;