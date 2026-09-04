INSERT INTO mangakas (code_mangaka, prenom, nom, annee_naissance, pays) 
VALUES (13, 'Makoto', 'Yukimura', 1976, 'Japon');

SELECT * FROM mangakas WHERE code_mangaka = 13;

INSERT INTO mangas (num_manga, code_mangaka, code_genre, titre, prix_base, annee, descriptif, duree) 
VALUES (25, 13, 13, 'Vinland Saga - Tome 1', 2.90, 2005, 'Thorfinn grandit dans un contexte de guerres vikings.', 92);

SELECT num_manga, titre, prix_base, code_mangaka, code_genre, annee, duree FROM mangas WHERE num_manga = 25;