WITH echantillons_par_client AS (
    SELECT c.id_client, c.nom, COUNT(e.id_echantillon) AS nombre_echantillons
    FROM client c
    JOIN demande_analyse da ON c.id_client = da.id_client
    JOIN prelevement p ON da.id_demande = p.id_demande
    LEFT JOIN  echantillon e ON e.id_prelevement = p.id_prelevement
    GROUP BY c.id_client, c.nom
)

-- Main query
SELECT 
    id_client,
    nom AS nom_client, 
    nombre_echantillons
FROM 
    echantillons_par_client;