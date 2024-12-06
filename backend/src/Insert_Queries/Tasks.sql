USE [EventManagementSystem];


INSERT INTO Tasks (Task_Name, Task_Description, StartDate, EndDate, Event_ID, PriorityLevel, Task_Status, Dependency) VALUES
('Stage Setup', 'Setup stage for performances', '2024-05-30', '2024-05-31', 1, 10, 'To Do', NULL),
('Sound System Check', 'Check and test sound systems', '2024-05-31', '2024-06-01', 1, 9, 'To Do', 1),
('Artist Coordination', 'Coordinate with performers for schedule', '2024-05-30', '2024-06-01', 1, 8, 'To Do', NULL),
('Ticket Distribution', 'Distribute tickets to attendees', '2024-06-01', '2024-06-02', 1, 7, 'To Do', NULL),
('Security Setup', 'Setup security and check entrance points', '2024-05-30', '2024-06-01', 1, 6, 'To Do', NULL),
('Food and Beverage Setup', 'Setup food stalls and beverage stations', '2024-06-01', '2024-06-01', 1, 5, 'To Do', NULL);

INSERT INTO Tasks (Task_Name, Task_Description, StartDate, EndDate, Event_ID, PriorityLevel, Task_Status, Dependency) VALUES
('Venue Setup', 'Prepare conference rooms and equipment', '2024-07-09', '2024-07-10', 2, 10, 'To Do', NULL),
('Speaker Coordination', 'Coordinate with speakers and confirm schedules', '2024-07-09', '2024-07-10', 2, 9, 'To Do', NULL),
('Registration Desk Setup', 'Setup registration desk and check-in systems', '2024-07-09', '2024-07-10', 2, 8, 'To Do', NULL),
('Network Setup', 'Ensure Wi-Fi and network equipment are functioning', '2024-07-09', '2024-07-10', 2, 7, 'To Do', NULL),
('Breakout Session Setup', 'Prepare rooms for breakout sessions', '2024-07-10', '2024-07-11', 2, 6, 'To Do', NULL),
('Post-event Feedback Collection', 'Gather attendee feedback after event', '2024-07-12', '2024-07-12', 2, 5, 'To Do', NULL);

INSERT INTO Tasks (Task_Name, Task_Description, StartDate, EndDate, Event_ID, PriorityLevel, Task_Status, Dependency) VALUES
('Exhibit Setup', 'Setup exhibition booths and art displays', '2024-05-18', '2024-05-19', 3, 10, 'To Do', NULL),
('Lighting Setup', 'Set up lights for art displays', '2024-05-19', '2024-05-20', 3, 9, 'To Do', 1),
('Artist Registration', 'Register artists and confirm art pieces', '2024-05-18', '2024-05-19', 3, 8, 'To Do', NULL),
('Security Setup', 'Setup security for art exhibits', '2024-05-19', '2024-05-20', 3, 7, 'To Do', NULL),
('Gallery Walkthrough', 'Tour the exhibits and ensure everything is set up', '2024-05-20', '2024-05-20', 3, 6, 'To Do', 4),
('Event Cleanup', 'Clear out exhibits and prepare venue for closing', '2024-05-25', '2024-05-25', 3, 5, 'To Do', NULL);

INSERT INTO Tasks (Task_Name, Task_Description, StartDate, EndDate, Event_ID, PriorityLevel, Task_Status, Dependency) VALUES
('Venue Setup', 'Prepare event venue for fitness demos', '2024-07-30', '2024-07-31', 4, 10, 'To Do', NULL),
('Instructor Coordination', 'Coordinate with fitness instructors for schedules', '2024-07-30', '2024-07-31', 4, 9, 'To Do', NULL),
('Health Check Stations Setup', 'Set up health check stations for attendees', '2024-07-30', '2024-07-31', 4, 8, 'To Do', NULL),
('Stage Setup', 'Setup stage for fitness demonstrations', '2024-07-30', '2024-07-31', 4, 7, 'To Do', NULL),
('VIP Lounge Setup', 'Setup a VIP lounge area for special guests', '2024-08-01', '2024-08-01', 4, 6, 'To Do', NULL),
('Exhibit Breakdown', 'Break down health expo displays after event', '2024-08-03', '2024-08-03', 4, 5, 'To Do', NULL);

