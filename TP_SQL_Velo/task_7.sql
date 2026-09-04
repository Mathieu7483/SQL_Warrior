SELECT l.id, u.nom_complet, v.code, l.date_debut, l.date_fin, p.montant
FROM locations l
JOIN utilisateurs u ON l.utilisateur_id = u.id
JOIN velos v ON l.velo_id = v.id
JOIN paiements p ON l.id = p.location_id
WHERE l.id ='1'
