DELIMITER //

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_RegistrarSolicitud`(
    IN p_idUsuario INT,
    IN p_descripcionSolicitud TEXT,
    IN p_idCategoria INT,
    IN p_tipo VARCHAR(45),
    IN p_prioridad VARCHAR(45),
    IN p_titulo VARCHAR(255)
)
BEGIN
    -- Insertar la solicitud en la tabla de tickets
    INSERT INTO tickets (idUsuarios, idCategoria1, `Fecha de creacion`, Tipo, Prioridad, descripcion, Estado, Titulo)
    VALUES (p_idUsuario, p_idCategoria, NOW(), p_tipo, p_prioridad, p_descripcionSolicitud, 'Abierto', p_titulo);

    -- Obtener el ID del ticket recién creado
    SET @idTicket = LAST_INSERT_ID();

    -- Registrar la solicitud en el registro de comentarios
    INSERT INTO comentarios (idUsuarios, `Fecha y hora`, texto_Comentario)
    VALUES (p_idUsuario, NOW(), CONCAT('Solicitud creada: ', p_descripcionSolicitud));

    -- Devolver el ID del ticket recién creado
    SELECT @idTicket AS idTicket;
END //

DELIMITER ;
