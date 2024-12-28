use [EventManagementSystem];


CREATE TABLE Sponsors (
   Sponsor_ID INT PRIMARY KEY IDENTITY(1,1),
   Sponsor_Name VARCHAR(100) NOT NULL,
   Category VARCHAR(100) NOT NULL CHECK(Category IN ('Corporate', 'Government', 'Non-Profit', 'Educational', 'Other')),
   Email VARCHAR(100) UNIQUE CHECK(Email LIKE '%_@_%._%'),
   -- Funding_Amount DECIMAL(12,2),
   Sponsor_Location INT FOREIGN KEY REFERENCES Locations(Location_ID), 
   -- Sponsorship_Type VARCHAR(100) CHECK(Sponsorship_Type IN ('Platinum', 'Gold', 'Silver', 'Bronze', 'Other')),
   -- Agreement_Date DATE NOT NULL,
   -- Contact_Duration VARCHAR (100) NOT NULL,
   Sponsor_Url VARCHAR(MAX),
);