CREATE VIEW vue_resultats_complets AS
SELECT c.nom AS client, nom_site, code_echantillon, nom_parametre, unite, seuil_reglementaire, valeur_mesuree, conforme
FROM client c
JOIN site s ON c.id_client = s.id_client
JOIN prelevement p ON s.id_site = p.id_site
JOIN echantillon e  ON p.id_prelevement = e.id_prelevement
JOIN analyse a ON e.id_echantillon = a.id_echantillon
JOIN methode_analyse ma ON a.id_methode = ma.id_methode
JOIN parametre_analyse pa ON ma.id_parametre = pa.id_parametre
JOIN resultat_analyse ra ON a.id_analyse = ra.id_analyse;

SELECT * FROM vue_resultats_complets;