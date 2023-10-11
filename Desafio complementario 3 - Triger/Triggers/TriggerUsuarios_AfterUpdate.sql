
-- Creacion de Tabla Usuarios_Log --

CREATE TABLE Usuarios_Log (
    idLog INT AUTO_INCREMENT,
    idUsuarios INT,
    FechaHoraCambio DATETIME,
    Cambio VARCHAR(255),
    PRIMARY KEY (idLog)
);


-- Registra actualizaciones en tabla "Usuarios_Log ". Cualquier actualizacion de Usuarios se registra en nueva tabla  --- 
DELIMITER //
CREATE TRIGGER Usuarios_AfterUpdate
AFTER UPDATE ON Usuarios
FOR EACH ROW
BEGIN
    DECLARE cambio VARCHAR(255);
    
    SET cambio = '';
    
    IF OLD.Nombre <> NEW.Nombre THEN
        SET cambio = CONCAT(cambio, 'Nombre actualizado de "', OLD.Nombre, '" a "', NEW.Nombre, '"; ');
    END IF;
    
    IF OLD.Apellido <> NEW.Apellido THEN
        SET cambio = CONCAT(cambio, 'Apellido actualizado de "', OLD.Apellido, '" a "', NEW.Apellido, '"; ');
    END IF;
    
    IF OLD.Email <> NEW.Email THEN
        SET cambio = CONCAT(cambio, 'Email actualizado de "', OLD.Email, '" a "', NEW.Email, '"; ');
    END IF;
    
    IF OLD.Rol <> NEW.Rol THEN
        SET cambio = CONCAT(cambio, 'Rol actualizado de "', OLD.Rol, '" a "', NEW.Rol, '"; ');
    END IF;
    
    IF OLD.Genero <> NEW.Genero THEN
        SET cambio = CONCAT(cambio, 'Género actualizado de "', OLD.Genero, '" a "', NEW.Genero, '"; ');
    END IF;
    
    IF OLD.Area <> NEW.Area THEN
        SET cambio = CONCAT(cambio, 'Área actualizada de "', OLD.Area, '" a "', NEW.Area, '"; ');
    END IF;
    
    IF OLD.Cargo <> NEW.Cargo THEN
        SET cambio = CONCAT(cambio, 'Cargo actualizado de "', OLD.Cargo, '" a "', NEW.Cargo, '"; ');
    END IF;
    
    -- Agrega más condiciones IF para otros campos que desees registrar
    
    IF cambio <> '' THEN
        INSERT INTO Usuarios_Log (idUsuarios, Cambio, FechaHoraCambio)
        VALUES (NEW.idUsuarios, cambio, NOW());
    END IF;
END;
//
DELIMITER ;

-- Actualizacion de prueba
UPDATE Usuarios
SET Nombre = 'NuevoNombre', Apellido = 'NuevoApellido' , Email='NuevoEmail@email.com'
WHERE idUsuarios = 10;

select * from Usuarios_Log;


