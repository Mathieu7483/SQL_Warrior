SELECT a.id_analyse, e.code_echantillon, ma.nom_methode, a.statut
FROM echantillon e
JOIN analyse a ON a.id_echantillon = e.id_echantillon
JOIN methode_analyse ma ON ma.id_methode = a.id_methode
ORDER by id_analyse