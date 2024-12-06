USE [EventManagementSystem];

INSERT INTO Tickets (Event_ID, User_ID, Price, Purchase_Date, Seat_Number, Ticket_Status)
SELECT 
    e.Event_ID, 
    a.User_ID, 
    e.Registration_Fee, 
    GETDATE(),
    ROW_NUMBER() OVER (PARTITION BY e.Event_ID ORDER BY a.User_ID), -- Assign seat numbers incrementally per event
    CASE 
        WHEN a.Attendance_Status = 'Registered' THEN 'Booked' 
        WHEN a.Attendance_Status = 'Attended' THEN 'Used' 
        WHEN a.Attendance_Status = 'No Show' THEN 'Cancelled' 
        WHEN a.Attendance_Status = 'Cancelled' THEN 'Refunded' 
        ELSE 'Booked' 
    END AS Ticket_Status
FROM 
    Attendees a
JOIN 
    Events e ON a.Event_ID = e.Event_ID;
