SELECT u.nom_complet, SUM(p.montant) AS total_depense
FROM utilisateurs u
JOIN locations l ON u.id = l.utilisateur_id
JOIN paiements p ON l.id = p.location_id
GROUP BY u.id, u.nom_complet
HAVING SUM(p.montant) > 10;
