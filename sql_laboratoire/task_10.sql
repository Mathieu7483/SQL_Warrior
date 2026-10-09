SELECT e.code_echantillon, e.id_echantillon, ra.valeur_mesuree, ra.conforme
FROM echantillon e
JOIN analyse a ON e.id_echantillon = a.id_echantillon
LEFT JOIN resultat_analyse ra ON a.id_analyse = ra.id_analyse
ORDER BY e.code_echantillon ASC;