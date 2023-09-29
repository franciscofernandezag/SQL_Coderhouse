-- VISTA DE TODOS LOS TICKET  DE USUARIOS DE LA EMPRESA COCACOLA Y ACME
CREATE VIEW vista_tickets_abiertos_cocacola_y_acme AS 
SELECT
    tickets.idTicket AS N°Ticket,
    tickets.Titulo AS TituloTicket,
    tickets.Estado,
    empresa.Nombre AS NombreEmpresa
FROM 
    tickets
INNER JOIN
    usuarios ON tickets.idUsuarios = usuarios.idUsuarios
INNER JOIN
    empresa ON usuarios.idEmpresa = empresa.idEmpresa
WHERE 
    empresa.Nombre = 'Cocacola' OR empresa.Nombre = 'Acme';
    
select * from vista_tickets_abiertos_cocacola_y_acme;

-- VISTA DESDE QUE ACTIVOS SE CREAEON REGISTROS EN BASE DE DATOS DE CONOCIMIENTO

CREATE VIEW vista_activos_bdconocimiento AS 
SELECT
    activos.`Tipo de activo` AS TipodeActivo,
    activos.`Numero de serie` AS NumerodeSerie,
    bd_conocimientos.`Título del Conocimiento` AS TitulodelConocimiento,
    bd_conocimientos.`Descripción del Problema` AS DescripciondelProblema,
    bd_conocimientos.`Fecha de Creación` AS FechaCreacion,
    bd_conocimientos.`Última Actualización` AS UltimaActualizacion,
    bd_conocimientos.`Solución` AS Solucion
FROM 
    activos
INNER JOIN
    bd_conocimientos ON activos.idUsuarios = bd_conocimientos.idUsuarios;

select * from vista_activos_bdconocimiento;

-- VISTA NOTIFICACIONES QUE HAN RECIBIDO LOS USUARIOS 

CREATE VIEW vista_notificaciones_usuarios AS 
select 
    notificaciones.`Tipo de notificacion` AS TipodeNotificacion,
    notificaciones.`Contenido de notificacion` AS ContenidoNotificacion,
    notificaciones.`Fecha de notificacion` AS FechaNotificacion,
	usuarios.nombre AS NomUsuario,
	usuarios.Apellido AS Apellido
   FROM
    usuarios
INNER JOIN
    notificaciones ON usuarios.idUsuarios = notificaciones.idUsuarios;
 
   select * from vista_notificaciones_usuarios;
 
-- CATEGORIAS DE TICKETS TIPO INCIDENTE CON ESTADO ABIERTO Y PRIORIDAD URGENTE

CREATE VIEW Categorias_TicketAbiertos_Urgente AS 
SELECT 
    tickets.tipo AS TipoTicket,
    tickets.Prioridad AS PrioridadTicket,
    categorias.NombreCategoria
FROM
    Tickets
INNER JOIN
    categorias ON categorias.idCategoria = tickets.idCategoria1
WHERE 
    tickets.Prioridad = 'Urgente' AND tickets.tipo = 'Incidente';

select * from Categorias_TicketAbiertos_Urgente;


-- SOLUCIONES DE BASE DE DATOS DE CONOCIMIENTO QUE HAN CARGADO POR EMPRESA 
 
 CREATE VIEW SolucionsBDconocimiento_Empresa AS 
select 
    bd_conocimientos.`Título del Conocimiento` AS Titulo,
	bd_conocimientos.`Descripción del Problema` AS Descripcion,
    bd_conocimientos.Solución AS Solucion,
    empresa.nombre as NombreEmpresa
    from
    bd_conocimientos
    INNER JOIN 
    usuarios ON usuarios.idUsuarios = bd_conocimientos.idUsuarios
       INNER JOIN 
    empresa ON empresa.idEmpresa = usuarios.idEmpresa;
    
    select * from SolucionsBDconocimiento_Empresa;
