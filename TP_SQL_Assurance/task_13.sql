SELECT e.id, e.nom, e.prenom
FROM employes e
LEFT JOIN deplacements d ON e.id = d.employe
WHERE d.employe IS NULL