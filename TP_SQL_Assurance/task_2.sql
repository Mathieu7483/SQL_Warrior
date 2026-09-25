SELECT v.modele, a.nom
FROM vehicules v
JOIN contrats c ON v.id = c.vehicule
JOIN assureurs a ON c.assureur = a.id