SELECT e.code_echantillon, te.libelle_type
FROM echantillon e
JOIN type_echantillon te ON e.id_type_echantillon = te.id_type_echantillon
