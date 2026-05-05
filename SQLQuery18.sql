use SkyTrack_Airline

--Oppreation Airline
Create Table Airline(Airline_ID int primary key identity(1,1),
IATA_code varchar (20)not null unique,
Name varchar (20) Not null unique,
Country Varchar (30) not null,
Contact_email Varchar not null Unique,
);


--Baggage----------
Create Table Baggage(Baggage_ID int primary key identity(1,1),
Tag_Number varchar (20) not null unique,
Weight_KG Decimal (5,2) check (Weight_KG > 0),
Type varchar (20) not null check (type in('Cabin','checked')),
Booking_ID int not null
Constraint FK_baggage_Booking
Foreign key (booking_ID)
References Booking(Booking_ID)
);


---Gate-------------------

Create table Gate(Gate_ID int primary key identity(1,1),
Gate_code varchar (20) not Null,
Terminal Varchar(20) Not null,
Airport_ID int Not null,
Constraint FK_Gate_Airport
Foreign key (airport_ID)
References Airport(Airport_ID)
);

--FlightDelaylog
create table FlightDelay(Delay_ID int primary key identity(1,1),
Reason Varchar(200) Not null,
Duraction_Minutes int not null check (Duraction_Minutes > 0),
recorded datetime not null,
Flight_ID int Not null,
Constraint FK_delay_Flight
foreign key (Flight_ID)
References Flight(Flight_ID)
);


