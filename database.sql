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
	* PatientID
    * FirstName
    * LastName
	* PhoneNum
	* Address 
    * Gender 
    * DOB
    
Doctor = Doctor
	* FirstName
    * Last_Name
    * DOB
    * PhoneNum
    * Address 
    * Gender
    
    
Admin = Admin
	* FirstName
    * LastName
	* PhoneNum
	* Address 
    * Gender 
    * DOB
    
Staff = Staff
	* FirstName
    * LastName
	* PhoneNum
	* Address 
    * Gender 
    * DOB
    * Education
    
Insurance = Insurance
		* InsurName 
		* PolicyNum
        * InsuranceID 
        * InsurDate
        
Appointment = Appointment
	* Appointment_ID
    * ApptTime 
    * ApptDate
    
Prescription = Prescription 
	* PrescTime 
    * PrescName 
    * PrescDate 
    * PrescFee
    
Nurse = Nurse
	* FirstName 
    * LastName
	* Address
    * DOB 
    * Gender 
    * PhoneNum 
    
Procedure = Procedure
	* ProcedureTime 
    * ProceureName
    * ProcedureData 
    * ProcedureFee
    
    
Commands: 








*/ 




DROP DATABASE hospital_database;

