-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema helpdeskdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema helpdeskdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `helpdeskdb` DEFAULT CHARACTER SET utf8mb3 ;
USE `helpdeskdb` ;

-- -----------------------------------------------------
-- Table `helpdeskdb`.`empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `helpdeskdb`.`empresa` (
  `idEmpresa` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL,
  `Area` VARCHAR(45) NOT NULL,
  `Subarea` VARCHAR(45) NULL DEFAULT NULL,
  `Fecha de creacion` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`idEmpresa`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `helpdeskdb`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `helpdeskdb`.`usuarios` (
  `idUsuarios` INT NOT NULL AUTO_INCREMENT,
  `idEmpresa` INT NULL DEFAULT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Rol` VARCHAR(45) NOT NULL,
  `Genero` VARCHAR(45) NOT NULL,
  `Area` VARCHAR(45) NOT NULL,
  `Cargo` VARCHAR(45) NOT NULL,
  `Fecha de creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idUsuarios`),
  INDEX `fk_Usuarios_Empresa1_idx` (`idEmpresa` ASC) VISIBLE,
  CONSTRAINT `fk_Usuarios_Empresa1`
    FOREIGN KEY (`idEmpresa`)
    REFERENCES `helpdeskdb`.`empresa` (`idEmpresa`))
ENGINE = InnoDB
AUTO_INCREMENT = 26
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `helpdeskdb`.`activos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `helpdeskdb`.`activos` (
  `idActivo` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idEmpresa` INT NOT NULL,
  `Tipo de activo` VARCHAR(45) NOT NULL,
  `Numero de serie` VARCHAR(45) NOT NULL,
  `Marca` VARCHAR(45) NOT NULL,
  `Modelo` VARCHAR(45) NOT NULL,
  `Fecha de compra` DATE NOT NULL,
  `N°Factura` INT NOT NULL,
  `Proveedor` VARCHAR(45) NOT NULL,
  `Caracteristicas de HW` VARCHAR(45) NULL DEFAULT NULL,
  `Estado` VARCHAR(45) NULL DEFAULT NULL,
  `Fecha compra` DATE NULL DEFAULT NULL,
  `idUsuarios` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idActivo`),
  INDEX `fk_Activos_Empresa1_idx` (`idEmpresa` ASC) VISIBLE,
  INDEX `fk_Activos_Usuarios` (`idUsuarios` ASC) VISIBLE,
  CONSTRAINT `fk_Activos_Empresa1`
    FOREIGN KEY (`idEmpresa`)
    REFERENCES `helpdeskdb`.`empresa` (`idEmpresa`),
  CONSTRAINT `fk_Activos_Usuarios`
    FOREIGN KEY (`idUsuarios`)
    REFERENCES `helpdeskdb`.`usuarios` (`idUsuarios`))
ENGINE = InnoDB
AUTO_INCREMENT = 26
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `helpdeskdb`.`bd_conocimientos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `helpdeskdb`.`bd_conocimientos` (
  `idBDC` INT NOT NULL AUTO_INCREMENT,
  `idUsuarios` INT NOT NULL,
  `Título del Conocimiento` VARCHAR(255) NULL DEFAULT NULL,
  `Descripción del Problema` VARCHAR(255) NULL DEFAULT NULL,
  `Solución` VARCHAR(255) NULL DEFAULT NULL,
  `Fecha de Creación` DATETIME NULL DEFAULT NULL,
  `Última Actualización` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idBDC`),
  INDEX `fk_BD conocimientos_Usuarios1_idx` (`idUsuarios` ASC) VISIBLE,
  CONSTRAINT `fk_BD conocimientos_Usuarios1`
    FOREIGN KEY (`idUsuarios`)
    REFERENCES `helpdeskdb`.`usuarios` (`idUsuarios`))
ENGINE = InnoDB
AUTO_INCREMENT = 19
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `helpdeskdb`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `helpdeskdb`.`categorias` (
  `idCategoria` INT NOT NULL,
  `NombreCategoria` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `helpdeskdb`.`comentarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `helpdeskdb`.`comentarios` (
  `idComentarios` INT NOT NULL AUTO_INCREMENT,
  `idUsuarios` INT NOT NULL,
  `Fecha y hora` DATETIME NULL DEFAULT NULL,
  `texto_Comentario` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`idComentarios`),
  INDEX `fk_Comentarios_Usuarios1_idx` (`idUsuarios` ASC) VISIBLE,
  CONSTRAINT `fk_Comentarios_Usuarios1`
    FOREIGN KEY (`idUsuarios`)
    REFERENCES `helpdeskdb`.`usuarios` (`idUsuarios`))
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `helpdeskdb`.`notificaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `helpdeskdb`.`notificaciones` (
  `idNotificaciones` INT NOT NULL AUTO_INCREMENT,
  `idUsuarios` INT NOT NULL,
  `Tipo de notificacion` VARCHAR(45) NOT NULL,
  `Contenido de notificacion` VARCHAR(255) NULL DEFAULT NULL,
  `Fecha de notificacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idNotificaciones`),
  INDEX `fk_Notificaciones_Usuarios1_idx` (`idUsuarios` ASC) VISIBLE,
  CONSTRAINT `fk_Notificaciones_Usuarios1`
    FOREIGN KEY (`idUsuarios`)
    REFERENCES `helpdeskdb`.`usuarios` (`idUsuarios`))
ENGINE = InnoDB
AUTO_INCREMENT = 74
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `helpdeskdb`.`tickets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `helpdeskdb`.`tickets` (
  `idTicket` INT NOT NULL AUTO_INCREMENT,
  `idUsuarios` INT NOT NULL,
  `idCategoria1` INT NOT NULL,
  `Fecha de creacion` DATETIME NULL DEFAULT NULL,
  `Fecha de cierre` DATETIME NULL DEFAULT NULL,
  `Tipo` VARCHAR(45) NULL DEFAULT NULL,
  `Prioridad` VARCHAR(45) NULL DEFAULT NULL,
  `descripcion` VARCHAR(255) NULL DEFAULT NULL,
  `resolucion` VARCHAR(255) NULL DEFAULT NULL,
  `Estado` VARCHAR(45) NULL DEFAULT NULL,
  `Fecha cambio estado` DATETIME NULL DEFAULT NULL,
  `Titulo` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`idTicket`),
  INDEX `fk_Tickets_Usuarios1_idx` (`idUsuarios` ASC) VISIBLE,
  INDEX `fk_Tickets_Categorias1_idx` (`idCategoria1` ASC) VISIBLE,
  CONSTRAINT `fk_Tickets_Categorias1`
    FOREIGN KEY (`idCategoria1`)
    REFERENCES `helpdeskdb`.`categorias` (`idCategoria`),
  CONSTRAINT `fk_Tickets_Usuarios1`
    FOREIGN KEY (`idUsuarios`)
    REFERENCES `helpdeskdb`.`usuarios` (`idUsuarios`))
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