INSERT INTO Tasks (Task_Name, Task_Description, StartDate, EndDate, Event_ID, PriorityLevel, Task_Status, Dependency) VALUES
('Food Stall Setup', 'Set up food stalls for festival', '2024-09-03', '2024-09-04', 5, 10, 'To Do', NULL),
('Vendor Coordination', 'Coordinate with food vendors for scheduling', '2024-09-03', '2024-09-04', 5, 9, 'To Do', NULL),
('Stage Setup', 'Setup stage for food-related performances', '2024-09-03', '2024-09-04', 5, 8, 'To Do', NULL),
('Ticketing', 'Setup ticketing system and booth', '2024-09-04', '2024-09-05', 5, 7, 'To Do', NULL),
('Security Setup', 'Setup security for food festival', '2024-09-03', '2024-09-04', 5, 6, 'To Do', NULL),
('Cleanup', 'Clean up after the festival concludes', '2024-09-07', '2024-09-07', 5, 5, 'To Do', NULL);

INSERT INTO Tasks (Task_Name, Task_Description, StartDate, EndDate, Event_ID, PriorityLevel, Task_Status, Dependency) VALUES
('Venue Setup', 'Prepare venue for summit', '2024-10-14', '2024-10-15', 6, 10, 'To Do', NULL),
('Speaker Coordination', 'Confirm and coordinate speakers', '2024-10-14', '2024-10-15', 6, 9, 'To Do', NULL),
('Exhibit Setup', 'Setup exhibits for business leaders', '2024-10-14', '2024-10-15', 6, 8, 'To Do', NULL),
('Guest Registration', 'Setup registration for attendees', '2024-10-14', '2024-10-15', 6, 7, 'To Do', NULL),
('Networking Event Setup', 'Arrange for networking sessions for business leaders', '2024-10-15', '2024-10-15', 6, 6, 'To Do', NULL),
('Event Breakdown', 'Tear down exhibits and close event', '2024-10-16', '2024-10-16', 6, 5, 'To Do', NULL);

INSERT INTO Tasks (Task_Name, Task_Description, StartDate, EndDate, Event_ID, PriorityLevel, Task_Status, Dependency) VALUES
('Venue Setup', 'Prepare the venue for the championship', '2024-10-30', '2024-10-31', 7, 10, 'To Do', NULL),
('Athlete Registration', 'Register athletes and confirm participation', '2024-10-30', '2024-10-31', 7, 9, 'To Do', NULL),
('Security Setup', 'Setup security and safety measures for athletes and spectators', '2024-10-30', '2024-10-31', 7, 8, 'To Do', NULL),
('Game Scheduling', 'Schedule matches and coordinate with teams', '2024-10-31', '2024-11-01', 7, 7, 'To Do', NULL),
('Referee Coordination', 'Coordinate with referees for match schedules', '2024-10-31', '2024-11-01', 7, 6, 'To Do', NULL),
('Post-Event Cleanup', 'Clean up the venue after the event', '2024-11-05', '2024-11-05', 7, 5, 'To Do', NULL);

INSERT INTO Tasks (Task_Name, Task_Description, StartDate, EndDate, Event_ID, PriorityLevel, Task_Status, Dependency) VALUES
('Venue Setup', 'Prepare venue for educational forum sessions', '2024-12-09', '2024-12-10', 8, 10, 'To Do', NULL),
('Speaker Coordination', 'Coordinate with speakers and confirm schedules', '2024-12-09', '2024-12-10', 8, 9, 'To Do', NULL),
('Registration Desk Setup', 'Setup registration desk and check-in process', '2024-12-09', '2024-12-10', 8, 8, 'To Do', NULL),
('Panel Discussion Setup', 'Arrange for panel discussions and seating', '2024-12-10', '2024-12-10', 8, 7, 'To Do', NULL),
('Breakout Session Coordination', 'Coordinate breakout sessions and room setups', '2024-12-10', '2024-12-11', 8, 6, 'To Do', NULL),
('Event Wrap-up', 'Coordinate final wrap-up session and thank-you notes', '2024-12-12', '2024-12-12', 8, 5, 'To Do', NULL);

INSERT INTO Tasks (Task_Name, Task_Description, StartDate, EndDate, Event_ID, PriorityLevel, Task_Status, Dependency) VALUES
('Venue Setup', 'Setup the venue for startup exhibits', '2024-06-18', '2024-06-19', 9, 10, 'To Do', NULL),
('Vendor Coordination', 'Coordinate with exhibitors and confirm booth setup', '2024-06-18', '2024-06-19', 9, 9, 'To Do', NULL),
('Security Setup', 'Setup security for the event and exhibitor booths', '2024-06-18', '2024-06-19', 9, 8, 'To Do', NULL),
('Networking Area Setup', 'Setup designated networking areas for attendees', '2024-06-19', '2024-06-20', 9, 7, 'To Do', NULL),
('Panel Discussion Setup', 'Arrange for panel discussions with startup experts', '2024-06-19', '2024-06-20', 9, 6, 'To Do', NULL),
('Exhibit Breakdown', 'Break down exhibitor booths and cleanup', '2024-06-22', '2024-06-22', 9, 5, 'To Do', NULL);

