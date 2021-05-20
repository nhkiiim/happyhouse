-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema happyhouse
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema happyhouse
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `happyhouse` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `happyhouse` ;

-- -----------------------------------------------------
-- Table `happyhouse`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `happyhouse`.`user` (
  `id` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `pass` VARCHAR(100) NOT NULL,
  `address` TEXT NULL DEFAULT NULL,
  `phone` VARCHAR(100) NULL DEFAULT NULL,
  `interest` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `happyhouse`.`interest`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `happyhouse`.`interest` (
  `id` VARCHAR(50) NOT NULL,
  `dong` VARCHAR(30) NOT NULL,
  `city` VARCHAR(30) NOT NULL,
  `gugun` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `dong`),
  INDEX `fk_interest_user_idx` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_interest_user`
    FOREIGN KEY (`id`)
    REFERENCES `happyhouse`.`user` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `happyhouse`.`baseaddress`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `happyhouse`.`baseaddress` (
  `no` INT NOT NULL AUTO_INCREMENT,
  `city` VARCHAR(30) NOT NULL,
  `code` VARCHAR(30) NULL DEFAULT NULL,
  `dongcode` VARCHAR(30) NULL DEFAULT NULL,
  `gugun` VARCHAR(30) NULL DEFAULT NULL,
  `dong` VARCHAR(30) NOT NULL,
  `lat` VARCHAR(20) NULL DEFAULT NULL,
  `lng` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_baseaddress_interest1_idx` (`dong` ASC) VISIBLE,
  CONSTRAINT `fk_baseaddress_interest1`
    FOREIGN KEY (`dong`)
    REFERENCES `happyhouse`.`interest` (`dong`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 3626
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `happyhouse`.`housedeal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `happyhouse`.`housedeal` (
  `no` INT NOT NULL AUTO_INCREMENT,
  `dong` VARCHAR(30) NOT NULL,
  `AptName` VARCHAR(50) NOT NULL,
  `code` VARCHAR(30) NOT NULL,
  `dealAmount` VARCHAR(50) NOT NULL,
  `buildYear` VARCHAR(30) NULL DEFAULT NULL,
  `dealYear` VARCHAR(30) NULL DEFAULT NULL,
  `dealMonth` VARCHAR(30) NULL DEFAULT NULL,
  `dealDay` VARCHAR(30) NULL DEFAULT NULL,
  `area` VARCHAR(30) NULL DEFAULT NULL,
  `floor` VARCHAR(30) NULL DEFAULT NULL,
  `jibun` VARCHAR(30) NULL DEFAULT NULL,
  `type` VARCHAR(30) NULL DEFAULT NULL,
  `rentMoney` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_housedeal_interest1_idx` (`dong` ASC) VISIBLE,
  INDEX `fk_housedeal_baseaddress1_idx` (`dong` ASC, `code` ASC) VISIBLE,
  CONSTRAINT `fk_housedeal_interest1`
    FOREIGN KEY (`dong`)
    REFERENCES `happyhouse`.`interest` (`dong`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_housedeal_baseaddress1`
    FOREIGN KEY (`dong` , `code`)
    REFERENCES `happyhouse`.`baseaddress` (`dong` , `city`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 68865
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
