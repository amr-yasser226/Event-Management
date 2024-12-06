use [EventManagementSystem];


CREATE TABLE Volunteer_Task (
User_ID INT FOREIGN KEY REFERENCES Users(User_ID),
Task_ID INT FOREIGN KEY REFERENCES Tasks(Task_ID),
PRIMARY KEY (User_ID, Task_ID)
);