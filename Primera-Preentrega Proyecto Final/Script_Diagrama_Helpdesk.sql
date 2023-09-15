
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


CREATE SCHEMA IF NOT EXISTS `helpdeskdb` DEFAULT CHARACTER SET utf8 ;
USE `helpdeskdb` ;

-- -----------------------------------------------------
-- Table `helpdeskdb`.`Empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `helpdeskdb`.`Empresa` (
  `idEmpresa` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Area` VARCHAR(45) NOT NULL,
  `Subarea` VARCHAR(45) NULL,
  `Fecha de creacion` DATE NULL,
  PRIMARY KEY (`idEmpresa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `helpdeskdb`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `helpdeskdb`.`Usuarios` (
  `idUsuarios` INT NOT NULL AUTO_INCREMENT,
  `Empresa_idEmpresa1` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Rol` VARCHAR(45) NOT NULL,
  `Genero` VARCHAR(45) NOT NULL,
  `Area` VARCHAR(45) NOT NULL,
  `Cargo` VARCHAR(45) NOT NULL,
  `Fecha de creacion` DATETIME NULL,
  PRIMARY KEY (`idUsuarios`),
  INDEX `fk_Usuarios_Empresa1_idx` (`Empresa_idEmpresa1` ASC) VISIBLE,
  CONSTRAINT `fk_Usuarios_Empresa1`
    FOREIGN KEY (`Empresa_idEmpresa1`)
    REFERENCES `helpdeskdb`.`Empresa` (`idEmpresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `helpdeskdb`.`Activos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `helpdeskdb`.`Activos` (
  `idActivo` INT UNSIGNED NOT NULL,
  `Empresa_idEmpresa` INT NOT NULL,
  `Tipo de activo` VARCHAR(45) NOT NULL,
  `Numero de serie` VARCHAR(45) NOT NULL,
  `Marca` VARCHAR(45) NOT NULL,
  `Modelo` VARCHAR(45) NOT NULL,
  `Fecha de compra` DATE NOT NULL,
  `N°Factura` INT NOT NULL AUTO_INCREMENT,
  `Proveedor` VARCHAR(45) NOT NULL,
  `Caracteristicas de HW` VARCHAR(45) NULL,
  `Estado` VARCHAR(45) NULL,
  `Fecha compra` DATE NULL,
  PRIMARY KEY (`idActivo`),
  INDEX `fk_Activos_Empresa1_idx` (`Empresa_idEmpresa` ASC) VISIBLE,
  CONSTRAINT `fk_Activos_Empresa1`
    FOREIGN KEY (`Empresa_idEmpresa`)
    REFERENCES `helpdeskdb`.`Empresa` (`idEmpresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `helpdeskdb`.`Categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `helpdeskdb`.`Categorias` (
  `idCategoria` INT NOT NULL,
  `1erNivel` VARCHAR(45) NULL,
  `2doNivel` VARCHAR(45) NULL,
  `3erNivel` VARCHAR(45) NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `helpdeskdb`.`Tickets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `helpdeskdb`.`Tickets` (
  `idTicket` INT NOT NULL,
  `Activos_idActivo` INT UNSIGNED NOT NULL,
  `Usuarios_idUsuarios` INT NOT NULL,
  `Categorias_idCategoria1` INT NOT NULL,
  `Fecha de creacion` DATETIME NULL,
  `Fecha de cierre` DATETIME NULL,
  `Tipo` VARCHAR(45) NULL,
  `Prioridad` INT NULL,
  `Descripcion` VARCHAR(45) NULL,
  `Resolucion` VARCHAR(45) NULL,
  `Comentarios` VARCHAR(45) NULL,
  `Fecha comentario` DATE NULL,
  `Estado` VARCHAR(45) NULL,
  `Fecha cambio estado` DATETIME NULL,
  PRIMARY KEY (`idTicket`),
  INDEX `fk_Tickets_Usuarios1_idx` (`Usuarios_idUsuarios` ASC) VISIBLE,
  INDEX `fk_Tickets_Activos1_idx` (`Activos_idActivo` ASC) VISIBLE,
  INDEX `fk_Tickets_Categorias1_idx` (`Categorias_idCategoria1` ASC) VISIBLE,
  CONSTRAINT `fk_Tickets_Usuarios1`
    FOREIGN KEY (`Usuarios_idUsuarios`)
    REFERENCES `helpdeskdb`.`Usuarios` (`idUsuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tickets_Activos1`
    FOREIGN KEY (`Activos_idActivo`)
    REFERENCES `helpdeskdb`.`Activos` (`idActivo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tickets_Categorias1`
    FOREIGN KEY (`Categorias_idCategoria1`)
    REFERENCES `helpdeskdb`.`Categorias` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `helpdeskdb`.`BD conocimientos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `helpdeskdb`.`BD conocimientos` (
  `idBDC` INT NOT NULL,
  `Tickets_idTicket` INT NOT NULL,
  `Usuarios_idUsuarios` INT NOT NULL,
  `Título del Conocimiento` VARCHAR(45) NULL,
  `Descripción del Problema` VARCHAR(45) NULL,
  `Solución` VARCHAR(45) NULL,
  `Fecha de Creación` DATETIME NULL,
  `Última Actualización` DATETIME NULL,
  PRIMARY KEY (`idBDC`),
  INDEX `fk_BD conocimientos_Usuarios1_idx` (`Usuarios_idUsuarios` ASC) VISIBLE,
  INDEX `fk_BD conocimientos_Tickets1_idx` (`Tickets_idTicket` ASC) VISIBLE,
  CONSTRAINT `fk_BD conocimientos_Usuarios1`
    FOREIGN KEY (`Usuarios_idUsuarios`)
    REFERENCES `helpdeskdb`.`Usuarios` (`idUsuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_BD conocimientos_Tickets1`
    FOREIGN KEY (`Tickets_idTicket`)
    REFERENCES `helpdeskdb`.`Tickets` (`idTicket`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `helpdeskdb`.`Notificaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `helpdeskdb`.`Notificaciones` (
  `idNotificaciones` INT NOT NULL,
  `Usuarios_idUsuarios` INT NOT NULL,
  `Tipo de notificacion` VARCHAR(45) NOT NULL,
  `Contenido de notificacion` VARCHAR(45) NULL,
  `Fecha de notificacion` DATETIME NULL,
  PRIMARY KEY (`idNotificaciones`),
  INDEX `fk_Notificaciones_Usuarios1_idx` (`Usuarios_idUsuarios` ASC) VISIBLE,
  CONSTRAINT `fk_Notificaciones_Usuarios1`
    FOREIGN KEY (`Usuarios_idUsuarios`)
    REFERENCES `helpdeskdb`.`Usuarios` (`idUsuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `helpdeskdb`.`Comentarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `helpdeskdb`.`Comentarios` (
  `idComentarios` INT NOT NULL,
  `Usuarios_idUsuarios` INT NOT NULL,
  `Tickets_idTicket` INT NOT NULL,
  `Fecha y hora` DATETIME NULL,
  `Texto_Comentario` VARCHAR(45) NULL,
  PRIMARY KEY (`idComentarios`),
  INDEX `fk_Comentarios_Usuarios1_idx` (`Usuarios_idUsuarios` ASC) VISIBLE,
  INDEX `fk_Comentarios_Tickets1_idx` (`Tickets_idTicket` ASC) VISIBLE,
  CONSTRAINT `fk_Comentarios_Usuarios1`
    FOREIGN KEY (`Usuarios_idUsuarios`)
    REFERENCES `helpdeskdb`.`Usuarios` (`idUsuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comentarios_Tickets1`
    FOREIGN KEY (`Tickets_idTicket`)
    REFERENCES `helpdeskdb`.`Tickets` (`idTicket`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
