SELECT v.id, v.modele
FROM vehicules v
LEFT JOIN contrats c ON v.id = c.vehicule
WHERE c.vehicule IS NULL
