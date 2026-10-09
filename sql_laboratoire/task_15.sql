SELECT ma.nom_methode, ROUND(AVG(TIMESTAMPDIFF(MINUTE, a.date_debut, a.date_fin)), 2) AS duree_moyenne_minutes
FROM methode_analyse ma
JOIN analyse a ON a.id_methode = ma.id_methode
WHERE a.date_fin IS NOT NULL
GROUP BY ma.nom_methode
ORDER BY duree_moyenne_minutes DESC;
