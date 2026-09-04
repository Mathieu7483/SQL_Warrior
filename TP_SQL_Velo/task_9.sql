SELECT v.code, COUNT(l.id) AS nombre_locations
FROM velos v
JOIN locations l ON v.id = l.velo_id
GROUP BY v.code