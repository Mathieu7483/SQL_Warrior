SELECT titre, prenom, nom, pays
FROM mangas
JOIN mangakas ON mangas.code_mangaka = mangakas.code_mangaka
ORDER BY titre ASC