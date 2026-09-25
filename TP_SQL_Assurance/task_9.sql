DELIMITER //

DROP FUNCTION IF EXISTS date_fin_contrat //

CREATE FUNCTION date_fin_contrat(p_id_contrat INT)
RETURNS DATE
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE v_date_effet DATETIME;
    DECLARE v_duree INT;
    DECLARE v_date_fin DATE;

    -- Récupération de la date d'effet et de la durée pour le contrat donné
    SELECT date_effet, duree 
    INTO v_date_effet, v_duree
    FROM contrats
    WHERE id = p_id_contrat;

    -- Si le contrat n'existe pas, SELECT INTO laisse les variables à NULL
    IF v_date_effet IS NULL THEN
        RETURN NULL;
    END IF;

    -- Calcul de la date de fin avec DATE_ADD
    SET v_date_fin = DATE(DATE_ADD(v_date_effet, INTERVAL v_duree MONTH));

    RETURN v_date_fin;
END //

DELIMITER ;


SELECT
    c.id,
    v.modele,
    c.date_effet,
    c.duree,
    date_fin_contrat(c.id) AS date_fin
FROM contrats c
INNER JOIN vehicules v
    ON c.vehicule = v.id
ORDER BY c.id;