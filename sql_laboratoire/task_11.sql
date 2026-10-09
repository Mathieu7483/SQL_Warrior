SELECT c.nom as nom_client, s.nom_site, e.code_echantillon, pa.nom_parametre, ra.valeur_mesuree, ra.conforme
FROM client c
JOIN site s ON c.id_client = s.id_client
JOIN prelevement p ON s.id_site = p.id_site
JOIN echantillon e ON p.id_prelevement = e.id_prelevement
JOIN analyse a ON e.id_echantillon = a.id_echantillon
JOIN resultat_analyse ra ON a.id_analyse = ra.id_analyse
JOIN methode_analyse ma ON a.id_methode = ma.id_methode
JOIN parametre_analyse pa ON ma.id_parametre = pa.id_parametre
ORDER BY nom_client, e.code_echantillon
