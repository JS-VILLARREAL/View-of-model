-- MySQL Script generated by MySQL Workbench
-- Fri Oct  7 23:10:17 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema prueba_veterinaria
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema electivabase
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `electivabase` ;

-- -----------------------------------------------------
-- Schema electivabase
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `electivabase` DEFAULT CHARACTER SET utf8mb4 ;
-- -----------------------------------------------------
-- Schema veterinaria
-- -----------------------------------------------------
USE `electivabase` ;

-- -----------------------------------------------------
-- Table `electivabase`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `electivabase`.`persona` (
  `id_persona` INT(11) NOT NULL AUTO_INCREMENT,
  `documento` VARCHAR(20) NOT NULL,
  `nombre` VARCHAR(50) NOT NULL,
  `apellido` VARCHAR(50) NOT NULL,
  `correo` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_persona`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `electivabase`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `electivabase`.`usuario` (
  `id_usuario` INT(11) NOT NULL AUTO_INCREMENT,
  `contraseña` VARCHAR(20) NOT NULL,
  `correo` VARCHAR(50) NOT NULL,
  `id_persona` INT(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  CONSTRAINT `usuario_ibfk_1`
    FOREIGN KEY (`id_persona`)
    REFERENCES `electivabase`.`persona` (`id_persona`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE INDEX `id_persona` ON `electivabase`.`usuario` (`id_persona` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `electivabase`.`razas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `electivabase`.`razas` (
  `idrazas` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `estado` BIT NOT NULL,
  PRIMARY KEY (`idrazas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `electivabase`.`mascotas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `electivabase`.`mascotas` (
  `idmascotas` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `fecha_nacimiento` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `apodo` VARCHAR(45) NOT NULL,
  `id_razas` INT NOT NULL,
  PRIMARY KEY (`idmascotas`),
  CONSTRAINT `fk_id_razas`
    FOREIGN KEY (`id_razas`)
    REFERENCES `electivabase`.`razas` (`idrazas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `id_razas_idx` ON `electivabase`.`mascotas` (`id_razas` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `electivabase`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `electivabase`.`productos` (
  `idproductos` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `estado` BIT NOT NULL,
  PRIMARY KEY (`idproductos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `electivabase`.`dietas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `electivabase`.`dietas` (
  `iddietas` INT NOT NULL,
  `id_mascotas` INT NOT NULL,
  `id_productos` INT NOT NULL,
  PRIMARY KEY (`iddietas`),
  CONSTRAINT `fk_id_mascotas`
    FOREIGN KEY (`id_mascotas`)
    REFERENCES `electivabase`.`mascotas` (`idmascotas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_productos`
    FOREIGN KEY (`id_productos`)
    REFERENCES `electivabase`.`productos` (`idproductos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_id_mascotas_idx` ON `electivabase`.`dietas` (`id_mascotas` ASC) VISIBLE;

CREATE INDEX `fk_id_productos_idx` ON `electivabase`.`dietas` (`id_productos` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
