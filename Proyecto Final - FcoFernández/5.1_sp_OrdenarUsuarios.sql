DELIMITER //

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_OrdenarUsuarios`(
    IN p_campoOrdenamiento VARCHAR(45),
    IN p_orden VARCHAR(10)
)
BEGIN
    SET @query = CONCAT('SELECT * FROM usuarios ORDER BY `', p_campoOrdenamiento, '` ', p_orden, ';');
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //

DELIMITER ;
