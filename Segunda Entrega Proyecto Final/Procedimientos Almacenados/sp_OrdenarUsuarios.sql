-- Procedimiento almacenado que ordena un campo de la tabla " Usuarios" de forma acendente o decendente.
--  Toma 2 parametros de entrada : " p_campoOrdenamiento" y " p_orden" y ordena la tabla de forma acendente o decendente

CREATE DEFINER=`admin`@`%` PROCEDURE `sp_OrdenarUsuarios`(
    IN p_campoOrdenamiento VARCHAR(45),
    IN p_orden VARCHAR(10)
)
BEGIN
    SET @query = CONCAT('SELECT * FROM Usuarios ORDER BY `', p_campoOrdenamiento, '` ', p_orden, ';');
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END

-- EJEMPLOS
-- CALL sp_OrdenarUsuarios('Nombre', 'ASC');
-- CALL sp_OrdenarUsuarios('Apellido', 'DESC');
