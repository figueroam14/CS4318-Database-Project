/*

Step 2: Select all from each tables

SELECT * FROM hospital_database.patient;
SELECT * FROM hospital_database.admin;
SELECT * FROM hospital_database.appointment;
SELECT * FROM hospital_database.doctor;
SELECT * FROM hospital_database.insurance;
SELECT * FROM hospital_database.nurse;
SELECT * FROM hospital_database.patient;
SELECT * FROM hospital_database.prescription;
SELECT * FROM hospital_database.procedure;
SELECT * FROM hospital_database.staff;

*/











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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Employee_Id` int NOT NULL,
  `First_Name` varchar(255) DEFAULT NULL,
  `Last_Name` varchar(45) DEFAULT NULL,
  `Phone_Num` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  PRIMARY KEY (`Employee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table for Admins with information including: \n* FirstName\n    * LastName\n	* PhoneNum\n	* Address \n    * Gender \n    * DOB\n    ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Andrea','Gomez','8883939232','616 Memorial Dr. ','F','1998-05-24'),(2,'Jane','Slater','8884743378','222 Slope Ave.','F','1994-04-13'),(3,'Andrea','Gomez','8883939232','818 Hershey Dr.. ','F','1980-01-12');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `Appt_ID` int NOT NULL,
  `Appt_Data_Time` datetime DEFAULT NULL,
  PRIMARY KEY (`Appt_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table for Appointments:\n* ApptID \n* ApptTime as int (using24h time)\n* ApptDate as in (052320) May 23 2020';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,'2020-11-10 02:11:12'),(2,'2020-12-05 03:00:00');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `Doctor_Id` int NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `DOB` date NOT NULL,
  `Phone_Num` varchar(128) DEFAULT NULL,
  `Address` varchar(128) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Doctor_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Patrick ','Bateman','1990-05-25','832-943-2474','616 Memorial Dr.','M'),(2,'Michael ','Figueroa','1974-01-19','832-938-9088','619 Memorial Dr.','M'),(3,'Patrick ','Star','1995-05-23','832-332-2434','1 Lockheed Blv','M'),(4,'Leon ','Kennedy','1982-01-25','832-213-2344','212 Memorial Dr.','M'),(5,'John ','Green','1983-03-25','832-333-2474','3234 Memorial Dr.','M'),(6,'Elon ','Musk','1990-05-25','832-943-2474','1 Madison St.','M');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `Inurance_Id` int NOT NULL,
  `Insur_Name` varchar(45) DEFAULT NULL,
  `Policy_Num` int DEFAULT NULL,
  `Insur_Date` date DEFAULT NULL,
  PRIMARY KEY (`Inurance_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table for Insurance information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (1,'Aetna ',9983,'2020-05-25');
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse` (
  `Nurse_Id` int NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `PhoneNum` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Education` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  PRIMARY KEY (`Nurse_Id`,`FirstName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table for nurses		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` VALUES (1,'Wanda','Mills','2129990838','126 Pencil St.','Bachelors','F','1967-05-07'),(2,'Stephen ','Stewart','2129990000','125 Penicl St','Bachelors','M','1992-07-21'),(3,'Stephen ','Stewart','2129990000','125 Penicl St','Bachelors','M','1993-04-14'),(4,'Phil  ','Lambert','2819988787','990 Main St ','Masters','M','1995-06-17'),(5,'Paul ','Burnell','8996002929','1 Nuketown St.','Masters','M','1994-04-19');
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `Patient_Id` int NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Phone_Num` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  PRIMARY KEY (`Patient_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table for Patients\nPatient = Patient\n* PatientID - int: Allows whole numbers between -2,147,483,648 and 2,147,483,647\n* FirstName - varchar(255): Variable width character string\n * LastName -  varchar(255): Variable width character string\n* PhoneNum -  int:Allows whole numbers between -2,147,483,648 and 2,147,483,647\n	* Address -  varchar(255): Variable width character string\n    * Gender  -   varchar(255): Variable width character string (M/F)\n    * DOB     -    varchar(255): Varibable width character string (05241998)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Michael','Figueroa','8329432474','616 Memorial Heights ','M','1964-06-25'),(2,'Puspa','Giri','2128887676','1100 York St.','F','1966-04-19'),(3,'Vy','Ngyuen ','5559498384','1 Main Street','M','1969-03-30'),(4,'Tim','Parr','5559498384','1 Main Street','M','1972-05-26'),(5,'Leah','Paige ','5559498384','1 Lockheed Blv','M','1974-09-20'),(6,'Ruth','Gill ','2812180728','612 Memorial Dr.','M','1975-12-13'),(7,'Victor','James ','5559897765','123 Slope Ln','M','1977-01-07'),(8,'Evan','McLean','8329432443','16000 Penssylvania Ave','M','1992-09-01');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription` (
  `Presc_Id` int NOT NULL,
  `Pesc_Name` varchar(45) DEFAULT NULL,
  `Presc_Date` date DEFAULT NULL,
  `Presc_Fee` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`Presc_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table for Prescriptions\n					';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` VALUES (3329,'Aderall',NULL,67.89);
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedure`
--

DROP TABLE IF EXISTS `procedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procedure` (
  `Procedure_Id` int NOT NULL,
  `Procedure_Name` varchar(45) DEFAULT NULL,
  `Procedure_Date_Time` datetime DEFAULT NULL,
  `Procedure_Fee` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`Procedure_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedure`
--

LOCK TABLES `procedure` WRITE;
/*!40000 ALTER TABLE `procedure` DISABLE KEYS */;
INSERT INTO `procedure` VALUES (71,'surgery','2021-02-04 03:00:00',200.00),(72,'surgery','2021-01-04 04:00:00',300.00),(73,'operation','2021-01-14 01:00:00',250.67);
/*!40000 ALTER TABLE `procedure` ENABLE KEYS */;
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

-- Dump completed on 2020-11-27 12:02:01
