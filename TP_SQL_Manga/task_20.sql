SELECT tyl.code_type, COUNT(tl.num_facture) AS nb_utilisations
FROM types_location tyl
JOIN table_location tl ON tyl.code_type = tl.code_type
WHERE tyl.code_type ='12'
GROUP BY tyl.code_type