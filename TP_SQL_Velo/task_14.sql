SELECT u.* 
FROM utilisateurs u
LEFT JOIN locations l ON u.id = l.utilisateur_id
WHERE l.id IS NULL;