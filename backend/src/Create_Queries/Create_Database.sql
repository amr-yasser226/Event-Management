CREATE DATABASE EventManagementSystem;



-- use [EventManagementSystem];


-- CREATE TABLE Locations (
--  Location_ID INT PRIMARY KEY IDENTITY(1,1),
--  Loc_Name VARCHAR(100) NOT NULL,
--  Zip_Code VARCHAR(100) UNIQUE,
--  Country VARCHAR(100) NOT NULL,
--  Loc_State VARCHAR(100) NOT NULL,
--  City VARCHAR(100)  NOT NULL,
--  Longitude FLOAT,
--  Latitude FLOAT,
--  Accessibility VARCHAR(MAX), -- can be a long description, no point in limiting it. The display of distinctive features will be done in the frontend
--  Landmark VARCHAR(100),
--  Loc_Type VARCHAR(100),
-- );


-- CREATE TABLE Users (
--  User_ID INT IDENTITY(1,1) PRIMARY KEY, -- PK, (1,1) is the seed and increment value, meaning it starts at 1 and increments by 1
--  Email VARCHAR(100) UNIQUE NOT NULL CHECK(Email LIKE '%_@_%._%'), -- Email has to be in a valid format
--  First_Name VARCHAR(100) NOT NULL,
--  Last_Name VARCHAR(100), -- Last name is not required

--  Pass_Hash VARCHAR(100) NOT NULL 
--  CHECK(LEN(Pass_Hash)>=8  
--  AND Pass_Hash LIKE '%[0-9]%' 
--  AND Pass_Hash LIKE '%[!@#$%^&*()]%'),      -- Password has to be at least 8 characters and contain a number and a special character

--  Contact_Number VARCHAR(20) UNIQUE NOT NULL ,
--  DoB DATE,
--  Gender VARCHAR(10) CHECK (Gender IN ('Male', 'Female', 'Other')),
--  Profile_Picture VARCHAR(255), -- this is the path to the profile picture, not the picture itself
--  Registration_Date DATE NOT NULL, 
--  User_Type VARCHAR(50) NOT NULL CHECK (User_Type IN ('Attendee', 'Organizer', 'Admin', 'Volunteer')), 
--  User_Bio VARCHAR(MAX), -- can be a long description, no point in limiting it
--  User_Address INT FOREIGN KEY REFERENCES Locations(Location_ID),
--  User_Url VARCHAR(MAX)
--  );


-- CREATE TABLE Events (
--  Event_ID INT PRIMARY KEY IDENTITY(1,1),
--  Event_Name VARCHAR(100) NOT NULL,
--  Category VARCHAR(100) NOT NULL Check (Category IN ('Music', 'Art', 'Food', 'Sports', 'Tech', 'Business', 'Health', 'Education', 'Other')),
--  Event_Description VARCHAR(MAX),
--  Event_Status VARCHAR(100) CHECK(Event_Status IN ('Upcoming', 'In Progress', 'Completed', 'Cancelled')),
--  StartDate DATE NOT NULL,
--  EndDate DATE NOT NULL,
--  Capacity INT,
--  Attendee_Count INT,
--  Registration_Fee DECIMAL(10, 2),
--  Organizer_ID INT,
--  FOREIGN KEY (Organizer_ID) REFERENCES Organizers(User_ID)
--  );


-- -- Organizer is a type of user, so it should be a foreign key to the Users table

-- CREATE TABLE Organizers (
--  User_ID INT PRIMARY KEY FOREIGN KEY REFERENCES Users(User_ID),
--  Org_Type VARCHAR(100) CHECK(Org_Type IN ('Non-Profit', 'For-Profit', 'Government', 'Educational', 'Other')),
--  Event_ID INT FOREIGN KEY REFERENCES Events(Event_ID),
-- );




--  CREATE TABLE Attendees (
--  PRIMARY KEY (User_ID, Event_ID),
--  User_ID INT NOT NULL FOREIGN KEY REFERENCES Users(User_ID),
--  Event_ID INT NOT NULL FOREIGN KEY REFERENCES Events(Event_ID),
--  Attendance_Status VARCHAR(100) CHECK(Attendance_Status IN ('Registered', 'Attended', 'Cancelled', 'No Show')),
--  Is_Speaker BIT,
--  Is_VIP BIT,
--  Ticket_Type VARCHAR(50) NOT NULL CHECK(Ticket_Type IN ('Regular', 'VIP', 'Speaker')),
--  Preferences VARCHAR(MAX),
--  );


