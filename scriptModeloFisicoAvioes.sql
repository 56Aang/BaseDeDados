-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema IngressosDeAvioes
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema IngressosDeAvioes
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `IngressosDeAvioes` DEFAULT CHARACTER SET utf8 ;
USE `IngressosDeAvioes` ;

-- -----------------------------------------------------
-- Table `IngressosDeAvioes`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IngressosDeAvioes`.`Cliente` (
  `NIF` DOUBLE NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Idade` INT NOT NULL,
  `Telemovel` VARCHAR(20) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Morada` VARCHAR(100) NOT NULL,
  `Nacionalidade` VARCHAR(15) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`NIF`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IngressosDeAvioes`.`Aeroporto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IngressosDeAvioes`.`Aeroporto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Pais` VARCHAR(45) NOT NULL,
  `Localidade` VARCHAR(45) NOT NULL,
  `Codigo_Postal` VARCHAR(20) NOT NULL,
  `Nome` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IngressosDeAvioes`.`Aviao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IngressosDeAvioes`.`Aviao` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NOT NULL,
  `Numero_maximo_de_passageiros_classe_economica` INT NOT NULL,
  `Numero_maximo_de_passageiros_classe_executiva` INT NOT NULL,
  `Numero_maximo_de_passageiros` INT NOT NULL,
  `Tara` DECIMAL(8,2) NOT NULL,
  `Companhia` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IngressosDeAvioes`.`Voo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IngressosDeAvioes`.`Voo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Numero_de_Voo` VARCHAR(20) NOT NULL,
  `Hora_de_partida` TIME NOT NULL,
  `Hora_de_chegada` TIME NOT NULL,
  `Duraçao` TIME NOT NULL,
  `Data_de_partida` DATE NOT NULL,
  `Numero_de_bilhetes_Vendidos` INT NOT NULL,
  `Origem_id` INT NOT NULL,
  `Aviao_id` INT NOT NULL,
  `Destino_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Voo_Aeroporto1_idx` (`Origem_id` ASC) VISIBLE,
  INDEX `fk_Voo_Aviao1_idx` (`Aviao_id` ASC) VISIBLE,
  INDEX `fk_Voo_Aeroporto2_idx` (`Destino_id` ASC) VISIBLE,
  CONSTRAINT `fk_Voo_Aeroporto1`
    FOREIGN KEY (`Origem_id`)
    REFERENCES `IngressosDeAvioes`.`Aeroporto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Voo_Aviao1`
    FOREIGN KEY (`Aviao_id`)
    REFERENCES `IngressosDeAvioes`.`Aviao` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Voo_Aeroporto2`
    FOREIGN KEY (`Destino_id`)
    REFERENCES `IngressosDeAvioes`.`Aeroporto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IngressosDeAvioes`.`Bilhete`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IngressosDeAvioes`.`Bilhete` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Data` DATE NOT NULL,
  `Gate` VARCHAR(3) NOT NULL,
  `Numero` VARCHAR(3) NOT NULL,
  `Classe` VARCHAR(30) NOT NULL,
  `Preço` DECIMAL(6,2) NOT NULL,
  `Cliente_NIF` DOUBLE NOT NULL,
  `Voo_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Bilhete_Cliente_idx` (`Cliente_NIF` ASC) VISIBLE,
  INDEX `fk_Bilhete_Voo1_idx` (`Voo_id` ASC) VISIBLE,
  CONSTRAINT `fk_Bilhete_Cliente`
    FOREIGN KEY (`Cliente_NIF`)
    REFERENCES `IngressosDeAvioes`.`Cliente` (`NIF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Bilhete_Voo1`
    FOREIGN KEY (`Voo_id`)
    REFERENCES `IngressosDeAvioes`.`Voo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IngressosDeAvioes`.`Lugar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IngressosDeAvioes`.`Lugar` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Classe` VARCHAR(45) NOT NULL,
  `Numero` VARCHAR(3) NOT NULL,
  `Aviao_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Aviao_id`),
  INDEX `fk_Lugar_Aviao1_idx` (`Aviao_id` ASC) VISIBLE,
  CONSTRAINT `fk_Lugar_Aviao1`
    FOREIGN KEY (`Aviao_id`)
    REFERENCES `IngressosDeAvioes`.`Aviao` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
