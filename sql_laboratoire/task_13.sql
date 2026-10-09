SELECT pa.nom_parametre, pa.unite, pa.seuil_reglementaire
FROM parametre_analyse pa
JOIN methode_analyse ma ON ma.id_parametre = pa.id_parametre
JOIN analyse a ON a.id_methode = ma.id_methode
JOIN resultat_analyse ra ON ra.id_analyse = a.id_analyse
WHERE ra.conforme = 0