-- CREATE TABLE Tasks (
--     Task_ID INT PRIMARY KEY IDENTITY(1,1),
--     Task_Name VARCHAR(100),
--     Task_Description VARCHAR(MAX),
--     StartDate DATE NOT NULL,
--     EndDate Date NOT NULL,
--     Event_ID INT FOREIGN Key REFERENCES Events(Event_ID),
--     Assigned_To INT FOREIGN KEY REFERENCES Organizers(User_ID),
--     PriorityLevel INT NOT NULL CHECK (PriorityLevel BETWEEN 1 AND 10),
--     Task_Status VARCHAR(100) CHECK(Task_Status IN ('To Do', 'In Progress', 'Completed', 'Cancelled')),
--     Dependency INT FOREIGN KEY REFERENCES Tasks(Task_ID), -- self-referencing foreign key, references the Task_ID of other tasks that this task depends on
--  );
 


-- CREATE TABLE  Donations(
--     Donation_ID INT PRIMARY KEY  IDENTITY(1,1) ,
--     Event_ID INT FOREIGN KEY REFERENCES Events(Event_ID), 
--     Donor_ID INT FOREIGN KEY REFERENCES Users(User_ID),
--     Payment_Date DATE NOT NULL,
--     Amount DECIMAL (12,2) NOT NULL, -- 12 digits, 2 decimal places, should be enough for most currencies
--     Payment_method VARCHAR(100) NOT NULL CHECK(Payment_method IN ('Credit Card', 'Debit Card', 'PayPal', 'Bank Transfer', 'Cash')),
-- );


--  CREATE TABLE  Volunteers(
--     User_ID INT PRIMARY KEY FOREIGN KEY REFERENCES Users(User_ID),
--     Event_ID INT FOREIGN KEY REFERENCES Events(Event_ID),
--     Vol_Role VARCHAR (50) NOT NULL CHECK(Vol_Role IN ('Staff', 'Coordinator', 'Planner', 'Manager', 'Assistant', 'Other')),
--     Skills VARCHAR(MAX), -- comma-separated list of skills, don't need to create a separate table for this
--     Current_Task VARCHAR (100) FOREIGN KEY REFERENCES Tasks(Task_ID), 
--     is_available BIT,
--  );





--  CREATE TABLE Tickets (
--    Ticket_ID INT PRIMARY KEY,
--    Event_ID INT FOREIGN KEY REFERENCES Events(Event_ID),
--    User_ID INT FOREIGN KEY REFERENCES  Users(User_ID),
--    Price DECIMAL (12,2),
--    Purchase_Date DATE NOT NULL,
--    Seat_Number INT,
--    Ticket_Status VARCHAR(50) CHECK(Ticket_Status IN ('Booked', 'Cancelled', 'Refunded', 'Used')),
--  );



--  CREATE TABLE Notifications (
--    Notification_ID INT PRIMARY KEY IDENTITY(1,1),
--    User_ID INT FOREIGN KEY REFERENCES Users(User_ID),
--    Content VARCHAR(MAX),
--    Read_Status VARCHAR(100) CHECK(Read_Status IN ('Read', 'Unread')),
--    Notification_Date DATE NOT NULL,
--  );


--  CREATE TABLE Venues (
--    Venue_ID INT PRIMARY KEY,
--    Venue_Loc INT FOREIGN KEY REFERENCES Locations(location_ID),
--    Venue_Name VARCHAR(100),
--    Venue_Description VARCHAR(MAX),
--    Phone_Number INT UNIQUE,
--    Email VARCHAR(100) UNIQUE CHECK(Email LIKE '%_@_%._%'),
--    Venue_Type VARCHAR(100) CHECK (Venue_Type IN ('Indoor', 'Outdoor', 'Virtual', 'Hybrid')),
--    Capacity INT,
   
--    Availability_Status VARCHAR(100) 
--    CHECK(Availability_Status IN ('Available', 'Booked', 'Under Renovation', 'Closed')), -- Under Renovation is temporary, Closed is permanent
   
--    Rental_Cost Decimal(12,2),
--    Facilities VARCHAR(MAX),
--    Venue_Url VARCHAR(MAX),
--  );



