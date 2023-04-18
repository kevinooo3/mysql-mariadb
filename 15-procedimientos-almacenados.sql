USE metro_cdmx;
-- Los parametros de tipo int son los parametros que no se cambiaran dentro de la funcion.
-- Existen los parametros de tipo out , estos si seran cambiados dentro de la funcion.
DELIMITER //
CREATE PROCEDURE calculate_distance_between_lines(
    IN station_one POINT,
    IN station_two POINT,
    IN meters BOOLEAN
)
BEGIN

    IF meters THEN

        SELECT
        ST_Distance_Sphere(station_one, station_two) AS distances;

    ELSE

        SELECT
        ST_Distance_Sphere(station_one, station_two) / 1000 AS distances;

    END IF;

END //

DELIMITER ;

-- podemos llamar al procedimiento 
--call nombre_del_procedimiento(parametros)
--call calculate_distance_between_lines(POINT(-99.14912224,19.42729875),POINT(-99.13303971,19.42543703),false);


-- PARA ELIMINAR UN PROCEDURE STATEMNET , DROP PROCEDURE name_procedure