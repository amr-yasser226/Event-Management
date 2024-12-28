use [EventManagementSystem];


CREATE TABLE Events (
 Event_ID INT PRIMARY KEY IDENTITY(1,1),
 Event_Name VARCHAR(100) NOT NULL,
 Category VARCHAR(100) NOT NULL Check (Category IN ('Music', 'Art', 'Food', 'Sports', 'Tech', 'Business', 'Health', 'Education', 'Other')),
 Event_Description VARCHAR(MAX),
 Event_Status VARCHAR(100) CHECK(Event_Status IN ('Upcoming', 'In Progress', 'Completed', 'Cancelled')),
 StartDate DATE NOT NULL,
 EndDate DATE NOT NULL,
 Capacity INT,
 Attendee_Count INT,
 Registration_Fee DECIMAL(10, 2)
 );