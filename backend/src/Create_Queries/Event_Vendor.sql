use [EventManagementSystem];


CREATE TABLE Event_Vendor (
   Vendor_ID INT FOREIGN KEY REFERENCES Vendors(Vendor_ID),
   Event_ID INT FOREIGN KEY REFERENCES Events(Event_ID),
   PRIMARY KEY (Vendor_ID, Event_ID),
   Contract_Date DATE NOT NULL,
   Contract_Duration VARCHAR(100) NOT NULL,
   Contract_Amount DECIMAL(12,2) NOT NULL,
   Contract_Status VARCHAR(100) CHECK(Contract_Status IN ('Active', 'Expired', 'Cancelled'))
);