SELECT v.modele, tv.nbplaces, ROUND(COALESCE((COUNT(d.employe) / tv.nbplaces) * 100, 0), 2) AS taux_remplissage
FROM vehicules v
LEFT JOIN deplacements d ON v.id = d.vehicule
LEFT JOIN types_vehicules tv ON v.type_voiture = tv.id
GROUP BY v.id, v.modele, tv.nbplaces
ORDER BY taux_remplissage DESC;
