
-- INSERT TABLA EMPRESA 
INSERT INTO empresa (idEmpresa, Nombre, Area, Subarea, `Fecha de creacion`)
VALUES
    (1, 'Nestle', 'Produccion', 'Logistica', CURDATE()),
    (2, 'Cocacola', 'Ventas', 'Marketing', CURDATE()),
    (3, 'Constructora Emafal', 'Gerencia Construccion', 'Obra Juanito Perez', CURDATE()),
    (4, 'Deloitte', '', '', CURDATE()),
    (5, 'Acme', 'Armas', 'Correcamino', CURDATE());



-- INSERT TABLA USAURIOS

ALTER TABLE empresa AUTO_INCREMENT = 1;
INSERT INTO Usuarios (idEmpresa, Nombre, Apellido, Email, Rol, Genero, Area, Cargo, `Fecha de creacion`)
VALUES
    -- Empresa 1
    (1, 'Juan', 'González', 'juan.gonzalez@example.com', 'Administrador', 'Masculino', 'Ventas', 'Gerente de Ventas', NOW()),
    (1, 'Maria', 'Lopez', 'maria.lopez@example.com', 'Tecnico', 'Femenino', 'Soporte', 'Tecnico de Soporte', NOW()),
    (1, 'Luis', 'Martínez', 'luis.martinez@example.com', 'Usuario', 'Masculino', 'Ventas', 'Vendedor', NOW()),
    (1, 'Ana', 'Rodriguez', 'ana.rodriguez@example.com', 'Usuario', 'Femenino', 'Ventas', 'Vendedor', NOW()),
    (1, 'Pedro', 'Fernández', 'pedro.fernandez@example.com', 'Usuario', 'Masculino', 'Ventas', 'Vendedor', NOW()),
    -- Empresa 2
    (2, 'Carlos', 'Díaz', 'carlos.diaz@example.com', 'Administrador', 'Masculino', 'Recursos Humanos', 'Gerente de RRHH', NOW()),
    (2, 'Laura', 'Gómez', 'laura.gomez@example.com', 'Tecnico', 'Femenino', 'Recursos Humanos', 'Tecnico de RRHH', NOW()),
    (2, 'Javier', 'Perez', 'javier.perez@example.com', 'Usuario', 'Masculino', 'Recursos Humanos', 'Asistente de RRHH', NOW()),
    (2, 'Isabel', 'Sanchez', 'isabel.sanchez@example.com', 'Usuario', 'Femenino', 'Recursos Humanos', 'Asistente de RRHH', NOW()),
    (2, 'Sergio', 'Torres', 'sergio.torres@example.com', 'Usuario', 'Masculino', 'Recursos Humanos', 'Asistente de RRHH', NOW()),
    -- Empresa 3
    (3, 'Eduardo', 'López', 'eduardo.lopez@example.com', 'Administrador', 'Masculino', 'Tecnología', 'Gerente de Tecnología', NOW()),
    (3, 'Beatriz', 'García', 'beatriz.garcia@example.com', 'Tecnico', 'Femenino', 'Tecnología', 'Tecnico de Soporte', NOW()),
    (3, 'Raul', 'Hernandez', 'raul.hernandez@example.com', 'Usuario', 'Masculino', 'Tecnología', 'Desarrollador', NOW()),
    (3, 'Natalia', 'Dominguez', 'natalia.dominguez@example.com', 'Usuario', 'Femenino', 'Tecnología', 'Desarrollador', NOW()),
    (3, 'Alberto', 'Ferrer', 'alberto.ferrer@example.com', 'Usuario', 'Masculino', 'Tecnología', 'Desarrollador', NOW()),
    -- Empresa 4
    (4, 'Fernando', 'Ramos', 'fernando.ramos@example.com', 'Administrador', 'Masculino', 'Operaciones', 'Director de Operaciones', NOW()),
    (4, 'Elena', 'Perez', 'elena.perez@example.com', 'Tecnico', 'Femenino', 'Operaciones', 'Supervisor de Logística', NOW()),
    (4, 'Jorge', 'Garrido', 'jorge.garrido@example.com', 'Usuario', 'Masculino', 'Operaciones', 'Analista de Logística', NOW()),
    (4, 'Rosa', 'Jimenez', 'rosa.jimenez@example.com', 'Usuario', 'Femenino', 'Operaciones', 'Analista de Logística', NOW()),
    (4, 'Alejandro', 'Vargas', 'alejandro.vargas@example.com', 'Usuario', 'Masculino', 'Operaciones', 'Analista de Logística', NOW()),
    -- Empresa 5
	(5, 'Fernanda', 'Gutierrez', 'fernanda.gutierrez@example.com', 'Administrador', 'Femenino', 'Armas', 'Gerente de Armas', NOW()),
    (5, 'Martín', 'Lopez', 'martin.lopez@example.com', 'Tecnico', 'Masculino', 'Armas', 'Tecnico de Armas', NOW()),
    (5, 'Carolina', 'Díaz', 'carolina.diaz@example.com', 'Usuario', 'Femenino', 'Armas', 'Analista de Armas', NOW()),
    (5, 'Pablo', 'Rodriguez', 'pablo.rodriguez@example.com', 'Usuario', 'Masculino', 'Armas', 'Analista de Armas', NOW()),
    (5, 'Valeria', 'Ferrer', 'valeria.ferrer@example.com', 'Usuario', 'Femenino', 'Armas', 'Analista de Armas', NOW());

