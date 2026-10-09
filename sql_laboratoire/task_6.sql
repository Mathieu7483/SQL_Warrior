SELECT  nom_equipement, type_equipement, date_mise_service, statut
FROM equipement
ORDER by date_mise_service DESC
LIMIT 3