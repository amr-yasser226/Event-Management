use [EventManagementSystem];


 CREATE TABLE Attendees (
 PRIMARY KEY (User_ID, Event_ID),
 User_ID INT NOT NULL FOREIGN KEY REFERENCES Users(User_ID),
 Event_ID INT NOT NULL FOREIGN KEY REFERENCES Events(Event_ID),
 Attendance_Status VARCHAR(100) CHECK(Attendance_Status IN ('Registered', 'Attended', 'Cancelled', 'No Show')),
 Is_Speaker BIT,
 Is_VIP BIT,
 Ticket_Type VARCHAR(50) NOT NULL CHECK(Ticket_Type IN ('Regular', 'VIP', 'Speaker')),
 Preferences VARCHAR(MAX),
 );

