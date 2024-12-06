use [EventManagementSystem];


 CREATE TABLE Tickets (
   Ticket_ID INT PRIMARY KEY,
   Event_ID INT FOREIGN KEY REFERENCES Events(Event_ID),
   User_ID INT FOREIGN KEY REFERENCES  Users(User_ID),
   Price DECIMAL (12,2),
   Purchase_Date DATE NOT NULL,
   Seat_Number INT,
   Ticket_Status VARCHAR(50) CHECK(Ticket_Status IN ('Booked', 'Cancelled', 'Refunded', 'Used')),
 );