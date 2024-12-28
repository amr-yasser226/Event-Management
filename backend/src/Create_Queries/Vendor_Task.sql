use [EventManagementSystem];


CREATE TABLE Vendor_Task (
Vendor_ID INT FOREIGN KEY REFERENCES Vendors(Vendor_ID),
Task_ID INT FOREIGN KEY REFERENCES Tasks(Task_ID),
PRIMARY KEY (Vendor_ID, Task_ID)
);