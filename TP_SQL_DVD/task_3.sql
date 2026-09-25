SELECT *
FROM clients
WHERE (civilite = 'Mme' OR civilite = 'Mlle')
AND prenom LIKE 'A%'
ORDER BY prenom