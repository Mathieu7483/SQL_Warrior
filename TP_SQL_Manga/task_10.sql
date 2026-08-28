SELECT f.num_facture, c.prenom, c.nom, m.titre, typ.libelle, tl.date_retour
FROM types_location typ
JOIN table_location tl ON typ.code_type = tl.code_type
JOIN mangas m ON tl.num_manga = m.num_manga
JOIN factures f ON tl.num_facture = f.num_facture
JOIN clients c ON f.code_client = c.code_client
