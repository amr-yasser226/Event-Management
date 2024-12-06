USE [EventManagementSystem];

INSERT INTO Attendees (User_ID, Event_ID, Attendance_Status, Is_Speaker, Is_VIP, Ticket_Type, Preferences)
VALUES
(188, 1, 'Registered', 0, 0, 'Regular', 'Likes indie and folk music'),   -- john.doe@example.com, Summer Music Festival
(189, 2, 'Attended', 0, 1, 'VIP', 'Interested in AI and blockchain'),   -- jane.smith@example.com, Tech Innovators Conference
(190, 3, 'Registered', 0, 0, 'Regular', 'Enjoys modern and abstract art'), -- mike.jones@example.com, Art Expo 2024
(191, 4, 'No Show', 0, 0, 'Regular', 'Interested in wellness and fitness'), -- emily.davis@example.com, Healthy Living Expo
(192, 5, 'Registered', 0, 0, 'Regular', 'Loves international cuisines'),   -- robert.brown@example.com, International Food Festival
(193, 6, 'Cancelled', 0, 0, 'VIP', 'Looking to network with business leaders'), -- susan.martin@example.com, Business Leaders Summit
(194, 7, 'Attended', 0, 0, 'Regular', 'Excels in sports-related events'), -- james.white@example.com, Sports Championship 2024
(195, 8, 'Registered', 0, 0, 'Regular', 'Eager to learn about global education trends'), -- lisa.clark@example.com, Global Education Forum
(196, 9, 'No Show', 0, 0, 'Regular', 'Interested in startups and innovation'), -- kevin.wilson@example.com, Innovative Startups Fair
(197, 10, 'Attended', 0, 0, 'VIP', 'Supports arts fundraising initiatives');  -- natalie.taylor@example.com, Music and Arts Fundraiser


INSERT INTO Attendees (User_ID, Event_ID, Attendance_Status, Is_Speaker, Is_VIP, Ticket_Type, Preferences)
VALUES
(1527, 11, 'Registered', 0, 0, 'Regular', 'No preferences'),
(1528, 11, 'Registered', 0, 0, 'Regular', 'Vegetarian'),
(1529, 11, 'Registered', 0, 0, 'Regular', 'No preferences'),
(1530, 11, 'Registered', 0, 0, 'Regular', 'No preferences'),
(1531, 11, 'Registered', 0, 0, 'Regular', 'No preferences');

INSERT INTO Attendees (User_ID, Event_ID, Attendance_Status, Is_Speaker, Is_VIP, Ticket_Type, Preferences)
VALUES
(1532, 12, 'Registered', 0, 0, 'Regular', 'Interested in AI'),
(1533, 12, 'Registered', 0, 0, 'Regular', 'No preferences'),
(1534, 12, 'Registered', 0, 0, 'Regular', 'No preferences'),
(1535, 12, 'Registered', 0, 0, 'Regular', 'Networking'),
(1536, 12, 'Registered', 0, 0, 'Regular', 'No preferences');

INSERT INTO Attendees (User_ID, Event_ID, Attendance_Status, Is_Speaker, Is_VIP, Ticket_Type, Preferences)
VALUES
(1537, 13, 'Registered', 0, 0, 'Regular', 'Interested in Modern Art'),
(1538, 13, 'Registered', 0, 0, 'Regular', 'No preferences'),
(1539, 13, 'Registered', 0, 0, 'Regular', 'No preferences'),
(1540, 13, 'Registered', 0, 0, 'Regular', 'No preferences'),
(1541, 13, 'Registered', 0, 0, 'Regular', 'No preferences');

INSERT INTO Attendees (User_ID, Event_ID, Attendance_Status, Is_Speaker, Is_VIP, Ticket_Type, Preferences)
VALUES
(1542, 14, 'Registered', 0, 0, 'Regular', 'Interested in Nutrition'),
(1543, 14, 'Registered', 0, 0, 'Regular', 'No preferences'),
(1544, 14, 'Registered', 0, 0, 'Regular', 'No preferences'),
(1545, 14, 'Registered', 0, 0, 'Regular', 'Vegan'),
(1546, 14, 'Registered', 0, 0, 'Regular', 'Interested in Fitness');

INSERT INTO Attendees (User_ID, Event_ID, Attendance_Status, Is_Speaker, Is_VIP, Ticket_Type, Preferences)
VALUES
(1547, 15, 'Registered', 0, 0, 'Regular', 'Interested in Global Cuisines'),
(1548, 15, 'Registered', 0, 0, 'Regular', 'Vegetarian'),
(1549, 15, 'Registered', 0, 0, 'Regular', 'No preferences'),
(1550, 15, 'Registered', 0, 0, 'Regular', 'No preferences'),
(1551, 15, 'Registered', 0, 0, 'Regular', 'No preferences');

INSERT INTO Attendees (User_ID, Event_ID, Attendance_Status, Is_Speaker, Is_VIP, Ticket_Type, Preferences)
VALUES
(1552, 16, 'Registered', 0, 0, 'Regular', 'Interested in Networking'),
(1553, 16, 'Registered', 0, 0, 'Regular', 'No preferences'),
(1554, 16, 'Registered', 0, 0, 'Regular', 'No preferences'),
(1555, 16, 'Registered', 0, 0, 'Regular', 'No preferences'),
(1556, 16, 'Registered', 0, 0, 'Regular', 'Interested in Leadership');

INSERT INTO Attendees (User_ID, Event_ID, Attendance_Status, Is_Speaker, Is_VIP, Ticket_Type, Preferences)
VALUES
(1557, 17, 'Registered', 0, 0, 'Regular', 'Interested in Football'),
(1558, 17, 'Registered', 0, 0, 'Regular', 'No preferences'),
(1559, 17, 'Registered', 0, 0, 'Regular', 'Interested in Basketball'),
(1560, 17, 'Registered', 0, 0, 'Regular', 'No preferences'),
(1561, 17, 'Registered', 0, 0, 'Regular', 'No preferences');
