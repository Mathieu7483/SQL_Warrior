SELECT id, statut
FROM velos
WHERE id = 1;

START TRANSACTION;

UPDATE velos
SET statut = 'maintenance'
WHERE id = 1;

SELECT id, statut
FROM velos
WHERE id = 1;

ROLLBACK;

SELECT id, statut
FROM velos
WHERE id = 1;