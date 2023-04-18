USE metro_cdmx;
    --SELECT * FROM `lines`;

-- solo mostrar unas columnas seleccionadas
   -- SELECT id, name, color FROM `lines`;

-- como sacar promedio 
    --SELECT AVG(year) AS year_avg FROM `trains`;
-- JOIN
    SELECT 
    `lines`.`name`,
    `trains`.`serial_number`
    FROM `lines`
    INNER JOIN `trains`
    ON `lines`.`id` = `trains`.`line_id`;