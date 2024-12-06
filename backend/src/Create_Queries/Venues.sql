use [EventManagementSystem];


 CREATE TABLE Venues (
   Venue_ID INT PRIMARY KEY,
   Venue_Loc INT FOREIGN KEY REFERENCES Locations(location_ID),
   Venue_Name VARCHAR(100),
   Venue_Description VARCHAR(MAX),
   Phone_Number INT UNIQUE,
   Email VARCHAR(100) UNIQUE CHECK(Email LIKE '%_@_%._%'),
   Venue_Type VARCHAR(100) CHECK (Venue_Type IN ('Indoor', 'Outdoor', 'Virtual', 'Hybrid')),
   Capacity INT,
   
   Availability_Status VARCHAR(100) 
   CHECK(Availability_Status IN ('Available', 'Booked', 'Under Renovation', 'Closed')), -- Under Renovation is temporary, Closed is permanent
   
   Rental_Cost Decimal(12,2),
   Facilities VARCHAR(MAX),
   Venue_Url VARCHAR(MAX),
 );