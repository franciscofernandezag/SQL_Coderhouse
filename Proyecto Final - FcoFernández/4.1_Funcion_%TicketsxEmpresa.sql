DELIMITER //

CREATE FUNCTION CalcularPorcentajeTickets(empresa_nombre VARCHAR(255))
RETURNS DECIMAL(5, 2)
DETERMINISTIC
BEGIN
    DECLARE total_tickets INT;
    DECLARE tickets_empresa INT;
    DECLARE porcentaje DECIMAL(5, 2);

    -- Calcula el total de tickets
    SELECT COUNT(*) INTO total_tickets FROM Tickets;

    -- Calcula el total de tickets creados por la empresa especificada
    SELECT COUNT(*) INTO tickets_empresa FROM Tickets t
    INNER JOIN Usuarios u ON t.idUsuarios = u.idUsuarios
    INNER JOIN Empresa e ON u.idEmpresa = e.idEmpresa
    WHERE e.Nombre = empresa_nombre;

    -- Calcula el porcentaje
    IF total_tickets > 0 THEN
        SET porcentaje = (tickets_empresa / total_tickets) * 100;
    ELSE
        SET porcentaje = 0;
    END IF;

    RETURN porcentaje;
END //

DELIMITER ;
