-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_proyecto_1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_proyecto_1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_proyecto_1` DEFAULT CHARACTER SET utf8 ;
USE `db_proyecto_1` ;

-- -----------------------------------------------------
-- Table `db_proyecto_1`.`tbl_compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_proyecto_1`.`tbl_compra` (
  `compra_id` INT NOT NULL AUTO_INCREMENT,
  `tbl_fecha_compra` DATETIME NOT NULL,
  `tbl_precio` FLOAT NOT NULL,
  `tbl_estado_pedido` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`compra_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_proyecto_1`.`tbl_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_proyecto_1`.`tbl_usuario` (
  `usuario_id` INT NOT NULL AUTO_INCREMENT,
  `tbl_nombre` VARCHAR(100) NOT NULL,
  `tbl_correo` VARCHAR(100) NOT NULL,
  `tbl_contraseña` VARCHAR(100) NOT NULL,
  `tbl_fecha_registro` DATETIME NOT NULL,
  `tbl_compra_compra_id` INT NOT NULL,
  PRIMARY KEY (`usuario_id`),
  CONSTRAINT `fk_tbl_usuario_tbl_compra`
    FOREIGN KEY (`tbl_compra_compra_id`)
    REFERENCES `db_proyecto_1`.`tbl_compra` (`compra_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_proyecto_1`.`tbl_consola`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_proyecto_1`.`tbl_consola` (
  `consola_id` INT NOT NULL AUTO_INCREMENT,
  `tbl_nombre_consola` VARCHAR(100) NOT NULL,
  `tbl_tipo_consola` VARCHAR(100) NOT NULL,
  `tbl_precio` FLOAT NOT NULL,
  `tbl_imagen` VARCHAR(255) NOT NULL,
  `tbl_compra_compra_id` INT NOT NULL,
  PRIMARY KEY (`consola_id`),
  CONSTRAINT `fk_tbl_consola_tbl_compra1`
    FOREIGN KEY (`tbl_compra_compra_id`)
    REFERENCES `db_proyecto_1`.`tbl_compra` (`compra_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_proyecto_1`.`tbl_videojuego`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_proyecto_1`.`tbl_videojuego` (
  `videojuego_id` INT NOT NULL AUTO_INCREMENT,
  `tbl_titulo` VARCHAR(100) NOT NULL,
  `tbl_genero` VARCHAR(100) NOT NULL,
  `tbl_desarrollador` VARCHAR(100) NOT NULL,
  `tbl_fecha_lanzamiento` DATE NOT NULL,
  `tbl_imagen` VARCHAR(100) NOT NULL,
  `tbl_tipo_consola` VARCHAR(45) NOT NULL,
  `tbl_compra_compra_id` INT NOT NULL,
  PRIMARY KEY (`videojuego_id`),
  CONSTRAINT `fk_tbl_videojuego_tbl_compra1`
    FOREIGN KEY (`tbl_compra_compra_id`)
    REFERENCES `db_proyecto_1`.`tbl_compra` (`compra_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_proyecto_1`.`tbl_videojuego_has_tbl_consola`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_proyecto_1`.`tbl_videojuego_has_tbl_consola` (
  `tbl_videojuego_videojuego_id` INT NOT NULL,
  `tbl_consola_consola_id` INT NOT NULL,
  CONSTRAINT `fk_tbl_videojuego_has_tbl_consola_tbl_videojuego1`
    FOREIGN KEY (`tbl_videojuego_videojuego_id`)
    REFERENCES `db_proyecto_1`.`tbl_videojuego` (`videojuego_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_videojuego_has_tbl_consola_tbl_consola1`
    FOREIGN KEY (`tbl_consola_consola_id`)
    REFERENCES `db_proyecto_1`.`tbl_consola` (`consola_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
