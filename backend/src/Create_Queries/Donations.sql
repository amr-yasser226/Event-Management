use [EventManagementSystem];



CREATE TABLE  Donations(
    Donation_ID INT PRIMARY KEY  IDENTITY(1,1) ,
    Event_ID INT FOREIGN KEY REFERENCES Events(Event_ID),
    Donor_ID INT FOREIGN KEY REFERENCES Users(User_ID),
    Payment_Date DATE NOT NULL,
    Amount DECIMAL (12,2) NOT NULL, -- 12 digits, 2 decimal places, should be enough for most currencies
    Payment_method VARCHAR(100) NOT NULL CHECK(Payment_method IN ('Credit Card', 'Debit Card', 'PayPal', 'Bank Transfer', 'Cash')),
);
