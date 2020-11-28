CREATE DATABASE  IF NOT EXISTS `database1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `database1`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: database1
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
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Phone_Num` varchar(128) DEFAULT NULL,
  `Address` varchar(128) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `DOB` date NOT NULL,
  PRIMARY KEY (`Employee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (21,'James','Brown','643728192','6 main st','M','1998-03-04'),(22,'Tony','Nill','433333334','1 main st','M','1889-05-07');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `appt_ID` int NOT NULL,
  `appt_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`appt_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (44,'2020-11-10 02:11:12'),(45,'2020-12-05 03:00:00'),(46,'2020-12-07 04:00:00'),(47,'2020-12-07 01:00:00'),(48,'2020-12-07 02:00:00'),(49,'2020-12-07 05:00:00'),(50,'2020-12-07 06:00:00');
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
INSERT INTO `doctor` VALUES (1,'Patrick ','Bateman','1990-05-25','832-943-2474','616 Memorial Dr.','M'),(2,'Michael ','Figueroa','1974-01-19','832-938-9088','619 Memorial Dr.','M'),(3,'Patricka','Star','1995-05-23','832-332-2434','1 Lockheed Blv','F'),(4,'Leon ','Kennedy','1982-01-25','832-213-2344','212 Memorial Dr.','M'),(5,'John ','Green','1983-03-25','832-333-2474','3234 Memorial Dr.','M');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `Insurance_Id` int NOT NULL,
  `Insur_Name` varchar(45) DEFAULT NULL,
  `Policy_Num` int DEFAULT NULL,
  `Insur_Date` date DEFAULT NULL,
  PRIMARY KEY (`Insurance_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (50,'Aetna ',9983,'2022-05-12'),(51,'Aetna',54663,'2020-01-01'),(52,'Shield',65432,'2021-09-12'),(53,'United health',65543,'2022-06-07'),(54,'Humana',98776,'2022-09-04'),(55,'United health',12654,'2021-04-06');
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
  `Address` varchar(128) DEFAULT NULL,
  `Education` varchar(45) DEFAULT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Nurse_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` VALUES (31,'Wanda','Mills','2129990838','126 Pencil St.','Bachelors','1967-05-07','F'),(32,'Stephen ','Stewart','2129990000','125 Penicl St','Bachelors','1992-07-21','M'),(33,'Stephen ','Stewart','2129990000','125 Penicl St','Bachelors','1993-04-14','M'),(34,'Phil  ','Lambert','2819988787','990 Main St ','Masters','1995-06-17','M'),(35,'Paul ','Burnell','8996002929','1 Nuketown St.','Masters','1994-04-19','M');
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
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Phone_Num` varchar(128) DEFAULT NULL,
  `Address` varchar(128) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `DOB` date NOT NULL,
  PRIMARY KEY (`Patient_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Michael','Figueroa','8329432474','616 Memorial Heights ','M','1964-06-25'),(2,'Puspa','Giri','2128887676','1100 York St.','F','1966-04-19'),(3,'Vy','Ngyuen ','5559498384','1 Main Street','M','1969-03-30'),(4,'Tim','Parr','5559498384','1 Main Street','M','1972-05-26'),(5,'Leah','Paige ','5559498384','1 Lockheed Blv','M','1974-09-20'),(6,'Ruth','Gill ','2812180728','612 Memorial Dr.','M','1975-12-13'),(7,'Victor','James ','5559897765','123 Slope Ln','M','1977-01-07'),(8,'Evan','McLean','8329432443','16000 Penssylvania Ave','M','1992-09-01'),(9,'Mark','Wells','7473536262','1 main st','M','2012-01-01'),(10,'Lily','Grey','832943322','616 Memorial Heights','F','1994-06-25'),(11,'Bill','Smith','5463772822','2 main st','M','1998-09-03'),(12,'Peter','Nill','6543888299','1 main st','M','1990-03-02'),(13,'Sam','Smith','2526127111','2 main st','M','1993-01-04'),(14,'Linda','White','5364728292','23 winrock blvd','F','2001-04-06'),(15,'Jina','Garcia','6354352718','1 main st','F','1998-09-08'),(16,'Billie','Wells','7362819101','3 main st','M','2010-05-01'),(17,'Joe','Brown','2212819101','1 main st','M','2003-01-02');
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
  `Presc_Name` varchar(45) DEFAULT NULL,
  `Presc_Fee` decimal(5,2) DEFAULT NULL,
  `Presc_Date` date DEFAULT NULL,
  PRIMARY KEY (`Presc_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` VALUES (61,'Altace',40.45,'2020-12-14'),(62,'Ultram',20.78,'2020-11-30'),(63,'Diabeta',55.98,'2020-12-30'),(64,'Altace',100.98,'2020-12-03'),(65,'Ultram',99.99,'2020-12-06'),(66,'Diabeta',60.54,'2020-12-28');
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
INSERT INTO `procedure` VALUES (71,'cardio','2021-02-06 03:00:00',200.00),(72,'rectal','2021-01-08 04:00:00',300.00),(73,'colon','2020-12-14 01:00:00',250.67),(74,'Appendix','2021-01-09 06:00:00',654.43),(75,'pediatric','2020-12-13 04:00:00',200.00),(76,'colon','2020-12-14 02:00:00',300.00),(77,'rectal','2020-12-04 05:00:00',400.00);
/*!40000 ALTER TABLE `procedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `Employee_ID` int NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Phone_Num` varchar(128) DEFAULT NULL,
  `Address` varchar(128) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `DOB` date NOT NULL,
  `Education` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (31,'Bella','Hadid','658389292','66 Westheimer rd.','F','1990-02-05','High School'),(32,'Harris','White','351718181','54 Town dr.','M','1992-05-06','Diploma'),(33,'Kevin','Simon','782992927','12 Winrock blvd.','M','1990-09-07','Bachelors'),(34,'Ellie','Nino','782929737','18 Ella rd.','F','1991-04-06','Masters'),(35,'Elsa','Arabia','232234343','71 Harrison dr.','F','1995-04-05','Bachelors'),(36,'Michael','Jackson','939232322','616 Memorial Dr. ','M','1998-12-21','Diploma'),(37,'Jose','Figueroa','8323220321','616 Memorial Dr.','M','1998-04-21','Bachelors'),(38,'Kylie','Jenner','8329432474','818 Hollywood Dr.','F','1989-10-23','Masters'),(39,'Joshua','Green','8323220321','818 TurnPike Dr','M','1998-02-21','High school'),(40,'Erick','Lopez','8326767767','616 Memorial Dr.','M','1998-11-11','Bachelors');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-28 14:19:43
