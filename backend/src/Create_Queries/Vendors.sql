use [EventManagementSystem];


CREATE TABLE Vendors (
   Vendor_ID INT PRIMARY KEY IDENTITY(1,1),
   Vendor_Name varchar(100),
   Email VARCHAR(100) UNIQUE CHECK(Email LIKE '%_@_%._%'),
   Phone_Number INT UNIQUE,
   Category VARCHAR(100) NOT NULL CHECK(Category IN ('Food', 'Decor', 'Music', 'Photography', 'Videography', 'Transport', 'Other')),
   Vendor_Address INT FOREIGN KEY REFERENCES Locations(Location_ID),
   is_available BIT,
   Vendor_Url VARCHAR(MAX),
);