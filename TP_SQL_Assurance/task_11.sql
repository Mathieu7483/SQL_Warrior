DELIMITER //

DROP PROCEDURE IF EXISTS ajouter_employe //

CREATE PROCEDURE ajouter_employe(
    IN p_nom VARCHAR(50),
    IN p_prenom VARCHAR(50),
    IN p_num_permis VARCHAR(12)
)
BEGIN
    DECLARE v_new_id INT;

    -- Calcul du nouvel ID (MAX + 1)
    SELECT COALESCE(MAX(id), 0) + 1 
    INTO v_new_id 
    FROM employes;

    -- Insertion du nouvel employé
    INSERT INTO employes (id, nom, prenom, num_permis)
    VALUES (
        v_new_id,
        UPPER(p_nom),
        CONCAT(UPPER(LEFT(p_prenom, 1)), LOWER(SUBSTRING(p_prenom, 2))),
        p_num_permis
    );
END //

DELIMITER ;