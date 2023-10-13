-- VISTA DE TODOS LOS TICKET  DE USUARIOS DE LA EMPRESA COCACOLA Y ACME -----------------------------------
-- Esta vista muestra todos los tickets abiertos relacionados con los usuarios de las empresas "Cocacola" y "Acme".
-- Proporciona información sobre el número de ticket, el título del ticket, el estado y el nombre de la empresa a la que están asociados
CREATE VIEW vista_tickets_abiertos_cocacola_y_acme AS 
SELECT
    Tickets.idTicket AS N°Ticket,
    Tickets.Titulo AS TituloTicket,
    Tickets.Estado,
    Empresa.Nombre AS NombreEmpresa
FROM 
    Tickets
INNER JOIN
    Usuarios ON Tickets.idUsuarios = Usuarios.idUsuarios
INNER JOIN
    Empresa ON Usuarios.idEmpresa = Empresa.idEmpresa
WHERE 
    Empresa.Nombre = 'Cocacola' OR Empresa.Nombre = 'Acme';
    
select * from vista_tickets_abiertos_cocacola_y_acme;

-- VISTA DESDE QUE ACTIVOS SE CREAEON REGISTROS EN BASE DE DATOS DE CONOCIMIENTO -------------------------------
-- Esta vista relaciona los activos con los registros de la base de datos de conocimiento y muestra información relevante, como el tipo de activo,
-- el número de serie, el título del conocimiento, la descripción del problema, la fecha de creación, la última actualización y la solución asociada.
CREATE VIEW vista_activos_bdconocimiento AS 
SELECT
    Activos.`Tipo de activo` AS TipodeActivo,
    Activos.`Numero de serie` AS NumerodeSerie,
    Bd_conocimientos.`Título del Conocimiento` AS TitulodelConocimiento,
    Bd_conocimientos.`Descripción del Problema` AS DescripciondelProblema,
    Bd_conocimientos.`Fecha de Creación` AS FechaCreacion,
    Bd_conocimientos.`Última Actualización` AS UltimaActualizacion,
    Bd_conocimientos.`Solución` AS Solucion
FROM 
    Activos
INNER JOIN
    Bd_conocimientos ON Activos.idUsuarios = Bd_conocimientos.idUsuarios;

select * from vista_activos_bdconocimiento;

-- VISTA NOTIFICACIONES QUE HAN RECIBIDO LOS USUARIOS -----------------------------------
-- Esta vista muestra las notificaciones que los usuarios han recibido. Incluye detalles como el tipo de notificación, el contenido de la notificación,
-- la fecha de notificación y el nombre y apellido del usuario al que se dirigieron las notificaciones.
CREATE VIEW vista_notificaciones_usuarios AS 
select 
    Notificaciones.`Tipo de notificacion` AS TipodeNotificacion,
    Notificaciones.`Contenido de notificacion` AS ContenidoNotificacion,
    Notificaciones.`Fecha de notificacion` AS FechaNotificacion,
	Usuarios.nombre AS NomUsuario,
	Usuarios.Apellido AS Apellido
   FROM
    Usuarios
INNER JOIN
    Notificaciones ON Usuarios.idUsuarios = Notificaciones.idUsuarios;
 
   select * from vista_notificaciones_usuarios;
 
-- CATEGORIAS DE TICKETS TIPO INCIDENTE CON ESTADO ABIERTO Y PRIORIDAD URGENTE -------------------------------------------------
-- Esta vista se centra en los tickets de tipo "Incidente" con estado "Abierto" y prioridad "Urgente". 
-- Muestra información sobre la categoría de estos tickets, su tipo y prioridad.

CREATE VIEW vista_categorias_TicketAbiertos_Urgente AS 
SELECT 
    Tickets.tipo AS TipoTicket,
    Tickets.Prioridad AS PrioridadTicket,
    Categorias.NombreCategoria
FROM
    Tickets
INNER JOIN
    Categorias ON Categorias.idCategoria = Tickets.idCategoria
WHERE 
    Tickets.Prioridad = 'Urgente' AND Tickets.tipo = 'Incidente';

select * from Categorias_TicketAbiertos_Urgente; 


-- VISTA DE SOLUCIONES DE BASE DE DATOS DE CONOCIMIENTO QUE HAN CARGADO POR EMPRESA --------------------------------------------------
-- Esta vista presenta las soluciones de la base de datos de conocimiento que han sido cargadas por empresas.
-- Incluye detalles como el título del conocimiento,
-- la descripción del problema, la solución y el nombre de la empresa que contribuyó a la carga de la solución.
 
CREATE VIEW vista_solucionesBDconocimiento_empresa AS 
SELECT 
    Bd_conocimientos.`Título del Conocimiento` AS Titulo,
    Bd_conocimientos.`Descripción del Problema` AS Descripcion,
    Bd_conocimientos.Solución AS Solucion,
    Empresa.nombre as NombreEmpresa
FROM
    Bd_conocimientos
INNER JOIN 
    Usuarios ON Usuarios.idUsuarios = Bd_conocimientos.idUsuarios
INNER JOIN 
    Empresa ON Empresa.idEmpresa = Usuarios.idEmpresa;

SELECT * FROM vista_solucionesBDconocimiento_empresa;

-- VISTA DE TODOS LOS TICKETS ASIGNADOS POR EMPRESA --------------------------------------------------
-- Esta vista muestra todos los tickets asignados a las empresas. Proporciona información sobre el número de ticket, el título del ticket,
-- el estado y el nombre de la empresa a la que están asignados. Esta vista utiliza un nivel de seguridad definido por el usuario admin@%.

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `admin`@`%` 
    SQL SECURITY DEFINER
VIEW `vista_total_tickets_empresas` AS
    SELECT 
        `Tickets`.`idTicket` AS N°Ticket,
        Tickets.Titulo AS TituloTicket,
        Tickets.Estado AS Estado,
        Empresa.Nombre AS NombreEmpresa
    FROM
        ((Tickets
        JOIN Usuarios ON ((Tickets.idUsuarios = Usuarios.idUsuarios)))
        JOIN Empresa ON ((Usuarios.idEmpresa = Empresa.idEmpresa)))
