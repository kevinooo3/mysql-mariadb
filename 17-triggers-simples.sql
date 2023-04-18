-- un trigger : es una funcion que se activara apartir de algo.
--tambien se puede entender como una funcion desencadenada apartir de otro query


USE metro_cdmx;

CREATE TRIGGER update_updated_at_line
BEFORE UPDATE
ON `lines`
FOR EACH ROW
SET NEW.updated_at = NOW();

CREATE TRIGGER update_updated_at_stations
BEFORE UPDATE 
ON
`stations`
FOR EACH ROW
SET NEW.updated_at =NOW();

CREATE TRIGGER update_updated_at_locations
BEFORE UPDATE 
ON
`locations`
FOR EACH ROW
SET NEW.updated_at =NOW();

CREATE TRIGGER update_updated_at_trains
BEFORE UPDATE 
ON
`trains`
FOR EACH ROW
SET NEW.updated_at =NOW();

CREATE TRIGGER update_updated_at_lines_stations
BEFORE UPDATE 
ON
`lines_stations`
FOR EACH ROW
SET NEW.updated_at =NOW();

CREATE TRIGGER update_updated_at_stations_delete
BEFORE UPDATE 
ON
`stations_delete`
FOR EACH ROW
SET NEW.updated_at =NOW();