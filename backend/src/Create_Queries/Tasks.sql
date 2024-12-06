use [EventManagementSystem];


CREATE TABLE Tasks (
    Task_ID INT PRIMARY KEY IDENTITY(1,1),
    Task_Name VARCHAR(100),
    Task_Description VARCHAR(MAX),
    StartDate DATE NOT NULL,
    EndDate Date NOT NULL,
    Event_ID INT FOREIGN Key REFERENCES Events(Event_ID),
    PriorityLevel INT NOT NULL CHECK (PriorityLevel BETWEEN 1 AND 10),
    Task_Status VARCHAR(100) CHECK(Task_Status IN ('To Do', 'In Progress', 'Completed', 'Cancelled')),
    Dependency INT FOREIGN KEY REFERENCES Tasks(Task_ID), -- self-referencing foreign key, references the Task_ID of other tasks that this task depends on
 );
