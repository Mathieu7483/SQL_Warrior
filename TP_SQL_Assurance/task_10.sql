DELIMITER //

DROP FUNCTION IF EXISTS vehicule_est_assure //

CREATE FUNCTION vehicule_est_assure(p_id_vehicule INT)
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE v_count INT;

    -- Compte le nombre de contrats actifs pour ce véhicule à la date du jour
    SELECT COUNT(*)
    INTO v_count
    FROM contrats
    WHERE vehicule = p_id_vehicule
      AND CURRENT_DATE() BETWEEN date_effet AND DATE_ADD(date_effet, INTERVAL duree MONTH);

    -- Retourne 1 si au moins un contrat actif existe, sinon 0
    IF v_count > 0 THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END //

DELIMITER ;