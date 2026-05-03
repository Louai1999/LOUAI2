
Use SkyTrack_Airline;
--Air craft
Create Table Aircraft(Reg_Number int primary key identity (1,1),
Year_Manufacture int Not null,
Model Varchar (20) not null,
Capacity int Not Null,
CHECK (Capacity > 0)
);

--Airport 
Create Table Airport (IATA_Code int primary key identity(1,1),
Contry varchar (20) Not Null,
Name varchar (20) Not Null,
City Varchar (20) Not Null,
reg_Number int NOT Null Unique,
 CONSTRAINT FK_Airport_Aircraft
    FOREIGN KEY (Reg_Number)
    REFERENCES Aircraft(Reg_Number)
	);
--passenger 
Create Table Passenger(Passenger_ID int primary key identity(1,1),
Full_Name Varchar (20) Not Null,
DOB date Not null,
 Phone VARCHAR(20) NOT NULL,
 Nationality Varchar (100) not null,
 Email Varchar (20) Not Null unique,
 National_ID Varchar (30) Not null Unique
 );

 --Crew member
 Create table Crewmember(License_NO int primary key identity (1,1),
 Full_Name Varchar (20) Not Null,
    Role VARCHAR(50) NOT NULL,
    CHECK (Role IN ('Pilot', 'Co-Pilot', 'Flight Attendant', 'Engineer'))
);
--Flight 
Create Table Flight(Flight_ID int primary key identity (1,1),
Flight_No varchar (20) Not null Unique,
Departure_Datetime Datetime  Not null,
Arrival_Datetime Datetime  Not null,
  Status Varchar (100) Not null,
      Aircraft_Reg_Number INT NOT NULL,
      CHECK (Status IN ('Scheduled', 'Delayed', 'Cancelled', 'Completed')),
	      CHECK (Arrival_Datetime > Departure_Datetime),
		  CONSTRAINT Aircraft_Reg_Number
    FOREIGN KEY (Aircraft_Reg_Number)
    REFERENCES Aircraft(Reg_Number) 
);
-- Bokking
  Create Table Booking(Booking_ID int primary key identity (1,1),
   Passenger_ID INT NOT NULL,
    Flight_ID INT NOT NULL,
  Seat_No varchar (10) Not null,
  Class Varchar (20) Not null,
      Price DECIMAL(10,2) NOT NULL,
	      Booking_Date DATE NOT NULL DEFAULT GETDATE(),
    CHECK (Price > 0),
    CHECK (Class IN ('Economy', 'Business', 'First')),
	 
	   FOREIGN KEY (Passenger_ID)
    REFERENCES Passenger(Passenger_ID),
	  FOREIGN KEY (Flight_ID)
    REFERENCES Flight(Flight_ID)
);
--Flight- Crew
CREATE TABLE Flight_Crew (
    Flight_ID INT NOT NULL,
    Crew_ID INT NOT NULL,

    Role_On_Flight VARCHAR(50),

    PRIMARY KEY (Flight_ID, Crew_ID),

    FOREIGN KEY (Flight_ID)
    REFERENCES Flight(Flight_ID),

    FOREIGN KEY (Crew_ID)
    REFERENCES Crewmember(License_NO)
);