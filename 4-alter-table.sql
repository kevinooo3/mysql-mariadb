USE metro_cdmx;

ALTER TABLE `stations`
    MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY(id);

-- EN CASO DESEEMOS AGREGAR UNA LLAVE FORANEA A NUESTRA TABLA : ADD CONTRAINT `trains_line_id_foreign`
-- FOREIGN KEY(`line_id`) REFERENCES `lines`(`id`);


-- para ver los cambios en nuestra tabla usamos : DESCRIBE nombreTabla;