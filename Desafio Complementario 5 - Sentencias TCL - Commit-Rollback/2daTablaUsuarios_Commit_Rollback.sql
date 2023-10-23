-- Iniciar una transacción
START TRANSACTION;
-- Insertar los registros en la tabla "Usuarios" (ajusta los valores según tus necesidades)
INSERT INTO Usuarios (idEmpresa, Nombre, Apellido, Email, Rol, Genero, Area, Cargo, `Fecha de creacion`)
VALUES
    (1, 'Claudia', 'Diaz', 'Claudia.Diaz.a@example.com', 'Usuario', 'Femenino', 'Medicina', 'Enfermera', '2023-10-11 00:56:30'),
    (2, 'Morin', 'Canales', 'Morin.Canales.a@example.com', 'Usuario', 'Femenino', 'Operaciones', 'Analista de Contabilidad', '2023-10-11 00:56:30'),
    (3, 'Catalina', 'Lopez', 'cata.lopez@example.com', 'Usuario', 'Femenino', 'Arte', 'Pintora', '2023-10-11 00:56:30'),
    (4, 'Carolina', 'Corvalan', 'carolina.corvalan@example.com', 'Usuario', 'Femenino', 'Sicologia', 'Psicologa', '2023-10-11 00:56:30');

-- Agregar un savepoint después de la inserción del registro #4
SAVEPOINT Savepoint1;

-- Insertar 4 nuevos registros en la tabla "Usuarios" (ajusta los valores según tus necesidades)
INSERT INTO Usuarios (idEmpresa, Nombre, Apellido, Email, Rol, Genero, Area, Cargo, `Fecha de creacion`)
VALUES
    (5, 'Catalina', 'Gonzalez', 'Catalina.Gonzalez@example.com', 'Usuario', 'Femenino', 'Pedagogia', 'Profesora', '2023-10-11 00:56:30'),
    (1, 'Maritza', 'Valencia', 'Maritza.Valencia@example.com', 'Usuario', 'Femenino', 'Cocina', 'Chef', '2023-10-11 00:56:30'),
    (2, 'Noelia', 'Carcamo', 'Noelia.Carcamo@example.com', 'Usuario', 'Femenino', 'Pedagogia', 'Traductora', '2023-10-11 00:56:30'),
    (3, 'Scheznarda', 'Mitchel', 'Scheznarda.Mitchel@example.com', 'Usuario', 'Femenino', 'Comercial', 'Ejecutiva', '2023-10-11 00:56:30');

-- Agregar un savepoint después de la inserción del registro #8
SAVEPOINT Savepoint2;

-- Volver al primer savepoint para eliminar los últimos 4 registros insertados
ROLLBACK TO Savepoint1;

-- Finalizar la transacción
COMMIT;



-- Eliminar registros 
-- DELETE FROM Usuarios WHERE idUsuarios >= 27 AND idUsuarios <= 77;
-- DELETE FROM Usuarios WHERE idUsuarios = 40 AND idUsuarios = 41;

 -- select * from Usuarios;
