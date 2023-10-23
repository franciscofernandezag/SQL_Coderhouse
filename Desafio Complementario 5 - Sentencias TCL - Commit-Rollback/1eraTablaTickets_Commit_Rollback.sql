

-- Iniciar una transacción
START TRANSACTION;
-- Eliminar los registros 18, 19, 20 y 21 (ajusta los valores según tus necesidades)
DELETE FROM Tickets WHERE idTicket IN (18, 19, 20);

-- Comentamos la sentencia Rollback para prevenir la eliminación permanente de registros
-- ROLLBACK;

-- Finalizar la transacción
COMMIT;

select * from Tickets;
-- Insertar el primer registro con IdTickets 18

-- Insertar Registros para prueba
INSERT INTO Tickets (idTicket, idUsuarios, idCategoria, `Fecha de creacion`, Tipo, Prioridad, descripcion, Estado, Titulo)
VALUES (20, 9, 3, NOW(), "Incidente", "alta", "p_descripcionSolicitud3", 'Abierto', "p_titulo3");





