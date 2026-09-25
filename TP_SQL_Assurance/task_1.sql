SELECT tv.libelle, tv.nbplaces, v.modele, v.couleur, v.immat
FROM types_vehicules tv
JOIN vehicules v ON v.type_voiture = tv.id;