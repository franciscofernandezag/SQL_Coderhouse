-- PRUEBA FUNCION (TICKETXEMPRESA) PARA CALCULAR PORCENTAJE DE TICKETS POR EMPRESA RESPECTO AL TOTAL DE TICKET CREADOR EN TODAS LAS EMPRESAS
SELECT PorcentajeTicketsPorEmpresa('Nestle') AS Porcentaje;
SELECT PorcentajeTicketsPorEmpresa('Cocacola') AS Porcentaje;
SELECT PorcentajeTicketsPorEmpresa('Deloitte') AS Porcentaje;
SELECT PorcentajeTicketsPorEmpresa('Constructora Emafal') AS Porcentaje;
SELECT PorcentajeTicketsPorEmpresa('Acme') AS Porcentaje;

-- Query para comprobar el total de ticket por empresa
SELECT
    empresa.Nombre AS NombreEmpresa,
    COUNT(tickets.idTicket) AS TotalTicketsCreados
FROM 
    empresa
LEFT JOIN
    usuarios ON empresa.idEmpresa = usuarios.idEmpresa
LEFT JOIN
    tickets ON usuarios.idUsuarios = tickets.idUsuarios
GROUP BY
    empresa.Nombre;



-- PRUEBA FUNCION PARA CALCULAR PORCENTAJE DE TICKETS POR EMPRESA RESPECTO AL TOTAL DE TICKET CREADOR EN TODAS LAS EMPRESAS
SELECT TicketsPorEstadoYEmpresa('Abierto', 'Nestle') AS Resultado;
SELECT TicketsPorEstadoYEmpresa('Trabajo en Curso', 'Cocacola') AS Resultado;
SELECT TicketsPorEstadoYEmpresa('cerrado', 'Deloitte') AS Resultado;
SELECT TicketsPorEstadoYEmpresa('Abierto', 'Acme') AS Resultado;
SELECT TicketsPorEstadoYEmpresa('Pendiente informacion', 'Constructora Emafal') AS Resultado;


  SELECT COUNT(*) INTO tickets_estado
    FROM tickets
    INNER JOIN usuarios ON tickets.idUsuarios = usuarios.idUsuarios
    INNER JOIN empresa ON usuarios.idEmpresa = empresa.idEmpresa
    WHERE tickets.Estado = estado AND empresa.Nombre = empresa_nombre;


-- Query para comprobar el total de ticket por estado y empresa

SELECT
    tickets.idTicket AS NúmeroTicket,
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
    empresa.Nombre = 'Acme'; 
