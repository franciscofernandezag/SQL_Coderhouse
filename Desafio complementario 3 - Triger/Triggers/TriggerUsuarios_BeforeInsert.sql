DELIMITER //
CREATE TRIGGER Usuarios_BeforeInsert
BEFORE INSERT ON Usuarios
FOR EACH ROW
BEGIN
    -- Verificar si el correo electrónico ya existe en la tabla
    IF EXISTS (SELECT 1 FROM Usuarios WHERE Email = NEW.Email) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No se puede crear el usuario porque el correo ya existe en otro usuario.';
    END IF;
END;
//
DELIMITER ;

-- Prueba agregando a un usuario con correo ya existente 

INSERT INTO Usuarios (idEmpresa, Nombre, Apellido, Email, Rol, Genero, Area, Cargo, `Fecha de creacion`)
VALUES (5, 'NombreNuevo', 'ApellidoNuevo', 'carolina.diaz@example.com', 'RolNuevo', 'GeneroNuevo', 'AreaNueva', 'CargoNuevo', NOW());


