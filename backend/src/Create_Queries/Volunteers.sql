use [EventManagementSystem];


CREATE TABLE Volunteers(
    User_ID INT PRIMARY KEY FOREIGN KEY REFERENCES Users(User_ID),
    Event_ID INT FOREIGN KEY REFERENCES Events(Event_ID),
    Vol_Role VARCHAR (50) NOT NULL CHECK(Vol_Role IN ('Staff', 'Coordinator', 'Planner', 'Manager', 'Assistant', 'Other')),
    Skills VARCHAR(MAX), -- comma-separated list of skills, don't need to create a separate table for this
    Current_Task INT FOREIGN KEY REFERENCES Tasks(Task_ID), 
    is_available BIT,
 );