SELECT e.code_echantillon, a.id_analyse, 
CASE 
WHEN ra.conforme =1 THEN 'conforme'
WHEN ra.conforme =0 THEN 'non conforme'
ELSE 'en attente' 
END AS statut_resultat
FROM echantillon e
JOIN analyse a ON e.id_echantillon = a.id_echantillon
LEFT JOIN resultat_analyse ra ON a.id_analyse = ra.id_analyse
ORDER BY e.code_echantillon