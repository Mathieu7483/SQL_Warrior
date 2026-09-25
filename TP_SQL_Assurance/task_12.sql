DELIMITER //

DROP TRIGGER IF EXISTS trg_verifier_places //

CREATE TRIGGER trg_verifier_places
BEFORE INSERT ON deplacements
FOR EACH ROW
BEGIN
    DECLARE v_nb_places INT;
    DECLARE v_nb_occupes INT;

    -- Récupère la capacité maximale du véhicule inséré
    SELECT tv.nbplaces 
    INTO v_nb_places
    FROM vehicules v
    JOIN types_vehicules tv ON v.type_vehicule = tv.id
    WHERE v.id = NEW.vehicule;

    -- Compte le nombre de déplacements déjà enregistrés pour ce véhicule sur ce créneau
    SELECT COUNT(*) 
    INTO v_nb_occupes
    FROM deplacements
    WHERE vehicule = NEW.vehicule
      AND debut_dep = NEW.debut_dep
      AND fin_dep = NEW.fin_dep;

    -- Si la capacité est atteinte ou dépassée, on bloque l'insertion
    IF v_nb_occupes >= v_nb_places THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Capacite du vehicule depassee';
    END IF;
END //

DELIMITER ;