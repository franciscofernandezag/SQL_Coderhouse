-- Entrega de sentencion para segundo desafio complementario


-- Crea el Usuario 1 (Solo lectura en todas las tablas)
CREATE USER 'usuario1'@'localhost' IDENTIFIED BY 'coder123';

-- Asigna permisos de solo lectura en todas las tablas de la base de datos "helpdeskdb"
GRANT SELECT ON helpdeskdb.* TO 'usuario1'@'localhost';

-- Crea el Usuario 2 (Lectura, inserción y modificación de datos)
CREATE USER 'usuario2'@'localhost' IDENTIFIED BY 'coder123';

-- Asigna permisos de lectura, inserción y modificación en todas las tablas de la base de datos "helpdeskdbe"
GRANT SELECT, INSERT, UPDATE ON helpdeskdb.* TO 'usuario2'@'localhost';

-- No permitas la eliminación de tablas
-- En este caso no es necesario setear a los usarios para que no puedan eliminar tablas , ya que al no asignarles permisos de eliminacion desde un comienzo estos usuarios no los tienen 
-- En caso que si se asignaran , se pueden revocar con este comando 
REVOKE DELETE, DROP ON helpdeskdb.* FROM 'usuario1'@'localhost';
REVOKE DELETE, DROP ON helpdeskdb.* FROM 'usuario2'@'localhost';

-- Guarda los cambios
FLUSH PRIVILEGES;
