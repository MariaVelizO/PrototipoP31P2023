CREATE SCHEMA IF NOT EXISTS `cineVision` DEFAULT CHARACTER SET utf8 ;
USE `cineVision` ;

-- -----------------------------------------------------
-- Table `mydb`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Usuarios` (
  `idUsuarios` INT NOT NULL AUTO_INCREMENT,
  `Usuario` VARCHAR(45) NULL,
  `Password` VARCHAR(45) NULL,
  estado tinyint default 1,
  PRIMARY KEY (`idUsuarios`)
  )
ENGINE = InnoDB;
 
-- -----------------------------------------------------
-- Table `mydb`.`Peliculas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Peliculas` (
  `idPeliculas` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Clasificación` VARCHAR(45) NULL,
  `Genero` VARCHAR(45) NULL,
  `Subtitulado` VARCHAR(45) NULL,
  `Idioma` VARCHAR(45) NULL,
  `precio` DOUBLE NULL,
  PRIMARY KEY (`idPeliculas`)
  )
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Cines`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cines` (
  `idCines` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Dirección` VARCHAR(45) NULL,
  PRIMARY KEY (`idCines`)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Salas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Salas` (
  `idSalas` INT NOT NULL AUTO_INCREMENT,
  `fkCine` INT NOT NULL,
  `Descripción` VARCHAR(100) NULL,
  `formatoPeli` VARCHAR(45) NULL,
  `puntos` INT NULL,
  `precioSala` DOUBLE NULL,
  PRIMARY KEY (`idSalas`)
  )
ENGINE = InnoDB;
  
ALTER TABLE `Salas`
  REFERENCES `Cines` (`idCines`);
  
-- -----------------------------------------------------
-- Table `mydb`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Clientes` (
  `idClientes` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Nit` VARCHAR(45) NULL,
  PRIMARY KEY (`idClientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Asientos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Asientos` (
  `idAsientos` INT NOT NULL AUTO_INCREMENT,
  `fkSala` INT NOT NULL,
  `Fila` INT NULL,
  `Columna` VARCHAR(45) NULL,
  PRIMARY KEY (`idAsientos`)
  )
ENGINE = InnoDB;

-- drop table Asientos;

ALTER TABLE `Asientos`
  ADD CONSTRAINT `fkasieS` FOREIGN KEY (`fkSala`) 
  REFERENCES `Salas` (`idSalas`);