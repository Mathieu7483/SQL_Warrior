SELECT COUNT(titre) AS nombre_total_de_mangas, ROUND(AVG(prix_base), 2) AS prix_moyen, ROUND(MAX(prix_base), 2) AS prix_max
FROM mangas;