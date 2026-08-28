SELECT ville, COUNT(titre) AS nombre_de_clients, SUM(enfants) AS nombre_d_enfants
FROM clients
GROUP BY ville
ORDER BY ville ASC