INSERT INTO Tasks (Task_Name, Task_Description, StartDate, EndDate, Event_ID, PriorityLevel, Task_Status, Dependency) VALUES
('Stage Setup', 'Setup the stage for performances and art exhibitions', '2024-05-08', '2024-05-09', 10, 10, 'To Do', NULL),
('Artist Coordination', 'Coordinate with artists for exhibits and performances', '2024-05-08', '2024-05-09', 10, 9, 'To Do', NULL),
('Security Setup', 'Ensure proper security at the event', '2024-05-09', '2024-05-10', 10, 8, 'To Do', NULL),
('Ticketing and Registration', 'Setup ticketing booth and registration', '2024-05-09', '2024-05-09', 10, 7, 'To Do', NULL),
('Sound Check', 'Ensure sound system is working for performances', '2024-05-09', '2024-05-09', 10, 6, 'To Do', NULL),
('Post-event Breakdown', 'Break down exhibits and clean up venue', '2024-05-12', '2024-05-12', 10, 5, 'To Do', NULL);

INSERT INTO Tasks (Task_Name, Task_Description, StartDate, EndDate, Event_ID, PriorityLevel, Task_Status, Dependency) VALUES
('Venue Setup', 'Prepare the venue for digital marketing workshop', '2024-06-04', '2024-06-05', 11, 10, 'To Do', NULL),
('Speaker Coordination', 'Coordinate with workshop speakers and confirm schedules', '2024-06-04', '2024-06-05', 11, 9, 'To Do', NULL),
('Workshop Material Preparation', 'Prepare materials and handouts for attendees', '2024-06-04', '2024-06-05', 11, 8, 'To Do', NULL),
('Registration Desk Setup', 'Setup desk and check-in process for attendees', '2024-06-05', '2024-06-05', 11, 7, 'To Do', NULL),
('Breakout Sessions Setup', 'Prepare rooms for breakout sessions', '2024-06-05', '2024-06-06', 11, 6, 'To Do', NULL),
('Event Cleanup', 'Clear out venue after workshop', '2024-06-06', '2024-06-06', 11, 5, 'To Do', NULL);

INSERT INTO Tasks (Task_Name, Task_Description, StartDate, EndDate, Event_ID, PriorityLevel, Task_Status, Dependency) VALUES
('Venue Setup', 'Prepare venue for culinary demonstrations', '2024-07-14', '2024-07-15', 12, 10, 'To Do', NULL),
('Chef Coordination', 'Coordinate with chefs for demonstrations and timings', '2024-07-14', '2024-07-15', 12, 9, 'To Do', NULL),
('Food Stall Setup', 'Set up food stations for live cooking demonstrations', '2024-07-14', '2024-07-15', 12, 8, 'To Do', NULL),
('Registration Desk Setup', 'Setup desk for attendee registration', '2024-07-15', '2024-07-15', 12, 7, 'To Do', NULL),
('VIP Lounge Setup', 'Set up VIP area for special guests', '2024-07-15', '2024-07-15', 12, 6, 'To Do', NULL),
('Event Breakdown', 'Clean up and clear out venue after event', '2024-07-17', '2024-07-17', 12, 5, 'To Do', NULL);

INSERT INTO Tasks (Task_Name, Task_Description, StartDate, EndDate, Event_ID, PriorityLevel, Task_Status, Dependency) VALUES
('Exhibit Setup', 'Set up digital art exhibits and technology demonstrations', '2024-08-08', '2024-08-09', 13, 10, 'To Do', NULL),
('Lighting Setup', 'Install lighting for art displays', '2024-08-08', '2024-08-09', 13, 9, 'To Do', NULL),
('Interactive Display Setup', 'Set up interactive displays for tech-art exhibits', '2024-08-09', '2024-08-10', 13, 8, 'To Do', NULL),
('VIP Preview Event', 'Host a VIP preview for select attendees', '2024-08-10', '2024-08-10', 13, 7, 'To Do', NULL),
('Security Setup', 'Ensure security for all exhibits and attendees', '2024-08-09', '2024-08-10', 13, 6, 'To Do', NULL),
('Event Breakdown', 'Disassemble exhibits and clear out the venue', '2024-08-15', '2024-08-15', 13, 5, 'To Do', NULL);