-- CREATE TABLE Sponsors (
--    Sponsor_ID INT PRIMARY KEY,
--    Sponsor_Name VARCHAR(100) NOT NULL,
--    Category VARCHAR(100) NOT NULL CHECK(Category IN ('Corporate', 'Government', 'Non-Profit', 'Educational', 'Other')),
--    Email VARCHAR(100) UNIQUE CHECK(Email LIKE '%_@_%._%'),
--    -- Funding_Amount DECIMAL(12,2),
--    Sponsor_Location VARCHAR(100) FOREIGN KEY REFERENCES Locations(Location_ID), 
--    -- Sponsorship_Type VARCHAR(100) CHECK(Sponsorship_Type IN ('Platinum', 'Gold', 'Silver', 'Bronze', 'Other')),
--    -- Agreement_Date DATE NOT NULL,
--    -- Contact_Duration VARCHAR (100) NOT NULL,
--    Sponsor_Url VARCHAR(MAX),
-- );


-- CREATE TABLE Vendors (
--    Vendor_ID INT PRIMARY KEY ,
--    Vendor_Name varchar(100),
--    Email VARCHAR(100) UNIQUE CHECK(Email LIKE '%_@_%._%'),
--    Phone_Number INT UNIQUE,
--    Category VARCHAR(100) NOT NULL CHECK(Category IN ('Food', 'Decor', 'Music', 'Photography', 'Videography', 'Transport', 'Other')),
--    Vendor_Address INT FOREIGN KEY REFERENCES Locations(Location_ID),
--    is_available BIT,
--    Vendor_Url VARCHAR(MAX),
-- );


-- CREATE TABLE Feedbacks (
--    Feedback_ID INT PRIMARY KEY IDENTITY(1,1),
--    User_ID INT FOREIGN KEY REFERENCES Users(User_ID),
--    Event_ID INT FOREIGN KEY REFERENCES Events(Event_ID),
--    Rating INT CHECK(Rating BETWEEN 1 AND 5),
--    Comment VARCHAR(MAX),
--    Submission_Date DATE NOT NULL,
-- );





--  ----------------------------------------------------------------------------
--  --many to many relationship

-- CREATE TABLE Event_Sponsor (
--    SP_ID INT FOREIGN KEY REFERENCES Sponsor(Sponsor_ID) ,
--    Event_ID INT  FOREIGN Key REFERENCES Events (Event_ID),
--    PRIMARY KEY (SP_ID, Event_ID),
--    Sponsorship_Amount DECIMAL(12,2) NOT NULL,
--    Sponsorship_Type VARCHAR(100) CHECK(Sponsorship_Type IN ('Platinum', 'Gold', 'Silver', 'Bronze', 'Other')),
--    Agreement_Date DATE NOT NULL,
--    Contract_Duration VARCHAR (100) NOT NULL,
--    Contract_Status VARCHAR(100) CHECK(Contract_Status IN ('Active', 'Expired', 'Cancelled'))
-- );

-- CREATE TABLE Event_Vendor (
--    Vendor_ID INT FOREIGN KEY REFERENCES Vendor(Vendor_ID),
--    Event_ID INT FOREIGN KEY REFERENCES Events(Event_ID),
--    PRIMARY KEY (Vendor_ID, Event_ID),
--    Contract_Date DATE NOT NULL,
--    Contract_Duration VARCHAR(100) NOT NULL,
--    Contract_Amount DECIMAL(12,2) NOT NULL,
--    Contract_Status VARCHAR(100) CHECK(Contract_Status IN ('Active', 'Expired', 'Cancelled'))
-- );

-- CREATE TABLE Event_Venue (
--    Venue_ID INT FOREIGN KEY REFERENCES Venues(Venue_ID),
--    Event_ID INT FOREIGN KEY REFERENCES Events(Event_ID),
--    PRIMARY KEY (Venue_ID, Event_ID)
-- );

-- CREATE TABLE Event_Organizer (
--    User_ID INT FOREIGN KEY REFERENCES Users(User_ID),
--    Event_ID INT FOREIGN KEY REFERENCES Events(Event_ID),
--    PRIMARY KEY (User_ID, Event_ID)
-- );


-- CREATE TABLE Volunteer_Task (
-- User_ID INT FOREIGN KEY REFERENCES Users(User_ID),
-- Task_ID INT FOREIGN KEY REFERENCES Tasks(Task_ID),
-- PRIMARY KEY (User_ID, Task_ID)
-- );

 
-- CREATE TABLE Vendor_Task (
-- Vendor_ID INT FOREIGN KEY REFERENCES Vendors(Vendor_ID),
-- Task_ID INT FOREIGN KEY REFERENCES Tasks(Task_ID),
-- PRIMARY KEY (Vendor_ID, Task_ID)
-- );