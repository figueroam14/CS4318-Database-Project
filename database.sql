
//Things that needs to be change!!!
1. First thing: needs to change all the entity name/table name to singular for eg. admins to admin
2. For all DOB and any other dates like (insurance date, appointment date, press date, procedure date), datatype should be DATE in the form of YYYY-MM-DD
3. appointments table is not correct so it needs to be change like this by combining date and time together
CREATE TABLE `appointment` (
  `Appt_ID` int NOT NULL,
  `Appt_Date_Time` DATETIME DEFAULT NULL,
  PRIMARY KEY (`Appt_ID`)
)
INSERT INTO `database1`.`apointment`(`Appt_ID`, `Appt_Date_Time`) VALUES ('44','2020-11-10 2:11:12'); 
INSERT INTO `database1`.`apointment` (`Appt_ID`, `Appt_Date_Time`) VALUES ('45', '2020-12-5 3:00:00');

 4. Prescription table is not correct so it needs to be change like this
 CREATE TABLE `prescription` (
  `Prec_Id` int NOT NULL,
  `Presc_Name` varchar(45) DEFAULT NULL,
  `Presc_Fee` DECIMAL(5,2) DEFAULT NULL, // in order to accept any form of money like decimal
  `Presc_Date` DATE DEFAULT NULL,
  PRIMARY KEY (`Prec_Id`)
)
INSERT INTO `database1`.`prescription` (`Presc_Id`, `Presc_Name`, `Presc_Fee`, `Presc_Date`) VALUES ('61', 'Altace', '40.45', '2020-12-14');
INSERT INTO `database1`.`prescription` (`Presc_Id`, `Presc_Name`, `Presc_Fee`, `Presc_Date`) VALUES ('62', 'Ultram', '20.78', '2020-11-30');                                                              
  
5. procedures table datatype are not correct as well so it needs to be like this  

   CREATE TABLE `procedure` (
  `Procedure_Id` int NOT NULL,
  `Procedure_Name` varchar(45) DEFAULT NULL,
  `Procedure_Date_Time` DATETIME DEFAULT NULL,
  `Procedure_Fee` DECIMAL(5,2) DEFAULT NULL,
  PRIMARY KEY (`Procedure_Id`)
)

