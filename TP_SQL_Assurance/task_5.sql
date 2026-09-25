SELECT tv.libelle, COUNT(v.id) AS total
FROM types_vehicules tv
LEFT JOIN vehicules v ON v.type_voiture = tv.id
GROUP BY tv.libelle
ORDER BY total DESC;