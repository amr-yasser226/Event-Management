use [EventManagementSystem];


 CREATE TABLE Notifications (
   Notification_ID INT PRIMARY KEY IDENTITY(1,1),
   User_ID INT FOREIGN KEY REFERENCES Users(User_ID),
   Content VARCHAR(MAX),
   Read_Status VARCHAR(100) CHECK(Read_Status IN ('Read', 'Unread')),
   Notification_Date DATE NOT NULL,
 );
