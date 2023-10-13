DELIMITER //
CREATE TRIGGER Tickets_BeforeInsert
BEFORE INSERT ON Tickets
FOR EACH ROW
BEGIN
    DECLARE estado_valido INT;
    SET estado_valido = 0;
    
    IF NEW.Estado = 'Abierto' OR NEW.Estado = 'Trabajo en Curso' OR NEW.Estado = 'Pendiente Informacion' OR NEW.Estado = 'Cerrado' THEN
        SET estado_valido = 1;
    END IF;
    
    IF estado_valido = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El estado no es válido. Debe ser Abierto, Trabajo en Curso, Pendiente Información o Cerrado.';
    END IF;
END;
//
DELIMITER ;

-- Prueba de trigger con creacion de tickets

INSERT INTO Tickets (idUsuarios, idCategoria, `Fecha de creacion`, Tipo, Prioridad, descripcion, resolucion, Estado, `Fecha cambio estado`, Titulo)
VALUES (8, 3, NOW(), 'Incidente', 'Alta', 'TEST TRIGGER', 'TEST TRIGGER', 'Abierto123', NOW(), 'TEST TRIGGER');
 
 -- Prueba de trigger con actualizacion de estado de ticket 
 
 UPDATE Tickets
SET Estado = 'Casi resuelto'
WHERE idTicket = 15;
