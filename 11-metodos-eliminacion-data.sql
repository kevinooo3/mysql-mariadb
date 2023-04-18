USE metro_cdmx;
--borra todos los registros de la tabla pero no reinicia el id, es decir el di sigue incrementando
    --DELETE FROM `stations_delete`;
-- truncate table aparte de borrar todos los registros, este si reinicia la tabla.
    TRUNCATE TABLE `stations_delete`;
-- eliminar toda la tabla por completo
    --DROP TABLE `stations_delete`; 