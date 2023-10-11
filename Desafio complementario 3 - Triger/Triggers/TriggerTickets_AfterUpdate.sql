
-- Creacion de Tabla Ticket Log --

CREATE TABLE Ticket_Log (
    idLog INT AUTO_INCREMENT,
    idTicket INT,
    FechaHoraCambio DATETIME,
    Cambio VARCHAR(255),
    PRIMARY KEY (idLog)
);

-- Registra actualizaciones del campo Estado en tabla "Ticket_Log". Cualquier actualizacion del campo estado se registra en la nueva tabla  --- 
DELIMITER //
CREATE TRIGGER Tickets_AfterUpdate
AFTER UPDATE ON Tickets
FOR EACH ROW
BEGIN
    IF OLD.Estado <> NEW.Estado THEN
        INSERT INTO Ticket_Log (idTicket, Cambio, FechaHoraCambio)
        VALUES (NEW.idTicket, CONCAT('Estado actualizado de "', OLD.Estado, '" a "', NEW.Estado, '"'), NOW());
    END IF;
END;
//
DELIMITER ;


