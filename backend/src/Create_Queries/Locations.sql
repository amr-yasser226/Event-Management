use [EventManagementSystem];


CREATE TABLE Locations (
 Location_ID INT PRIMARY KEY IDENTITY(1,1),
 Loc_Name VARCHAR(100) NOT NULL,
 Zip_Code VARCHAR(100) UNIQUE,
 Country VARCHAR(100) NOT NULL,
 Loc_State VARCHAR(100) NOT NULL,
 City VARCHAR(100)  NOT NULL,
 Longitude FLOAT,
 Latitude FLOAT,
 Accessibility VARCHAR(MAX), -- can be a long description, no point in limiting it. The display of distinctive features will be done in the frontend
 Landmark VARCHAR(100),
 Loc_Type VARCHAR(100),
);