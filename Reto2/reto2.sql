-- MySQL Script generated by MySQL Workbench
-- Mon Aug  7 12:26:56 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Mercado
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Mercado
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Mercado` DEFAULT CHARACTER SET utf8 ;
USE `Mercado` ;

-- -----------------------------------------------------
-- Table `Mercado`.`Suplidor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercado`.`Suplidor` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Marca` VARCHAR(45) NOT NULL,
  `Tipo` INT NOT NULL,
  `Precio` INT NOT NULL,
  `Cantidad` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mercado`.`Localidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercado`.`Localidad` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Tipo_producto` VARCHAR(45) NOT NULL,
  `Cantidad` INT NOT NULL,
  `Fecha` VARCHAR(45) NOT NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mercado`.`Almacen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercado`.`Almacen` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Producto` VARCHAR(45) NOT NULL,
  `Cantidad` VARCHAR(45) NOT NULL,
  `Localidad_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_Almacen_Localidad1`
    FOREIGN KEY (`Localidad_id`)
    REFERENCES `Mercado`.`Localidad` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mercado`.`tbl_venta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercado`.`tbl_venta` (
  `idl_venta` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `venta_fecha` DATETIME NOT NULL,
  `venta_turno` VARCHAR(45) NOT NULL,
  `venta_factura` INT NOT NULL,
  PRIMARY KEY (`idl_venta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mercado`.`tbl_factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercado`.`tbl_factura` (
  `id_factura` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `factura_producto` VARCHAR(45) NOT NULL,
  `factura_cantidad` INT NOT NULL,
  `factura_total` INT NOT NULL,
  `factura_fecha` DATETIME NOT NULL,
  `factura_empleado` VARCHAR(45) NOT NULL,
  `tbl_venta_idl_venta` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_factura`, `tbl_venta_idl_venta`),
  CONSTRAINT `fk_tbl_factura_tbl_venta1`
    FOREIGN KEY (`tbl_venta_idl_venta`)
    REFERENCES `Mercado`.`tbl_venta` (`idl_venta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mercado`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercado`.`Producto` (
  `id_Producto` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `producto_nombre` VARCHAR(45) NOT NULL,
  `Producto_precio` VARCHAR(45) NOT NULL,
  `Producto_impuesto` VARCHAR(45) NOT NULL,
  `Producto_cantidad` VARCHAR(45) NOT NULL,
  `Producto_marca` VARCHAR(45) NOT NULL,
  `tab_venta_id_venta` INT UNSIGNED NOT NULL,
  `tbl_factura_id_factura` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_Producto`, `tab_venta_id_venta`),
  CONSTRAINT `fk_Producto_tbl_factura1`
    FOREIGN KEY (`tbl_factura_id_factura`)
    REFERENCES `Mercado`.`tbl_factura` (`id_factura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mercado`.`tbl_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercado`.`tbl_cliente` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `cliente_nombre` VARCHAR(45) NOT NULL,
  `cliente_apellido` VARCHAR(45) NOT NULL,
  `cliente_fecha/hora` DATETIME NOT NULL,
  `tbl_clientecol1` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mercado`.`tbl_caja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercado`.`tbl_caja` (
  `id_caja` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `caja_turno` VARCHAR(45) NOT NULL,
  `tbl_total_factura` INT NOT NULL,
  `caja_fecha` DATETIME NOT NULL,
  PRIMARY KEY (`id_caja`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mercado`.`tab_empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercado`.`tab_empleado` (
  `id_empleado` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `empleado_nombre` VARCHAR(45) NOT NULL,
  `empleado_apellido` VARCHAR(45) NOT NULL,
  `empleado_puesto` VARCHAR(45) NOT NULL,
  `empleado_turno` VARCHAR(45) NOT NULL,
  `empleado_sueldo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mercado`.`tab_compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercado`.`tab_compra` (
  `id_compra` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `compra_tipo_producto` VARCHAR(45) NOT NULL,
  `compra_cantidad` INT NOT NULL,
  `compra_fecha` DATETIME NOT NULL,
  `compra_total` INT NOT NULL,
  PRIMARY KEY (`id_compra`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mercado`.`Almacen_has_Suplidor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercado`.`Almacen_has_Suplidor` (
  `Almacen_id` INT UNSIGNED NOT NULL,
  `Suplidor_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Almacen_id`, `Suplidor_id`),
  CONSTRAINT `fk_Almacen_has_Suplidor_Almacen`
    FOREIGN KEY (`Almacen_id`)
    REFERENCES `Mercado`.`Almacen` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Almacen_has_Suplidor_Suplidor1`
    FOREIGN KEY (`Suplidor_id`)
    REFERENCES `Mercado`.`Suplidor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mercado`.`Producto_has_Almacen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercado`.`Producto_has_Almacen` (
  `Producto_id_Producto` INT UNSIGNED NOT NULL,
  `Almacen_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Producto_id_Producto`, `Almacen_id`),
  CONSTRAINT `fk_Producto_has_Almacen_Producto1`
    FOREIGN KEY (`Producto_id_Producto`)
    REFERENCES `Mercado`.`Producto` (`id_Producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_has_Almacen_Almacen1`
    FOREIGN KEY (`Almacen_id`)
    REFERENCES `Mercado`.`Almacen` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mercado`.`tbl_cliente_has_Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercado`.`tbl_cliente_has_Producto` (
  `tbl_cliente_id_cliente` INT NOT NULL,
  `Producto_id_Producto` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`tbl_cliente_id_cliente`, `Producto_id_Producto`),
  CONSTRAINT `fk_tbl_cliente_has_Producto_tbl_cliente1`
    FOREIGN KEY (`tbl_cliente_id_cliente`)
    REFERENCES `Mercado`.`tbl_cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_cliente_has_Producto_Producto1`
    FOREIGN KEY (`Producto_id_Producto`)
    REFERENCES `Mercado`.`Producto` (`id_Producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mercado`.`tbl_cliente_has_tbl_caja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercado`.`tbl_cliente_has_tbl_caja` (
  `tbl_cliente_id_cliente` INT NOT NULL,
  `tbl_caja_id_caja` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`tbl_cliente_id_cliente`, `tbl_caja_id_caja`),
  CONSTRAINT `fk_tbl_cliente_has_tbl_caja_tbl_cliente1`
    FOREIGN KEY (`tbl_cliente_id_cliente`)
    REFERENCES `Mercado`.`tbl_cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_cliente_has_tbl_caja_tbl_caja1`
    FOREIGN KEY (`tbl_caja_id_caja`)
    REFERENCES `Mercado`.`tbl_caja` (`id_caja`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mercado`.`tbl_caja_has_tab_empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercado`.`tbl_caja_has_tab_empleado` (
  `tbl_caja_id_caja` INT UNSIGNED NOT NULL,
  `tab_empleado_id_empleado` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`tbl_caja_id_caja`, `tab_empleado_id_empleado`),
  CONSTRAINT `fk_tbl_caja_has_tab_empleado_tbl_caja1`
    FOREIGN KEY (`tbl_caja_id_caja`)
    REFERENCES `Mercado`.`tbl_caja` (`id_caja`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_caja_has_tab_empleado_tab_empleado1`
    FOREIGN KEY (`tab_empleado_id_empleado`)
    REFERENCES `Mercado`.`tab_empleado` (`id_empleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mercado`.`tab_compra_has_Suplidor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercado`.`tab_compra_has_Suplidor` (
  `tab_compra_id_compra` INT UNSIGNED NOT NULL,
  `Suplidor_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`tab_compra_id_compra`, `Suplidor_id`),
  CONSTRAINT `fk_tab_compra_has_Suplidor_tab_compra1`
    FOREIGN KEY (`tab_compra_id_compra`)
    REFERENCES `Mercado`.`tab_compra` (`id_compra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tab_compra_has_Suplidor_Suplidor1`
    FOREIGN KEY (`Suplidor_id`)
    REFERENCES `Mercado`.`Suplidor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mercado`.`tab_compra_has_Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercado`.`tab_compra_has_Producto` (
  `tab_compra_id_compra` INT UNSIGNED NOT NULL,
  `Producto_id_Producto` INT UNSIGNED NOT NULL,
  `Producto_tab_venta_id_venta` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`tab_compra_id_compra`, `Producto_id_Producto`, `Producto_tab_venta_id_venta`),
  CONSTRAINT `fk_tab_compra_has_Producto_tab_compra1`
    FOREIGN KEY (`tab_compra_id_compra`)
    REFERENCES `Mercado`.`tab_compra` (`id_compra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tab_compra_has_Producto_Producto1`
    FOREIGN KEY (`Producto_id_Producto` , `Producto_tab_venta_id_venta`)
    REFERENCES `Mercado`.`Producto` (`id_Producto` , `tab_venta_id_venta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
