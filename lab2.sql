Code to creat tables:
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema PolicyDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema PolicyDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `PolicyDB` DEFAULT CHARACTER SET utf8 ;
USE `PolicyDB` ;

-- -----------------------------------------------------
-- Table `PolicyDB`.`CLIENT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PolicyDB`.`CLIENT` (
  `clientID` INT NOT NULL AUTO_INCREMENT,
  `client_name` VARCHAR(55) NULL,
  `client_address` VARCHAR(55) NULL,
  `client_age` INT NULL,
  PRIMARY KEY (`clientID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PolicyDB`.`POLICY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PolicyDB`.`POLICY` (
  `policyID` INT NOT NULL AUTO_INCREMENT,
  `policy_type` VARCHAR(45) NULL,
  `policy_term` VARCHAR(45) NULL,
  `policy_limits` VARCHAR(45) NULL,
  PRIMARY KEY (`policyID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PolicyDB`.`POLICY_LIST`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PolicyDB`.`POLICY_LIST` (
  `CLIENT_clientID` INT NOT NULL,
  `POLICY_policyID` INT NOT NULL,
  PRIMARY KEY (`CLIENT_clientID`, `POLICY_policyID`),
  INDEX `fk_CLIENT_has_POLICY_POLICY1_idx` (`POLICY_policyID` ASC) VISIBLE,
  INDEX `fk_CLIENT_has_POLICY_CLIENT_idx` (`CLIENT_clientID` ASC) VISIBLE,
  CONSTRAINT `fk_CLIENT_has_POLICY_CLIENT`
    FOREIGN KEY (`CLIENT_clientID`)
    REFERENCES `PolicyDB`.`CLIENT` (`clientID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CLIENT_has_POLICY_POLICY1`
    FOREIGN KEY (`POLICY_policyID`)
    REFERENCES `PolicyDB`.`POLICY` (`policyID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