-- INSERT TABLA NOTIFICACIONES


INSERT INTO Notificaciones (idUsuarios, `Tipo de notificacion`, `Contenido de notificacion`, `Fecha de notificacion`)
SELECT idUsuarios, 'Info', '¡Bienvenido a nuestra plataforma de helpdesk!', NOW()
FROM Usuarios;

INSERT INTO Notificaciones (idUsuarios, `Tipo de notificacion`, `Contenido de notificacion`, `Fecha de notificacion`)
SELECT idUsuarios, 'Actualización de Tickets', 'Se ha realizado una actualización en su solicitud de soporte.', NOW()
FROM Usuarios
WHERE idUsuarios IN (1, 3, 5);


INSERT INTO Notificaciones (idUsuarios, `Tipo de notificacion`, `Contenido de notificacion`, `Fecha de notificacion`)
SELECT idUsuarios, 'Recordatorios', 'Recuerde completar su perfil antes del final de la semana.', NOW()
FROM Usuarios
WHERE idUsuarios IN (2, 4);

INSERT INTO Notificaciones (idUsuarios, `Tipo de notificacion`, `Contenido de notificacion`, `Fecha de notificacion`)
SELECT idUsuarios, 'Novedades o Actualizaciones de la Plataforma', 'Hemos lanzado una nueva función en la plataforma. ¡Compruébala ahora!', NOW()
FROM Usuarios;

INSERT INTO Notificaciones (idUsuarios, `Tipo de notificacion`, `Contenido de notificacion`, `Fecha de notificacion`)
SELECT idUsuarios, 'Eventos o Anuncios Importantes', 'Participa en nuestro próximo seminario web el viernes.', NOW()
FROM Usuarios
WHERE idUsuarios IN (1, 2, 5);



-- INSERT TABLA ACTIVOS

INSERT INTO activos (idEmpresa, idUsuarios, `Tipo de activo`, `Numero de serie`, Marca, Modelo, `Fecha de compra`, `N°Factura`, Proveedor, `Caracteristicas de HW`, Estado, `Fecha compra`)
VALUES
    -- Empresa 1
    (1, 1, 'Laptop', 'SERIAL001', 'Dell', 'Latitude', '2022-01-15', 12345, 'Tech Corp', '8 GB RAM, 256 GB SSD', 'Bueno', '2022-01-15'),
    (1, 2, 'Laptop', 'SERIAL002', 'HP', 'EliteBook', '2022-02-20', 23456, 'Tech World', '16 GB RAM, 512 GB SSD', 'Regular', '2022-02-20'),
    (1, 3, 'Laptop', 'SERIAL003', 'Lenovo', 'ThinkPad', '2022-03-25', 34567, 'Tech Pro', '8 GB RAM, 256 GB SSD', 'Bueno', '2022-03-25'),
    (1, 4, 'Laptop', 'SERIAL004', 'Acer', 'Aspire', '2022-04-10', 45678, 'Tech Solutions', '12 GB RAM, 512 GB SSD', 'Bueno', '2022-04-10'),
    (1, 5, 'Laptop', 'SERIAL005', 'Asus', 'ZenBook', '2022-05-15', 56789, 'Tech Innovations', '16 GB RAM, 1 TB SSD', 'Bueno', '2022-05-15'),
    -- Empresa 2
    (2, 6, 'Laptop', 'SERIAL006', 'Dell', 'Latitude', '2022-01-15', 12346, 'Tech Corp', '8 GB RAM, 256 GB SSD', 'Bueno', '2022-01-15'),
    (2, 7, 'Laptop', 'SERIAL007', 'HP', 'EliteBook', '2022-02-20', 23457, 'Tech World', '16 GB RAM, 512 GB SSD', 'Regular', '2022-02-20'),
    (2, 8, 'Laptop', 'SERIAL008', 'Lenovo', 'ThinkPad', '2022-03-25', 34568, 'Tech Pro', '8 GB RAM, 256 GB SSD', 'Bueno', '2022-03-25'),
    (2, 9, 'Laptop', 'SERIAL009', 'Acer', 'Aspire', '2022-04-10', 45679, 'Tech Solutions', '12 GB RAM, 512 GB SSD', 'Bueno', '2022-04-10'),
    (2, 10, 'Laptop', 'SERIAL010', 'Asus', 'ZenBook', '2022-05-15', 56790, 'Tech Innovations', '16 GB RAM, 1 TB SSD', 'Bueno', '2022-05-15'),
    -- Empresa 3
    (3, 11, 'Laptop', 'SERIAL011', 'Dell', 'Latitude', '2022-01-15', 12347, 'Tech Corp', '8 GB RAM, 256 GB SSD', 'Bueno', '2022-01-15'),
    (3, 12, 'Laptop', 'SERIAL012', 'HP', 'EliteBook', '2022-02-20', 23458, 'Tech World', '16 GB RAM, 512 GB SSD', 'Regular', '2022-02-20'),
    (3, 13, 'Laptop', 'SERIAL013', 'Lenovo', 'ThinkPad', '2022-03-25', 34569, 'Tech Pro', '8 GB RAM, 256 GB SSD', 'Bueno', '2022-03-25'),
    (3, 14, 'Laptop', 'SERIAL014', 'Acer', 'Aspire', '2022-04-10', 45680, 'Tech Solutions', '12 GB RAM, 512 GB SSD', 'Bueno', '2022-04-10'),
    (3, 15, 'Laptop', 'SERIAL015', 'Asus', 'ZenBook', '2022-05-15', 56791, 'Tech Innovations', '16 GB RAM, 1 TB SSD', 'Bueno', '2022-05-15'),
