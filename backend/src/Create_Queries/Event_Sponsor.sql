use [EventManagementSystem];


CREATE TABLE Event_Sponsor (
   SP_ID INT FOREIGN KEY REFERENCES Sponsors(Sponsor_ID) ,
   Event_ID INT  FOREIGN Key REFERENCES Events (Event_ID),
   PRIMARY KEY (SP_ID, Event_ID),
   Sponsorship_Amount DECIMAL(12,2) NOT NULL,
   Sponsorship_Type VARCHAR(100) CHECK(Sponsorship_Type IN ('Platinum', 'Gold', 'Silver', 'Bronze', 'Other')),
   Agreement_Date DATE NOT NULL,
   Contract_Duration VARCHAR (100) NOT NULL,
   Contract_Status VARCHAR(100) CHECK(Contract_Status IN ('Active', 'Expired', 'Cancelled'))
);