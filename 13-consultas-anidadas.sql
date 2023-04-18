USE metro_cdmx;
 -- para este ejemplo usaremos dos columnas de distintas tablas EN UNA TABLA PIVOTE `lines_stations`.
 CREATE TABLE `lines_stations`(

    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `line_id` BIGINT(20) UNSIGNED NOT NULL,
    `station_id` BIGINT(20) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id),
    CONSTRAINT `lines_stations_line_id_foreign`
    FOREIGN KEY (`line_id`) REFERENCES `lines`(`id`),
    CONSTRAINT `lines_stations_station_id_foreign`
    FOREIGN KEY (`station_id`) REFERENCES `stations`(`id`)
 )
 DEFAULT CHARSET=utf8mb4
 COLLATE=utf8mb4_unicode_ci;

 -- Insercion de datos a la tabla line_stations con consultas anidadas.
 -- este codigo se debe ejecutar en el query de mysql workbench , debido a que en la consola no reconoce las tildes.
 INSERT INTO `lines_stations` (line_id,station_id) VALUES
  ((
    SELECT `lines`.`id` FROM `lines` WHERE `lines`.`color`= 'Rosa'
  ),(
    SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name`= 'Lázaro Cárdenas'
  ));
    