-- Empresa 4
    (4, 16, 'Laptop', 'SERIAL016', 'Dell', 'Latitude', '2022-01-15', 12348, 'Tech Corp', '8 GB RAM, 256 GB SSD', 'Bueno', '2022-01-15'),
    (4, 17, 'Laptop', 'SERIAL017', 'HP', 'EliteBook', '2022-02-20', 23459, 'Tech World', '16 GB RAM, 512 GB SSD', 'Regular', '2022-02-20'),
    (4, 18, 'Laptop', 'SERIAL018', 'Lenovo', 'ThinkPad', '2022-03-25', 34570, 'Tech Pro', '8 GB RAM, 256 GB SSD', 'Bueno', '2022-03-25'),
    (4, 19, 'Laptop', 'SERIAL019', 'Acer', 'Aspire', '2022-04-10', 45681, 'Tech Solutions', '12 GB RAM, 512 GB SSD', 'Bueno', '2022-04-10'),
    (4, 20, 'Laptop', 'SERIAL020', 'Asus', 'ZenBook', '2022-05-15', 56792, 'Tech Innovations', '16 GB RAM, 1 TB SSD', 'Bueno', '2022-05-15'),
-- Empresa 5
    (5, 21, 'Laptop', 'SERIAL021', 'Dell', 'Latitude', '2022-01-15', 12349, 'Tech Corp', '8 GB RAM, 256 GB SSD', 'Bueno', '2022-01-15'),
    (5, 22, 'Laptop', 'SERIAL022', 'HP', 'EliteBook', '2022-02-20', 23460, 'Tech World', '16 GB RAM, 512 GB SSD', 'Regular', '2022-02-20'),
    (5, 23, 'Laptop', 'SERIAL023', 'Lenovo', 'ThinkPad', '2022-03-25', 34571, 'Tech Pro', '8 GB RAM, 256 GB SSD', 'Bueno', '2022-03-25'),
    (5, 24, 'Laptop', 'SERIAL024', 'Acer', 'Aspire', '2022-04-10', 45682, 'Tech Solutions', '12 GB RAM, 512 GB SSD', 'Bueno', '2022-04-10'),
    (5, 25, 'Laptop', 'SERIAL025', 'Asus', 'ZenBook', '2022-05-15', 56793, 'Tech Innovations', '16 GB RAM, 1 TB SSD', 'Bueno', '2022-05-15');
select * from activos ;

-- INSERT TABLA CATEGORIAS
INSERT INTO Categorias (idCategoria, NombreCategoria)
VALUES
(1, 'Hardware'),
(2, 'Redes'),
(3, 'Software'),
(4, 'Plataforma'),
(5, 'Adquisiciones');

select * from comentarios ;

-- INSERT TABLA TICKETS

