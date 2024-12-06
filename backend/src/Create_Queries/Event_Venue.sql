use [EventManagementSystem];


CREATE TABLE Event_Venue (
   Venue_ID INT FOREIGN KEY REFERENCES Venues(Venue_ID),
   Event_ID INT FOREIGN KEY REFERENCES Events(Event_ID),
   PRIMARY KEY (Venue_ID, Event_ID)
);