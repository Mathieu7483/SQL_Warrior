SELECT d.titre, c.nom, c.prenom, c.date_naissance
FROM dvd d
JOIN locations l ON d.id = l.dvd_id
JOIN factures f ON l.facture_id = f.id
JOIN clients c ON f.client_id = c.id
JOIN genres_film g ON d.genre_id = g.id
WHERE c.date_naissance BETWEEN '1960-01-01' AND '1969-12-31' AND code_genre = 'AV'
ORDER BY d.titre