SELECT LEFT(code_postal, 2) As departement, civilite, COUNT(id) AS nb_clients
FROM clients
GROUP BY departement, civilite
ORDER BY departement, civilite;