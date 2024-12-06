use [EventManagementSystem];


CREATE TABLE Feedbacks (
   Feedback_ID INT PRIMARY KEY IDENTITY(1,1),
   User_ID INT FOREIGN KEY REFERENCES Users(User_ID),
   Event_ID INT FOREIGN KEY REFERENCES Events(Event_ID),
   Rating INT CHECK(Rating BETWEEN 1 AND 5),
   Comment VARCHAR(MAX),
   Submission_Date DATE NOT NULL,
);