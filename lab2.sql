Code to creat tables:
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Policydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Policydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Policydb` DEFAULT CHARACTER SET utf8 ;
USE `Policydb` ;

-- -----------------------------------------------------
-- Table `Policydb`.`CLIENT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Policydb`.`CLIENT` (
  `clientID` INT NOT NULL AUTO_INCREMENT,
  `client_name` VARCHAR(99) NULL,
  `client_address` VARCHAR(99) NULL,
  `client_age` INT NULL,
  PRIMARY KEY (`clientID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Policydb`.`POLICY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Policydb`.`POLICY` (
  `policyID` INT NOT NULL AUTO_INCREMENT,
  `policy_type` VARCHAR(55) NULL,
  `policy_term` VARCHAR(45) NULL,
  `policy_limits` VARCHAR(100) NULL,
  PRIMARY KEY (`policyID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Policydb`.`CLIENT_has_POLICY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Policydb`.`CLIENT_has_POLICY` (
  `CLIENT_clientID` INT NOT NULL,
  `POLICY_policyID` INT NOT NULL,
  PRIMARY KEY (`CLIENT_clientID`, `POLICY_policyID`),
  INDEX `fk_CLIENT_has_POLICY_POLICY1_idx` (`POLICY_policyID` ASC) VISIBLE,
  INDEX `fk_CLIENT_has_POLICY_CLIENT_idx` (`CLIENT_clientID` ASC) VISIBLE,
  CONSTRAINT `fk_CLIENT_has_POLICY_CLIENT`
    FOREIGN KEY (`CLIENT_clientID`)
    REFERENCES `Policydb`.`CLIENT` (`clientID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CLIENT_has_POLICY_POLICY1`
    FOREIGN KEY (`POLICY_policyID`)
    REFERENCES `Policydb`.`POLICY` (`policyID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
*****************************************************
## inserting data into table#

INSERT INTO policy(policyID, policy_type, policy_term, policy_limits)
Values
(1,	'Home',	'yearly',	"$100,000 "),
(2,	'Home',	'yearly',	"$250,000 "),
(3,	'Home',	'yearly',	"$500,000 "),
(4,	'Home',	'yearly',	"$1,000,000 "),
(5,	'Home',	'6-month',	"$100,000 "),
(6,	'Home',	'6-month',	"$250,000 "),
(7,	'Home',	'6-month',	"$500,000 "),
(8,	'Home',	'6-month',	"$1,000,000 "),
(9,	'Car',	'yearly',	"$60,000 "),
(10,'Car',	'yearly',	"$120,000 "),
(11,'Car',	'6-month',	"$60,000 "),
(12,'Car',	'6-month',	"$120,000 ");


INSERT INTO client (clientID, client_name, client_address, client_age)
VALUES
	(1,	'James Clark',	'1001 Plymouth Ave',	38),
	(2,	'Leah Nicole',	'2401 Chicago Ave #212',	36),
	(3,	'Silas Alexander',	'5012 Humboldt Lane',	22),
	(4,	'Noah Charles',	'501 College Ave.',	25),
	(5,	'Chris Isaac',	'228 e, 149th st.',	37),
	(6,	'Noah Charles',	'501 College Ave.',	25),
	(7,	'Brittney Owens',	'321 Thursday Ave.', 42),
	(8,	'Kurt Douglas',	'123 Mt. Glenwood',	58),
	(9,	'Areta Farries',	'789 Touy Ave.' ,	62 ),
	(10,	'Jessica Daniel',	'698 Featherstone',	47),
	(11,	'Gary Moore',	'698 Featherstone',	48),
	(12,	'Elnora Daniel',	'698 Featherstone',	61),
	(13,	'Daniel Moore',	'698 Featherstone',	22),
	(14,	'Cheryl Pearson',	'228 e 149th st.',	67);

INSERT INTO  client_has_policy (CLIENT_clientID, POLICY_policyID)
VALUES
(2,	1),
(9,	1),
(13,	1),
(2,	4),
(5,	4),
(8,	5),
(14,	6),
(11,	7),
(1,	8),
(3,	8),
(7,	9),
(1,	10),
(3,	10),
(7,	10),
(10,	10),
(6,	11),
(4,	12);



##selecting all data from clients
SELECT * from (client); 


##update client id 5 name from  Chris Isaac to Chris Pearson
UPDATE client
set client_name = 'Chris Pearson'
WHERE clientID = 5;

#find all policies that have a policy type of 'Home
Select * From  policy
where policy_type = 'home' ;


#find all policies that have a policy term  of yearly
Select * From  policy
where policy_term = 'yearly' ;

## show all clients sorded 
Select client_name, client_address, client_age
FROM client
ORDER BY  client_age DESC;


# find the average age from clients tabel
SELECT AVG(client_age)
FROM client

#find all clients that are between the ages of 22 and 40
SELECT client_name, client_age
FROM client
WHERE client_age Between 22 AND 40


## find all home policies that have a policy limit under $250,000.
SELECT * FROM policy 
WHERE policy_type = 'home'
AND policy_limits <= '$250,000'



#Find all client's name and address that  contain 'Featherstone' in client address
SELECT client_name, client_address
FROM client
WHERE client_address LIKE '%Featherstone%'
ORDER BY client_age ASC


#Write the SQL command that lists the name, address, and age of clients who are age 35
# and above and whose address contains the number 8
SELECT client_name, client_address, client_age
FROM client
WHERE client_address like '%8%' and client_age >= 35 ;


#. Write the SQL command that returns the total # of policies offered
SELECT count(policy_type) as total_count
From policy ;


 #Write the SQL command that returns the policy type and the total count of policies by type
SELECT policy_type, COUNT(*) as 'Count Of Policy'
FROM policy 
GROUP BY policy_type 


#Write the SQL command that lists all clients that have a home insurance policy
SELECT *
FROM client
Join client_has_policy on client_has_policy.CLIENT_clientID = client.clientID
Left Join policy on policy.policyID = client_has_policy.POLICY_policyID
Where policy_type = 'Home' 
order by clientID asc

# Write the SQL command that lists all of the instances of a 
# policy where the client ID is equal to #2
SELECT *
FROM client
Join client_has_policy on client_has_policy.CLIENT_clientID = client.clientID
WHERE clientID = 2


#List all clients along with their respective policies.
SELECT *
FROM client
Join client_has_policy on client_has_policy.CLIENT_clientID = client.clientID
Left Join policy on policy.policyID = client_has_policy.POLICY_policyID