INSERT INTO `database1`.`procedure` (`Procedure_Id`, `Procedure_Name`, `Procedure_Date_Time`, `Procedure_Fee`) VALUES ('71', 'surgery', '2021-02-4 3:00:00', '200');
INSERT INTO `database1`.`procedure` (`Procedure_Id`, `Procedure_Name`, `Procedure_Date_Time`, `Procedure_Fee`) VALUES ('72', 'surgery', '2021-01-4 4:00:00', '300');
INSERT INTO `database1`.`procedure` (`Procedure_Id`, `Procedure_Name`, `Procedure_Date_Time`, `Procedure_Fee`) VALUES ('73', 'operation', '2021-01-14 1:00:00', '250.67');
 
 6. Some changes needs to be in doctor table like this
 CREATE TABLE `doctor` (
  `Doctor_Id` int NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `DOB` DATE NOT NULL,
  `Phone_Num` varchar(128) DEFAULT NULL,
  `Address` varchar(128) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Doctor_Id`)
)
7. Some changes needs to be in nurse table like below
 CREATE TABLE `nurse` (
  `Nurse_Id` int NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `PhoneNum` varchar(45) DEFAULT NULL,
  `Address` varchar(128) DEFAULT NULL,
  `Education` varchar(45) DEFAULT NULL,
  `DOB` DATE NOT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Nurse_Id`) 
)






 
CREATE DATABASE  IF NOT EXISTS `hospital_database` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospital_database`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital_database
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

/*

Commands:

Step 2: To display all data per each table

SELECT * FROM hospital_database.appointments; -- Display All data for appointments table
SELECT * FROM hospital_database.admins;-- Display All data for admins table
SELECT * FROM hospital_database.doctors;-- Display All data for doctors table
SELECT * FROM hospital_database.insurances;-- Display All data for insurances table
SELECT * FROM hospital_database.nurses;-- Display All data for nurses table
SELECT * FROM hospital_database.patients;-- Display All data for patients table
SELECT * FROM hospital_database.prescriptions;-- Display All data for prescriptions table
SELECT * FROM hospital_database.procedures;-- Display All data for procedures table
SELECT * FROM hospital_database.staff;-- Display All data for staff table



*/


DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `Employee_Id` int NOT NULL,
  `First_Name` varchar(255) DEFAULT NULL,
  `Last_Name` varchar(45) DEFAULT NULL,
  `Phone_Num` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `DOB` int DEFAULT NULL,
  PRIMARY KEY (`Employee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table for Admins with information including: \n* FirstName\n    * LastName\n	* PhoneNum\n	* Address \n    * Gender \n    * DOB\n    ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Andrea','Gomez','8883939232','616 Memorial Dr. ','F',5231990),(2,'Jane','Slater','8884743378','222 Slope Ave.','F',5231990),(3,'Andrea','Gomez','8883939232','818 Hershey Dr.. ','F',5231990);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `Appt_ID` int NOT NULL,
  `Appt_Time` int DEFAULT NULL,
  `Appt_Date` int DEFAULT NULL,
  PRIMARY KEY (`Appt_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table for Appointments:\n* ApptID \n* ApptTime as int (using24h time)\n* ApptDate as in (052320) May 23 2020';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,1400,5202020);
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `Doctor_Id` int NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `DOB` varchar(45) NOT NULL,
  `Phone_Num` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Doctor_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table contaning information about doctors including: * FirstName\n    * Last_Name\n    * DOB\n    * PhoneNum\n    * Address \n    * Gender\n\nDO WE NEED PRIMARY KEY FOR DOCTORS?\n    				';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Michael','Figueroa','05241998','8329432474','616 Memorial Dr. ','M'),(2,'Patrick ','Bateman','09011989','555555555','612 Memorial Dr','M'),(3,'Patrick','Star','05241998','8329432474','212 Bikini Bottom','M'),(4,'Leon','Kennedy','05241998','8329432474','818 Racoon City','M'),(5,'John','Green','05241998','8329432474','1 Main Street','M'),(6,'Elon','Musk','05241998','8329432474','1 Tesla Blv','M');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurances`
--

DROP TABLE IF EXISTS `insurances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurances` (
  `Inurance_Id` int NOT NULL,
  `Insur_Name` varchar(45) DEFAULT NULL,
  `Policy_Num` int DEFAULT NULL,
  `Insur_Date` int DEFAULT NULL,
  PRIMARY KEY (`Inurance_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table for Insurance information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurances`
--

LOCK TABLES `insurances` WRITE;
/*!40000 ALTER TABLE `insurances` DISABLE KEYS */;
INSERT INTO `insurances` VALUES (1,'Aetna ',9983,52022);
/*!40000 ALTER TABLE `insurances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurses`
--

DROP TABLE IF EXISTS `nurses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurses` (
  `Nurse_Id` int NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `PhoneNum` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Education` varchar(45) DEFAULT NULL,
  `DOB` int NOT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Nurse_Id`,`FirstName`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table for nurses		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurses`
--

LOCK TABLES `nurses` WRITE;
/*!40000 ALTER TABLE `nurses` DISABLE KEYS */;
INSERT INTO `nurses` VALUES (1,'Wanda','Mills','2129990838','126 Pencil St.','Bachelors',5121998,'F'),(2,'Stephen ','Stewart','2129990000','125 Penicl St','Bachelors',5301987,'M'),(3,'Stephen ','Stewart','2129990000','125 Penicl St','Bachelors',5301987,'M'),(4,'Phil  ','Lambert','2819988787','990 Main St ','Masters',2231997,'M'),(5,'Paul ','Burnell','8996002929','1 Nuketown St.','Masters',5301987,'M');
/*!40000 ALTER TABLE `nurses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `Patient_Id` int NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Phone_Num` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `DOB` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Patient_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table for Patients\nPatient = Patient\n* PatientID - int: Allows whole numbers between -2,147,483,648 and 2,147,483,647\n* FirstName - varchar(255): Variable width character string\n * LastName -  varchar(255): Variable width character string\n* PhoneNum -  int:Allows whole numbers between -2,147,483,648 and 2,147,483,647\n	* Address -  varchar(255): Variable width character string\n    * Gender  -   varchar(255): Variable width character string (M/F)\n    * DOB     -    varchar(255): Varibable width character string (05241998)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Michael','Figueroa','8329432474','616 Memorial Heights ','M','05241998'),(2,'Puspa','Giri','2128887676','1100 York St.','F',NULL),(3,'Vy','Ngyuen ','5559498384','1 Main Street','M',NULL),(4,'Tim','Parr','5559498384','1 Main Street','M',NULL),(5,'Leah','Paige ','5559498384','1 Lockheed Blv','M',NULL),(6,'Ruth','Gill ','2812180728','612 Memorial Dr.','M',NULL),(7,'Victor','James ','5559897765','123 Slope Ln','M',NULL),(8,'Evan','McLean','8329432443','16000 Penssylvania Ave','M',NULL);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescriptions` (
  `Prec_Id` int NOT NULL,
  `Pesc_Name` varchar(45) DEFAULT NULL,
  `Presc_Fee` int DEFAULT NULL,
  `Presc_Date` int DEFAULT NULL,
  PRIMARY KEY (`Prec_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table for Prescriptions\n					';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions`
--

LOCK TABLES `prescriptions` WRITE;
/*!40000 ALTER TABLE `prescriptions` DISABLE KEYS */;
INSERT INTO `prescriptions` VALUES (3329,'Aderall',100,1102020);
/*!40000 ALTER TABLE `prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedures`
--

DROP TABLE IF EXISTS `procedures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procedures` (
  `Procedure_Id` int NOT NULL,
  `Procedure_Time` int DEFAULT NULL,
  `Procedure_Date` int DEFAULT NULL,
  `Procedure_Name` varchar(45) DEFAULT NULL,
  `Procedure_Fee` int DEFAULT NULL,
  PRIMARY KEY (`Procedure_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table for procedures	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedures`
--

LOCK TABLES `procedures` WRITE;
/*!40000 ALTER TABLE `procedures` DISABLE KEYS */;
INSERT INTO `procedures` VALUES (1,1500,5102020,'Xray',300);
/*!40000 ALTER TABLE `procedures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `Staff_Id` int NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Phone_Num` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `DOB` int NOT NULL,
  `Education` varchar(45) DEFAULT NULL,
  `Branch` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Staff_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table for Staff Data including: \n FirstName\n    * LastName\n	* PhoneNum\n	* Address \n    * Gender \n    * DOB\n    * Education\n    * StaffID';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Michael','Jackson','9392322','616 Memorial Dr. ','M',5241998,'Bachelors','Scranton'),(2,'Jose','Figueroa','8323220321','616 Memorial Dr.','M',10231998,'Bachelors','Scranton'),(3,'Kylie','Jenner','8329432474','818 Hollywood Dr.','F',10231989,'NONE','Buffalo'),(4,'Joshua','Green','8323220321','818 TurnPike Dr','M',10231998,'Bachelors','Scranton'),(5,'Erick','Lopez','8326767767','616 Memorial Dr.','M',10231998,'Bachelors','Scranton');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hospital_database'
--

--
-- Dumping routines for database 'hospital_database'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-25 18:23:58
