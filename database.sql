/*
Database Name: Hospital Database

Entitiy Relatationship (ER) DIAGRAM: 
	* Entities are the "things" for which we want to store information. 
	* An entity is a person, place, thing or event.
    * Attributes are the data we want to collect for an entitiy.
    * Relationships describe the relations between the entities.
    * You draw entities (tables), add attributes (columns) and create relationships between those entities
	* snapshot of data structures
	* entities = tables 
    * shows relationships betweeen tables
    



Actors: 
	1. Staff
	2. Doctor
	3. Admin
	4. Manager
	5. Nurse


Entities: ( 9 TOTAL) 

Patient = Patient
	* Patient_Id
    * First_Name
    * Last_Name
	* Phone_Num
	* Address 
    * Gender 
    * DOB
    
Doctor = Doctor
	*Employee_Id
	* First_Name
    * Last_Name
    * DOB
    * Phone_Num
    * Address 
    * Gender
    
    
Admin = Admin
	*Employee_Id
	* First_Name
    * Last_Name
	* Phone_Num
	* Address 
    * Gender 
    * DOB
    
Staff = Staff
	*Employee_Id
	* First_Name
    * Last_Name
	* Phone_Num
	* Address 
    * Gender 
    * DOB
    * Education
    
Insurance = Insurance
		* Insur_Name 
		* Policy_Num
        * Insurance_Id 
        * Insur_Date
        
Appointment = Appointment
	* Appointment_ID
    * Appt_Time 
    * Appt_Date
    
Prescription = Prescription 
	* Presc_Time 
    * Presc_Name 
    * Presc_Date 
    * Presc_Fee
    
Nurse = Nurse
	*Employee_Id
	* First_Name 
    * Last_Name
	* Address
    * DOB 
    * Gender 
    * Phone_Num 
    
Procedure = Procedure
	* Procedure_Time 
    * Proceure_Name
    * Procedure_Data 
    * Procedure_Fee
    
    
Commands: 

//TO create table of Patient

CREATE TABLE `database1`.`patient` (
  `Patient_Id` INT NOT NULL,
  `First_Name` VARCHAR(45) NOT NULL,
  `Last_Name` VARCHAR(45) NOT NULL,
  `Phone_Num` VARCHAR(128) NULL,
  `Address` VARCHAR(128) NULL,
  `Gender` VARCHAR(45) NULL,
  `DOB` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Patient ID`));

//command to insert values into table patient
INSERT INTO `database1`.`patient`(
`Patient_Id`, `First_Name`, `Last_Name`, `Phone_Num`, `Address`, `Gender`, `DOB`)
VALUES('16', 'Billie', 'Wells', '7362819101', '3 main st', 'M', '5/5/2010');


//TO create table of Admin

CREATE TABLE `database1`.`admin` (
  `Employee_Id` INT NOT NULL,
  `First_Name` VARCHAR(45) NOT NULL,
  `Last_Name` VARCHAR(45) NOT NULL,
  `Phone_Num` VARCHAR(128) NULL,
  `Address` VARCHAR(128) NULL,
  `Gender` VARCHAR(45) NULL,
  `DOB` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`EmployeeID`));
  
 
//TO create table of Staff

CREATE TABLE `database1`.`staff` (
  `Employee_ID` INT NOT NULL,
  `First_Name` VARCHAR(45) NOT NULL,
  `Last_Name` VARCHAR(45) NOT NULL,
  `Phone_Num` VARCHAR(128) NULL,
  `Address` VARCHAR(128) NULL,
  `Gender` VARCHAR(45) NULL,
  `DOB` VARCHAR(45) NOT NULL,
  `Education` VARCHAR(45) NULL,
  PRIMARY KEY (`Employee_ID`));
  
//command to insert values into table staff
INSERT INTO `database1`.`staff` (`Employee_ID`, `First_Name`, `Last_Name`, `Phone_Num`, `Address`, `Gender`, `DOB`, `Education`) VALUES ('31', 'Bella', 'Hadid', '658389292', '66 Westheimer rd.', 'F', '5/2/1990', 'High School');
INSERT INTO `database1`.`staff` (`Employee_ID`, `First_Name`, `Last_Name`, `Phone_Num`, `Address`, `Gender`, `DOB`, `Education`) VALUES ('32', 'Harris', 'White', '351718181', '54 Town dr.', 'M', '4/3/1992', 'Diploma');
INSERT INTO `database1`.`staff` (`Employee_ID`, `First_Name`, `Last_Name`, `Phone_Num`, `Address`, `Gender`, `DOB`, `Education`) VALUES ('33', 'Kevin', 'Simon', '782992927', '12 Winrock blvd.', 'M', '6/9/1990', 'Bachelors');
INSERT INTO `database1`.`staff` (`Employee_ID`, `First_Name`, `Last_Name`, `Phone_Num`, `Address`, `Gender`, `DOB`, `Education`) VALUES ('34', 'Ellie', 'Nino', '782929737', '18 Ella rd.', 'F', '5/3/1991', 'Masters');
INSERT INTO `database1`.`staff` (`Employee_ID`, `First_Name`, `Last_Name`, `Phone_Num`, `Address`, `Gender`, `DOB`, `Education`) VALUES ('35', 'Elsa', 'Arabia', '232234343', '71 Harrison dr.', 'F', '4/2/1995', 'Bachelors');

  
  
*/ 




DROP DATABASE hospital_database;

