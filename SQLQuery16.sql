use SkyTrack_Airline;
go
--Aircraft

INSERT INTO Aircraft (Year_Manufacture, Model, Capacity)
VALUES
(2015, 'Boeing 737', 180),
(2018, 'Airbus A320', 170),
(2020, 'Boeing 787', 250),
(2016, 'Airbus A330', 260),
(2021, 'Boeing 777', 300);

--Airport
INSERT INTO Airport (Contry, Name, City, Reg_Number)
VALUES
('USA', 'JFK', 'New York', 1),
('UK', 'Heathrow', 'London', 2),
('UAE', 'DXB', 'Dubai', 3),
('Qatar', 'Hamad', 'Doha', 4),
('France', 'CDG', 'Paris', 5);

--Passenger
INSERT INTO Passenger (Full_Name, DOB, Phone, Nationality, Email, National_ID)
VALUES
('Ali Hassan', '1995-05-10', '90011111', 'Omani', 'ali@gmail.com', 'ID001'),
('Sara Ahmed', '1992-03-15', '90022222', 'UAE', 'sara@gmail.com', 'ID002'),
('John Smith', '1988-07-20', '90033333', 'USA', 'john@gmail.com', 'ID003'),
('Emma Brown', '1999-11-01', '90044444', 'UK', 'emma@gmail.com', 'ID004'),
('Mohammed Ali', '1990-01-25', '90055555', 'Qatar', 'mohammed@gmail.com', 'ID005'),
('Lina Khalid', '1996-06-30', '90066666', 'Kuwait', 'lina@gmail.com', 'ID006'),
('David Lee', '1985-09-09', '90077777', 'Canada', 'david@gmail.com', 'ID007'),
('Fatima Noor', '2000-12-12', '90088888', 'Omani', 'fatima@gmail.com', 'ID008');
select*from passenger
--Crew
INSERT INTO Crewmember (Full_Name, Role)
VALUES
('Captain Ahmed', 'Pilot'),
('Captain John', 'Pilot'),
('Sara Ali', 'Co-Pilot'),
('Noura Khalid', 'Flight Attendant'),
('Omar Hassan', 'Engineer'),
('Lina Saeed', 'Flight Attendant');

--Flight
INSERT INTO Flight (Flight_No, Departure_Datetime, Arrival_Datetime, Status, Aircraft_Reg_Number)
VALUES
('F100', '2026-05-01 08:00', '2026-05-01 12:00', 'Scheduled', 1),
('F101', '2026-05-02 09:00', '2026-05-02 13:00', 'Delayed', 2),
('F102', '2026-05-03 10:00', '2026-05-03 14:00', 'Completed', 3),
('F103', '2026-05-04 11:00', '2026-05-04 15:00', 'Cancelled', 4),
('F104', '2026-05-05 12:00', '2026-05-05 16:00', 'Scheduled', 5),
('F105', '2026-05-06 13:00', '2026-05-06 17:00', 'Completed', 1),
('F106', '2026-05-07 14:00', '2026-05-07 18:00', 'Delayed', 2),
('F107', '2026-05-08 15:00', '2026-05-08 19:00', 'Scheduled', 3);

--Booking
INSERT INTO Booking (Passenger_ID, Flight_ID, Seat_No, Class, Price)
VALUES
(1,1,'A1','Economy',100),
(2,1,'A2','Business',200),
(3,2,'B1','First',300),
(4,3,'C1','Economy',120),
(5,4,'D1','Business',220),
(6,5,'E1','Economy',90),
(7,6,'F1','First',400),
(8,7,'G1','Economy',110),
(1,8,'H1','Business',210),
(2,3,'I1','Economy',95);

--Flight_Crew
INSERT INTO Flight_Crew (Flight_ID, Crew_ID, Role_On_Flight)
VALUES
(1,1,'Pilot'),
(1,4,'Flight Attendant'),

(2,2,'Pilot'),
(2,3,'Co-Pilot'),

(3,1,'Pilot'),
(3,5,'Engineer'),
(3,4,'Flight Attendant'),

(4,2,'Pilot'),
(4,6,'Flight Attendant'),

(5,1,'Pilot'),
(5,4,'Flight Attendant'),

(6,2,'Pilot'),
(6,5,'Engineer'),
(6,6,'Flight Attendant'),

(7,1,'Pilot'),
(7,4,'Flight Attendant'),

(8,2,'Pilot'),
(8,6,'Flight Attendant');
