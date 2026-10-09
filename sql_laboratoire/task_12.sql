SELECT CONCAT(e.prenom, " ", e.nom) AS analyste, COUNT(a.id_analyse) AS nombre_analyses
FROM employe e
JOIN analyse a ON e.id_employe = a.id_analyste
GROUP BY analyste