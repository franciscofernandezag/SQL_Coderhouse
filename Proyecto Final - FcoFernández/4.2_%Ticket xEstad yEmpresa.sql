DELIMITER //

CREATE DEFINER=`root`@`localhost` FUNCTION `TicketsPorEstadoYEmpresa`(estado VARCHAR(45), empresa_nombre VARCHAR(45)) RETURNS varchar(200) CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE resultado VARCHAR(200);
    DECLARE total_tickets INT;
    DECLARE tickets_estado INT;
    DECLARE porcentaje DECIMAL(10, 2);

    -- Obtiene el total de tickets en estado especificado para la empresa especificada
    SELECT COUNT(*) INTO tickets_estado
    FROM tickets
    INNER JOIN usuarios ON tickets.idUsuarios = usuarios.idUsuarios
    INNER JOIN empresa ON usuarios.idEmpresa = empresa.idEmpresa
    WHERE tickets.Estado = estado AND empresa.Nombre = empresa_nombre;

    -- Obtiene el total de tickets para la empresa especificada
    SELECT COUNT(*) INTO total_tickets
    FROM tickets
    INNER JOIN usuarios ON tickets.idUsuarios = usuarios.idUsuarios
    INNER JOIN empresa ON usuarios.idEmpresa = empresa.idEmpresa
    WHERE empresa.Nombre = empresa_nombre;

    -- Calcula el porcentaje
    IF total_tickets > 0 THEN
        SET porcentaje = (tickets_estado / total_tickets) * 100;
    ELSE
        SET porcentaje = 0;
    END IF;

    -- Construye el resultado
    SET resultado = CONCAT('Resultados para la empresa ', empresa_nombre, ' en estado ', estado, ': ', CHAR(10));
    SET resultado = CONCAT(resultado, 'Empresa: ', empresa_nombre, ', Tickets en estado: ', tickets_estado, ', Porcentaje: ', porcentaje, '%', CHAR(10));

    RETURN resultado;
END //

DELIMITER ;
