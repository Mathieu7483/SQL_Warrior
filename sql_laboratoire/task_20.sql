SELECT a.id_analyse, e.code_echantillon, TIMESTAMPDIFF(minute, a.date_debut, a.date_fin) AS duree_minutes, 
    RANK() OVER(ORDER BY TIMESTAMPDIFF(minute, a.date_debut, a.date_fin) DESC) AS rang_duree
FROM analyse a
JOIN echantillon e ON e.id_echantillon = a.id_echantillon
WHERE a.statut = 'terminee'
ORDER BY duree_minutes DESC;
