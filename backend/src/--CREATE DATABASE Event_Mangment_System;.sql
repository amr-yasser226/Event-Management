CREATE DATABASE Event_Mangment_System;
use [Event_Mangment_System] ;


CREATE TABLE Users (
 User_ID INT IDENTITY(1,1) PRIMARY KEY ,-- IDENTITY FOR AUTO INCREMENTION FOR iD
 Email NVARCHAR(255) UNIQUE NOT NULL,
 First_Name NVARCHAR(100),
 Last_Name NVARCHAR(100),
 Pass_Hash NVARCHAR(8) NOT NULL CHECK(LEN(Pass_Hash)=8  
 AND Pass_Hash LIKE '%[0-9]%' 
 AND Pass_Hash LIKE '%[!@#$%^&*()]%'),      -- chech the password hash constraint for the password 
 Contact_Number NVARCHAR(20) UNIQUE not NULL ,
 DoB DATE,
 Gender NVARCHAR(10) CHECK( Gender IN ('Male','Female','Unknown')), -- check if gender is right 
 Profile_Picture NVARCHAR(255),
 Registration_Date DATE not null,
 User_Type NVARCHAR(50) Not NULL ,
 );
CREATE TABLE Organizer(
    User_ID INT NOT NULL,                  -- Event ID will be removed from the organizer table to insure the SQL Tables  
    Event_Type NVARCHAR(50) NOT NULL,
    Events_Num INT Not NULL, -- WHY?????
    PRIMARY KEY (User_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

CREATE TABLE Events (
 Event_ID INT PRIMARY KEY IDENTITY(1,1),
 Name NVARCHAR(100) ,
 Category NVARCHAR(50)Not NULL,
 Description NVARCHAR(MAX),
 StartDate DATE  NOT NULL,
 EndDate DATE NOT NULL,
 Max_Attendees INT,
 Event_Status NVARCHAR(50) CHECK (Event_Status IN ('Ready','In Progress','Scheduled', 'Completed','Cancelled', 'Postponed','OnHold')), -- CHECK IF THE EVENT STATUS IS RIGHT
 Current_Attendee_Count INT,
 Registration_Fee DECIMAL(10, 2),
 Organizer_ID INT,
 FOREIGN KEY (Organizer_ID) REFERENCES Organizer(User_ID) -- CHANGED FROM THE USER iD IN USER TABLE TO THE ORGANIZER iD IN THE ORGANIZER TABEL
 );




 CREATE TABLE Attendees (
 User_ID INT NOT NULL,
 Event_ID INT NOT NULL,
 Is_Speaker BIT,
 Attendance_Status NVARCHAR(100) CHECK(Attendance_Status IN ('ATENDED', 'DID NOT ATTENDEND')),
 Is_VIP BIT,
 Ticket_Type NVARCHAR(50) NOT NULL,
 Preferences NVARCHAR(MAX),
 PRIMARY KEY (User_ID, Event_ID),
 FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
 FOREIGN KEY (Event_ID) REFERENCES Events(Event_ID)
 );




 

CREATE TABLE Tasks ( -- Not Working
    Task_ID INT PRIMARY KEY,
    Event_ID INT FOREIGN Key REFERENCES Events(Event_ID),
    Name VARCHAR(50),
    Task_Description VARCHAR(MAX),
    StartDate DATE NOT NULL,
    EndDate Date NOT NULL,
    Assigned_To INT FOREIGN KEY  REFERENCES Organizer(User_ID), -- CHANGED FORM JUST AN INT TO WHICH ORGANIZER IS RESPONSIBLE FOR THE TASK
    Priority_Level INT NOT NULL check(Priority_Level BETWEEN 1 AND 10), -- CHECK PRIORTY LEVEL FORM 1 TO 10
    Status VARCHAR(50) CHECK(Status In ('In Porgress','Completed','Postponed', 'OnHold','Cancelled')),
    Dependency VARCHAR(50), -- WHAT IS THAT 

 );
 
 CREATE TABLE  Donations(
    Donation_ID INT PRIMARY KEY  IDENTITY(1,1) ,
    Event_ID INT, 
    FOREIGN KEY (Event_ID) REFERENCES Events(Event_ID),
    Payment_Date DATE NOT NULL,
    Amount DECIMAL (10,2) NOT NULL,
    Payment_methode VARCHAR(100) NOT NULL,
    Donor_Name VARCHAR(50),
    Donator_ID INT NOT NULL , -- added the donator id which could be any user 
    FOREIGN KEY (Donation_ID) REFERENCES Users(User_ID),
    Transaction_ID INT  , -- made the transaction Id auto increment 
    Purpose_Donation VARCHAR(MAX),
 );



 CREATE TABLE  Volunteers(
    User_ID INT PRIMARY KEY  FOREIGN KEY REFERENCES Users(User_ID),
    Role VARCHAR (50) NOT NULL,
    Skills VARCHAR(200),
    Preferred_Task VARCHAR (100),
    Availability NVARCHAR(50),
 );

CREATE TABLE Location (
 Location_ID INT PRIMARY KEY IDENTITY(1,1),
 Name NVARCHAR(255) ,
 Address NVARCHAR(255) ,
 Zip_Code NVARCHAR(20) UNIQUE NOT NULL ,
 Country NVARCHAR(100) NOT NULL,
 State NVARCHAR(100) NOT NULL,
 City NVARCHAR(100)  NOT NULL,
 Longitude FLOAT,
 Latitude FLOAT,
 Accessibility NVARCHAR(MAX),
 Landmark NVARCHAR(255),
 Neighborhood NVARCHAR(255)
 );
 CREATE TABLE Ticket(
   Ticket_ID INT PRIMARY KEY,
   Event_ID INT FOREIGN KEY REFERENCES Events(Event_ID),
   User_ID INT FOREIGN KEY REFERENCES  Users(User_ID),
   Price DECIMAL (10,2),
   Parchase_Date DATE NOT NULL,
   Seat_Number INT ,
   Ticket_Status VARCHAR(50)
 );
 CREATE TABLE Notification (
   Notification_ID INT PRIMARY KEY IDENTITY(1,1),
   User_ID INT FOREIGN KEY REFERENCES Users(User_ID),
   Content VARCHAR(255),
   Read_Status VARCHAR (50),
   Notification_Date DATE NOT NULL,

 );

 CREATE TABLE Venue(
   Venue_ID INT PRIMARY KEY,
   location_ID INT FOREIGN KEY REFERENCES Location(location_ID),
   Name VARCHAR(100),
   Description VARCHAR(MAX),
   Phone_Number INT CHECK(LEN(Phone_number)=8) UNIQUE, -- checking for the phone number digits 
   Type VARCHAR(100),
   Capacity INT,
   Availability_Status VARCHAR(100),
   Rental_Cost Decimal(10,2),
   Facilities VARCHAR(50)
 );
CREATE TABLE Sponsor(
   Sponsor_ID INT PRIMARY KEY,
   Name VARCHAR(50) NOT NULL,
   Category VARCHAR(100),
   Email VARCHAR (255) UNIQUE,
   Funding_Amount DECIMAL(10,2) ,
   Location VARCHAR(100),
   Sponsorship_Type VARCHAR(100),
   Agreement_Date DATE NOT NULL,
   Contact_Duration VARCHAR (50) NOT NULL,
   Contact_Person VARCHAR(255) UNIQUE ,
);

CREATE TABLE Vendor (
Vendor_ID INT PRIMARY KEY ,
Name varchar(50),
Email VARCHAR(255) UNIQUE,
Phone_Number INT CHECK(LEN(Phone_Number)=8) UNIQUE,
Category VARCHAR(100), -- what does it do ?
Address VARCHAR(255),
Service_Provider VARCHAR (100),
Available_Status VARCHAR (50)
);

CREATE TABLE Feedback(
   Feedback_ID INT PRIMARY KEY IDENTITY(1,1) ,
   User_ID INT FOREIGN KEY REFERENCES Users(User_ID),
   Event_ID INT FOREIGN KEY REFERENCES Events(Event_ID),
   Rating INT CHECK(Rating BETWEEN 1 AND 5),
   Comment VARCHAR(MAX),
   Submission_Date DATE NOT NULL,
);

 ----
 --many to many relationship
CREATE TABLE Sponsors (
   SP_ID INT PRIMARY KEY FOREIGN KEY REFERENCES Sponsor(Sponsor_ID) ,
   Event_ID INT  FOREIGN Key REFERENCES Events (Event_ID),
);
CREATE TABLE Assigned_To (
User_ID INT ,
Task_ID INT ,
PRIMARY KEY (User_ID, Task_ID),
FOREIGN KEY (User_ID) REFERENCES Users (User_ID),
FOREIGN KEY (Task_ID) REFERENCES Tasks (Task_ID)
);
CREATE TABLE Assigns (
   User_ID INT ,   ----why is the relation not bold
   Event_ID INT ,
   PRIMARY KEY (User_ID, Event_ID),
   FOREIGN KEY (User_ID) REFERENCES Users (User_ID),
   FOREIGN KEY (Event_ID) REFERENCES Events (Event_ID)
);
CREATE TABLE ProvidesService (
 Vendor_ID INT,
 Event_ID INT,
 PRIMARY KEY (Vendor_ID, Event_ID),
 FOREIGN KEY (Vendor_ID) REFERENCES Vendor(Vendor_ID),
 FOREIGN KEY (Event_ID) REFERENCES Events(Event_ID)
 );
CREATE TABLE Handle (
   Vendor_ID INT,
   Task_ID INT,
   PRIMARY KEY (Vendor_ID, Task_ID),
   FOREIGN KEY (Vendor_ID) REFERENCES Vendor(Vendor_ID),
   FOREIGN KEY (Task_ID) REFERENCES Tasks(Task_ID)
);








