SELECT 
    c.ville,
    SUM(gm.signification = 'Aventure') AS Aventure,
    SUM(gm.signification = 'Fantasy') AS Fantasy,
    SUM(gm.signification = 'Horreur') AS Horreur,
    SUM(gm.signification = 'Shōnen') AS Shōnen
FROM clients c
JOIN factures f ON c.code_client = f.code_client
JOIN table_location tl ON f.num_facture = tl.num_facture
JOIN mangas m ON tl.num_manga = m.num_manga
JOIN genres_manga gm ON m.code_genre = gm.code_genre
GROUP BY c.ville
ORDER BY c.ville