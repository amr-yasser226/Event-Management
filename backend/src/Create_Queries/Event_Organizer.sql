use [EventManagementSystem];


CREATE TABLE Event_Organizer (
   User_ID INT FOREIGN KEY REFERENCES Users(User_ID),
   Event_ID INT FOREIGN KEY REFERENCES Events(Event_ID),
   PRIMARY KEY (User_ID, Event_ID)
);