SELECT a.id_analyse, e.code_echantillon, TIMESTAMPDIFF(MINUTE, a.date_debut, a.date_fin) AS duree_minutes
FROM echantillon e
JOIN analyse a ON e.id_echantillon = a.id_echantillon
WHERE a.date_fin IS NOT NULL
    AND TIMESTAMPDIFF(MINUTE, a.date_debut, a.date_fin) > (
        SELECT AVG(TIMESTAMPDIFF(MINUTE, a.date_debut, a.date_fin))
        FROM analyse a
        WHERE a.date_fin IS NOT NULL
    )
ORDER BY duree_minutes DESC
