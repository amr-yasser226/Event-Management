use [EventManagementSystem];


CREATE TABLE Organizers (
 User_ID INT PRIMARY KEY FOREIGN KEY REFERENCES Users(User_ID),
 Org_Type VARCHAR(100) CHECK(Org_Type IN ('Non-Profit', 'For-Profit', 'Government', 'Educational', 'Other')),
);
