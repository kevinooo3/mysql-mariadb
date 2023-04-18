--Crear las tablas
USE metro_cdmx;
CREATE TABLE `lines`(
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(10) NOT NULL,
    `color` VARCHAR(15) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
)
 DEFAULT CHARSET=utf8mb4
 COLLATE=utf8mb4_unicode_ci;
-- este ultimo default es para los caracteres especiales
-- para ver si hemos creado la tabla correctamente: show tables


CREATE TABLE `stations`(
    `id` BIGINT(20) ,
    `name` VARCHAR(50) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)
 DEFAULT CHARSET=utf8mb4
 COLLATE=utf8mb4_unicode_ci;

 --Creacion de tabla de trains
 CREATE TABLE `trains`(
    `serial_number` VARCHAR(10) NOT NULL,
    `line_id` BIGINT(20) UNSIGNED NOT NULL,
    `type` TINYINT(4) NOT NULL,
    `year` INT(4) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (serial_number),
    CONSTRAINT `trains_line_id_foreign`
    FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`)
 )
 DEFAULT CHARSET=utf8mb4
 COLLATE=utf8mb4_unicode_ci;

 CREATE TABLE `stations_delete`(
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
 )
 DEFAULT CHARSET=utf8mb4
 COLLATE=utf8mb4_unicode_ci;