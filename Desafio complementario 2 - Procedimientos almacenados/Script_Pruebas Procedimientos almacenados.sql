
-- sp_OrdenarUsuarios -- Llamada al procedimiento almacenado para registrar una nueva solicitud
-- Ordenar la tabla "usuarios" por el campo "Nombre" de manera ascendente
CALL sp_OrdenarUsuarios('Nombre', 'ASC');
-- Ordenar la tabla "usuarios" por el campo "Fecha de creacion" de manera descendente
CALL sp_OrdenarUsuarios('Fecha de creacion', 'DESC');


-- RegistrarSolicitud -- Llamada al procedimiento almacenado para registrar una nuevo tickets
CALL sp_RegistrarSolicitud(
    3, -- ID del usuario que crea la solicitud (ejemplo: usuario con ID 3)
    'Esta es una solicitud de prueba 2.', -- Descripción de la solicitud
    2, -- ID de la categoría de la solicitud (categoría "Redes")
    'Solicitud de soporte plataforma', -- Tipo de solicitud
    'Media', -- Prioridad de la solicitud
    'Solicitud de ayuda con la plataforma' -- Título de la solicitud
);

