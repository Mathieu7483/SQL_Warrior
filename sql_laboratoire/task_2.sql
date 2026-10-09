SELECT id_demande, date_demande, priorite, objet_demande
FROM demande_analyse
WHERE priorite = "urgente" OR priorite ="haute"
ORDER BY date_demande