INSERT INTO Tickets (idUsuarios, idCategoria1, `Fecha de creacion`, Tipo, Prioridad, Descripcion, Estado)
VALUES
    (1, 3, NOW(), 'Requerimiento', 'Baja', 'Descripción del ticket 1', 'Abierto'),
    (5, 2, NOW(), 'Incidente', 'Media', 'Descripción del ticket 2', 'Pendiente Información'),
    (7, 1, NOW(), 'Requerimiento', 'Alta', 'Descripción del ticket 3', 'Trabajo en Curso'),
    (12, 4, NOW(), 'Requerimiento', 'Media', 'Descripción del ticket 4', 'Abierto'),
    (15, 5, NOW(), 'Incidente', 'Alta', 'Descripción del ticket 5', 'Pendiente Información'),
    (10, 3, NOW(), 'Requerimiento', 'Baja', 'Descripción del ticket 6', 'Trabajo en Curso'),
    (22, 2, NOW(), 'Requerimiento', 'Alta', 'Descripción del ticket 7', 'Abierto'),
    (18, 1, NOW(), 'Incidente', 'Media', 'Descripción del ticket 8', 'Pendiente Información'),
    (8, 5, NOW(), 'Requerimiento', 'Urgente', 'Descripción del ticket 9', 'Trabajo en Curso'),
    (25, 4, NOW(), 'Requerimiento', 'Alta', 'Descripción del ticket 10', 'Abierto'),
    (11, 3, NOW(), 'Incidente', 'Baja', 'Descripción del ticket 11', 'Pendiente Información'),
    (14, 2, NOW(), 'Requerimiento', 'Alta', 'Descripción del ticket 12', 'Trabajo en Curso'),
    (20, 1, NOW(), 'Requerimiento', 'Media', 'Descripción del ticket 13', 'Abierto'),
    (9, 5, NOW(), 'Incidente', 'Urgente', 'Descripción del ticket 14', 'Pendiente Información'),
    (6, 4, NOW(), 'Requerimiento', 'Baja', 'Descripción del ticket 15', 'Trabajo en Curso');

-- INSERT TABLA COMENTARIOS
select * from tickets;
INSERT INTO Comentarios (idUsuarios, `Fecha y hora`, Texto_Comentario)
VALUES
    (1,NOW(), 'Este es un comentario de prueba para el Ticket #1.'),
    (2, NOW(), 'Gracias por abrir el Ticket #1. Estaremos en contacto.'),
    (3,NOW(), 'Hemos recibido su solicitud en el Ticket #2. Lo atenderemos pronto.'),
    (4,NOW(), 'Por favor, proporcione más detalles sobre el problema en el Ticket #2.'),
    (5,NOW(), 'El Ticket #3 ha sido resuelto con éxito. Cualquier otro problema, háganoslo saber.'),
    (6,NOW(), '¡Excelente! ¡Gracias por su ayuda!'),
    (7,NOW(), 'Este es un comentario de prueba para el Ticket #4.'),
    (8,NOW(), 'Necesitamos más información para resolver el Ticket #4.'),
    (9,NOW(), 'Hemos comenzado a trabajar en su solicitud del Ticket #5.'),
    (10,NOW(), 'El Ticket #5 está en proceso de resolución.'),
    (11,NOW(), 'Por favor, especifique más detalles sobre el Ticket #6.'),
    (12,NOW(), 'Gracias por informarnos sobre el Ticket #6. Estamos investigando.'),
    (13,NOW(), 'Hemos recibido su comentario sobre el Ticket #7. Le responderemos pronto.'),
    (14,NOW(), 'El Ticket #7 ha sido marcado como resuelto. ¿Hay algo más en lo que podamos ayudar?'),
    (15,NOW(), 'Este es un comentario de prueba para el Ticket #8.');


-- INSERT TABLA BD_CONOCIEMIENTOS

INSERT INTO bd_conocimientos ( idUsuarios, `Título del Conocimiento`, `Descripción del Problema`, Solución, `Fecha de Creación`, `Última Actualización`)
VALUES
    (1, 'Conocimiento 1', 'Descripción del problema 1', 'Pasos para la solución 1', NOW(), NOW()),
    (20, 'Conocimiento 2', 'Descripción del problema 2', 'Pasos para la solución 2', NOW(), NOW()),
    (7, 'Conocimiento 3', 'Descripción del problema 3', 'Pasos para la solución 3', NOW(), NOW()),
    (11, 'Conocimiento 3', 'Descripción del problema 4', 'Pasos para la solución 4', NOW(), NOW()),
    (3, 'Conocimiento 3', 'Descripción del problema 5', 'Pasos para la solución 5', NOW(), NOW()),
    (5, 'Conocimiento 3', 'Descripción del problema 6', 'Pasos para la solución 6', NOW(), NOW());





