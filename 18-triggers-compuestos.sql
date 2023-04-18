USE metro_cdmx;
-- creacion de tablas conductores y conductores activos
CREATE TABLE `drivers` (

    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,

    `name` VARCHAR(20),
    `status` BOOLEAN NOT NULL DEFAULT false,

    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id)

) 
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `active_drivers` (

    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,

    `driver_id` BIGINT(20) UNSIGNED NOT NULL,

    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id)

) 
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

--llenado de datos a la tabla 

INSERT INTO `drivers` (name) VALUES
("Pedro"),
("Pablo"),
("José"),
("María"),
("Amanda");



-- CREACION DEL TRIGGER COMPUESTO

DELIMITER //
CREATE TRIGGER update_active_drivers
AFTER UPDATE
ON `drivers`
FOR EACH ROW
BEGIN

    IF NEW.status = 1 THEN
        INSERT INTO `active_drivers` (driver_id) VALUES (NEW.id);
    ELSE
        DELETE FROM `active_drivers` WHERE driver_id = NEW.id;
    END IF;

END; //

DELIMITER ;