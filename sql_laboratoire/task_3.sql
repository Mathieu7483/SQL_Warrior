SELECT code_echantillon, date_reception, temperature_reception, statut
FROM echantillon
ORDER BY date_reception DESC
LIMIT 5