use [EventManagementSystem];



CREATE TABLE Users (
 User_ID INT IDENTITY(1,1) PRIMARY KEY, -- PK, (1,1) is the seed and increment value, meaning it starts at 1 and increments by 1
 Email VARCHAR(100) UNIQUE NOT NULL CHECK(Email LIKE '%_@_%._%'), -- Email has to be in a valid format
 First_Name VARCHAR(100) NOT NULL,
 Last_Name VARCHAR(100), -- Last name is not required

 Pass_Hash VARCHAR(100) NOT NULL 
 CHECK(LEN(Pass_Hash)>=8  
 AND Pass_Hash LIKE '%[0-9]%' 
 AND Pass_Hash LIKE '%[!@#$%^&*()]%'),      -- Password has to be at least 8 characters and contain a number and a special character

 Contact_Number VARCHAR(20) UNIQUE NOT NULL ,
 DoB DATE,
 Gender VARCHAR(10) CHECK (Gender IN ('Male', 'Female', 'Other')),
 Profile_Picture VARCHAR(255), -- this is the path to the profile picture, not the picture itself
 Registration_Date DATE NOT NULL, 
 User_Type VARCHAR(50) NOT NULL CHECK (User_Type IN ('Attendee', 'Organizer', 'Admin', 'Volunteer')), 
 User_Bio VARCHAR(MAX), -- can be a long description, no point in limiting it
 User_Address INT FOREIGN KEY REFERENCES Locations(Location_ID),
 User_Url VARCHAR(MAX)
 );