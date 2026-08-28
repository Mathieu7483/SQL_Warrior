SELECT l.num_facture, SUM(m.prix_base * t.coefficient) AS depenses
FROM table_location l
JOIN mangas m ON l.num_manga = m.num_manga
JOIN types_location t ON l.code_type = t.code_type
GROUP BY l.num_facture
ORDER BY l.num_facture ASC