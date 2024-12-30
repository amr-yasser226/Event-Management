USE [EventManagementSystem];



INSERT INTO Users (Email, First_Name, Last_Name, Pass_Hash, Contact_Number, DoB, Gender, Profile_Picture, Registration_Date, User_Type, User_Bio, User_Address, User_Url) VALUES
('joseph.adams@example.com', 'Joseph', 'Adams', 'P@ssw0rd123!!', '123-456-7890', '1992-02-12', 'Male', 'media/profile_pictures/joseph.jpg', '2024-01-15', 'Attendee', 'Lover of outdoor events and music festivals', 10, 'https://www.josephadams.com'),
('emily.white@example.com', 'Emily', 'White', 'P@ssw0rd123!', '123-555-7890', '1988-07-29', 'Female', 'media/profile_pictures/emily.jpg', '2024-01-18', 'Organizer', 'Event coordinator with a passion for tech', 11, 'https://www.emilywhite.com'),
('andrew.morris@example.com', 'Andrew', 'Morris', 'P@ssw0rd123!!', '123-555-1234', '1985-03-19', 'Male', 'media/profile_pictures/andrew.jpg', '2024-02-20', 'Volunteer', 'Helping at events to learn and grow professionally', 12, 'https://www.andrewmorris.com'),
('lisa.rodriguez@example.com', 'Lisa', 'Rodriguez', 'P@ssw0rd123!', '123-444-5678', '1990-06-05', 'Female', 'media/profile_pictures/lisa.jpg', '2024-02-22', 'Attendee', 'Tech enthusiast, always learning', 13, 'https://www.lisarodriguez.com'),
('michael.brown@example.com', 'Michael', 'Brown', 'P@ssw0rd123!', '123-555-9012', '1991-12-13', 'Male', 'media/profile_pictures/michael.jpg', '2024-03-15', 'Volunteer', 'Always up for new challenges and helping out', 14, 'https://www.michaelbrown.com'),
('claire.jones@example.com', 'Claire', 'Jones', 'P@ssw0rd123!', '123-333-4567', '1986-11-10', 'Female', 'media/profile_pictures/claire.jpg', '2024-03-20', 'Organizer', 'Expert in managing large-scale events', 15, 'https://www.clairejones.com'),
('james.davis@example.com', 'James', 'Davis', 'P@ssw0rd123!', '123-666-4321', '1994-04-02', 'Male', 'media/profile_pictures/james.jpg', '2024-04-01', 'Volunteer', 'Active volunteer in events, passionate about helping', 16, 'https://www.jamesdavis.com'),
('julia.wilson@example.com', 'Julia', 'Wilson', 'P@ssw0rd123!', '123-777-2234', '1990-08-20', 'Female', 'media/profile_pictures/julia.jpg', '2024-04-05', 'Admin', 'Event planning and organizing events for large companies', 17, 'https://www.juliawilson.com'),
('natalee.taylor@example.com', 'Natalie', 'Taylor', 'P@ssw0rd123!', '123-888-7777', '1993-01-12', 'Female', 'media/profile_pictures/natalie.jpg', '2024-05-10', 'Attendee', 'Lover of fitness and healthy living', 18, 'https://www.natalietaylor.com'),
('brian.martin@example.com', 'Brian', 'Martin', 'P@ssw0rd123!', '123-222-3344', '1992-09-10', 'Male', 'media/profile_pictures/brian.jpg', '2024-05-14', 'Volunteer', 'Event support and management experience', 20, 'https://www.brianmartin.com'),
('megan.moore@example.com', 'Megan', 'Moore', 'P@ssw0rd123!', '123-444-6677', '1994-02-28', 'Female', 'media/profile_pictures/megan.jpg', '2024-06-01', 'Attendee', 'Food lover, always on the lookout for the next festival', 21, 'https://www.meganmoore.com'),
('jake.daniels@example.com', 'Jake', 'Daniels', 'P@ssw0rd123!', '123-555-8901', '1991-07-14', 'Male', 'media/profile_pictures/jake.jpg', '2024-06-07', 'Organizer', 'Passionate about organizing tech events', 22, 'https://www.jakedaniels.com'),
('olivia.harris@example.com', 'Olivia', 'Harris', 'P@ssw0rd123!', '123-777-4321', '1995-01-22', 'Female', 'media/profile_pictures/olivia.jpg', '2024-06-12', 'Admin', 'Tech enthusiast and event planner', 23, 'https://www.oliviaharris.com'),
('lucas.kim@example.com', 'Lucas', 'Kim', 'P@ssw0rd123!', '123-888-2233', '1992-10-30', 'Male', 'media/profile_pictures/lucas.jpg', '2024-06-15', 'Volunteer', 'Working to make events run smoothly', 24, 'https://www.lucaskim.com'),
('isabella.evans@example.com', 'Isabella', 'Evans', 'P@ssw0rd123!', '123-555-6789', '1990-03-11', 'Female', 'media/profile_pictures/isabella.jpg', '2024-07-05', 'Attendee', 'Event enthusiast and music lover', 25, 'https://www.isabellaevans.com'),
('aaron.fisher@example.com', 'Aaron', 'Fisher', 'P@ssw0rd123!', '123-333-5544', '1993-08-19', 'Male', 'media/profile_pictures/aaron.jpg', '2024-07-07', 'Volunteer', 'Loves working with teams to make events successful', 26, 'https://www.aaronfisher.com'),
('maria.morris@example.com', 'Maria', 'Morris', 'P@ssw0rd123!', '123-222-7777', '1994-02-16', 'Female', 'media/profile_pictures/maria.jpg', '2024-07-09', 'Organizer', 'Bringing people together through amazing events', 27, 'https://www.mariamorris.com'),
('matthew.williams@example.com', 'Matthew', 'Williams', 'P@ssw0rd123!', '123-111-2233', '1992-11-25', 'Male', 'media/profile_pictures/matthew.jpg', '2024-07-15', 'Attendee', 'Adventure seeker and event-goer', 28, 'https://www.matthewwilliams.com'),
('sophia.garcia@example.com', 'Sophia', 'Garcia', 'P@ssw0rd123!', '123-333-1122', '1989-05-08', 'Female', 'media/profile_pictures/sophia.jpg', '2024-07-20', 'Volunteer', 'Always ready to help and learn in new events', 29, 'https://www.sophiagarcia.com'),
('william.jones@example.com', 'William', 'Jones', 'P@ssw0rd123!', '123-555-8902', '1991-01-15', 'Male', 'media/profile_pictures/william.jpg', '2024-07-23', 'Attendee', 'Technology and innovation enthusiast', 30, 'https://www.williamjones.com'),
('chloe.green@example.com', 'Chloe', 'Green', 'P@ssw0rd123!', '123-777-5566', '1990-11-06', 'Female', 'media/profile_pictures/chloe.jpg', '2024-08-05', 'Organizer', 'Event strategist with a passion for excellence', 31, 'https://www.chloegreen.com'),
('david.clark@example.com', 'David', 'Clark', 'P@ssw0rd123!', '123-222-3644', '1989-10-21', 'Male', 'media/profile_pictures/david.jpg', '2024-08-07', 'Volunteer', 'Dedicated to making events a success', 22, 'https://www.davidclark.com'),
('emily.keller@example.com', 'Emily', 'Keller', 'P@ssw0rd123!', '123-888-2244', '1993-05-14', 'Female', 'media/profile_pictures/emily_keller.jpg', '2024-08-15', 'Attendee', 'Passionate about cultural events', 23, 'https://www.emilykeller.com'),
('benjamin.hall@example.com', 'Benjamin', 'Hall', 'P@ssw0rd123!', '123-855-1010', '1992-06-10', 'Male', 'media/profile_pictures/benjamin.jpg', '2024-08-20', 'Volunteer', 'Event helper and tech enthusiast', 24, 'https://www.benjaminhall.com'),
('harper.lee@example.com', 'Harper', 'Lee', 'P@ssw0rd123!', '123-777-9900', '1994-07-01', 'Female', 'media/profile_pictures/harper.jpg', '2024-08-22', 'Attendee', 'Lover of arts and culture events', 25, 'https://www.harperlee.com'),
('gabriel.smith@example.com', 'Gabriel', 'Smith', 'P@ssw0rd123!', '123-444-6789', '1990-11-03', 'Male', 'media/profile_pictures/gabriel.jpg', '2024-08-30', 'Organizer', 'Event manager with experience in large-scale events', 26, 'https://www.gabrielsmith.com'),
('madison.taylor@example.com', 'Madison', 'Taylor', 'P@ssw0rd123!', '123-333-6678', '1992-01-22', 'Female', 'media/profile_pictures/madison.jpg', '2024-09-01', 'Attendee', 'Foodie and travel enthusiast', 27, 'https://www.madisontaylor.com'),
('henry.jackson@example.com', 'Henry', 'Jackson', 'P@ssw0rd123!', '123-222-3044', '1989-12-10', 'Male', 'media/profile_pictures/henry.jpg', '2024-09-03', 'Volunteer', 'Ready to contribute and gain experience in event management', 28, 'https://www.henryjackson.com'),
('oliver.walker@example.com', 'Oliver', 'Walker', 'P@ssw0rd123!', '121-888-2244', '1991-02-18', 'Male', 'media/profile_pictures/oliver.jpg', '2024-09-05', 'Admin', 'Admin at tech events, organizing and facilitating', 29, 'https://www.oliverwalker.com'),
('ava.martinez@example.com', 'Ava', 'Martinez', 'P@ssw0rd123!', '123-944-1122', '1995-03-14', 'Female', 'media/profile_pictures/ava.jpg', '2024-09-10', 'Attendee', 'Loves innovative startup events and learning from entrepreneurs', 30, 'https://www.avamartinez.com'),
('logan.baker@example.com', 'Logan', 'Baker', 'P@ssw0rd123!', '123-333-4411', '1990-08-07', 'Male', 'media/profile_pictures/logan.jpg', '2024-09-12', 'Volunteer', 'Excited to be part of the tech events and explore new trends', 31, 'https://www.loganbaker.com'),
('ella.roberts@example.com', 'Ella', 'Roberts', 'P@ssw0rd123!', '123-555-6677', '1992-04-05', 'Female', 'media/profile_pictures/ella.jpg', '2024-09-15', 'Organizer', 'Experienced organizer of food and drink festivals', 22, 'https://www.ellaroberts.com'),
('matthew.perez@example.com', 'Matthew', 'Perez', 'P@ssw0rd123!', '123-222-4334', '1993-09-21', 'Male', 'media/profile_pictures/matthew_perez.jpg', '2024-09-17', 'Volunteer', 'Event logistics assistant, focused on smooth execution', 23, 'https://www.matthewperez.com'),
('victoria.martinez@example.com', 'Victoria', 'Martinez', 'P@ssw0rd123!', '123-777-8899', '1989-06-12', 'Female', 'media/profile_pictures/victoria.jpg', '2024-09-19', 'Attendee', 'Lover of food and culture events', 24, 'https://www.victoriamartinez.com'),
('samuel.carter@example.com', 'Samuel', 'Carter', 'P@ssw0rd123!', '123-333-2345', '1994-10-09', 'Male', 'media/profile_pictures/samuel.jpg', '2024-09-22', 'Organizer', 'Expert in sports events and championship management', 25, 'https://www.samuelcarter.com'),
('lucy.green@example.com', 'Lucy', 'Green', 'P@ssw0rd123!', '123-444-9988', '1991-05-25', 'Female', 'media/profile_pictures/lucy_green.jpg', '2024-09-25', 'Volunteer', 'Focused on fitness events and health workshops', 26, 'https://www.lucygreen.com'),
('nathaniel.harris@example.com', 'Nathaniel', 'Harris', 'P@ssw0rd123!', '123-555-2345', '1992-12-17', 'Male', 'media/profile_pictures/nathaniel.jpg', '2024-09-28', 'Attendee', 'Tech enthusiast interested in innovative startup events', 27, 'https://www.nathanielharris.com'),
('rebecca.james@example.com', 'Rebecca', 'James', 'P@ssw0rd123!', '123-222-7788', '1989-01-04', 'Female', 'media/profile_pictures/rebecca.jpg', '2024-10-02', 'Admin', 'Event facilitator with expertise in conferences and summits', 28, 'https://www.rebeccajames.com'),
('charlie.smith@example.com', 'Charlie', 'Smith', 'P@ssw0rd123!', '123-555-5566', '1990-07-22', 'Male', 'media/profile_pictures/charlie.jpg', '2024-10-05', 'Volunteer', 'Working to gain event management experience in large expos', 29, 'https://www.charliesmith.com'),
('kaitlyn.adams@example.com', 'Kaitlyn', 'Adams', 'P@ssw0rd123!', '123-838-2233', '1991-11-15', 'Female', 'media/profile_pictures/kaitlyn.jpg', '2024-10-08', 'Attendee', 'Enjoys food festivals and art exhibitions', 30, 'https://www.kaitlynadams.com'),
('ethan.davis@example.com', 'Ethan', 'Davis', 'P@ssw0rd123!', '183-333-4455', '1992-05-06', 'Male', 'media/profile_pictures/ethan.jpg', '2024-10-10', 'Volunteer', 'Passionate about sports events and team coordination', 31, 'https://www.ethandavis.com'),
('zoe.carter@example.com', 'Zoe', 'Carter', 'P@ssw0rd123!', '123-444-1122', '1993-12-18', 'Female', 'media/profile_pictures/zoe.jpg', '2024-10-12', 'Organizer', 'Focused on organizing innovative startup events', 22, 'https://www.zoecarter.com'),
('jackson.brooks@example.com', 'Jackson', 'Brooks', 'P@ssw0rd123!', '123-555-7733', '1990-09-14', 'Male', 'media/profile_pictures/jackson.jpg', '2024-10-15', 'Attendee', 'Interested in exploring new trends in food and drink', 23, 'https://www.jacksonbrooks.com'),
('elizabeth.jones@example.com', 'Elizabeth', 'Jones', 'P@ssw0rd123!', '123-333-2299', '1994-07-02', 'Female', 'media/profile_pictures/elizabeth.jpg', '2024-10-18', 'Volunteer', 'Looking to help out at music and arts fundraisers', 24, 'https://www.elizabethjones.com'),
('jackson.martinez@example.com', 'Jackson', 'Martinez', 'P@ssw0rd123!', '123-555-7288', '1992-08-04', 'Male', 'media/profile_pictures/jackson_martinez.jpg', '2024-10-20', 'Admin', 'Skilled in managing tech events and digital marketing', 25, 'https://www.jacksonmartinez.com'),
('amanda.thomas@example.com', 'Amanda', 'Thomas', 'P@ssw0rd123!', '123-333-2234', '1991-04-14', 'Female', 'media/profile_pictures/amanda.jpg', '2024-10-22', 'Volunteer', 'Passionate about organizing charity events', 26, 'https://www.amandathomas.com'),
('michael.lee@example.com', 'Michael', 'Lee', 'P@ssw0rd123!', '123-777-9999', '1990-02-25', 'Male', 'media/profile_pictures/michael.jpg', '2024-10-25', 'Organizer', 'Event manager for global education forums', 27, 'https://www.michaellee.com'),
('julia.smith@example.com', 'Julia', 'Smith', 'P@ssw0rd123!', '123-555-1010', '1993-03-18', 'Female', 'media/profile_pictures/julia.jpg', '2024-10-28', 'Attendee', 'Loves exploring cultural and food festivals', 28, 'https://www.juliasmith.com'),
('mason.jones@example.com', 'Mason', 'Jones', 'P@ssw0rd123!', '123-444-5555', '1989-07-19', 'Male', 'media/profile_pictures/mason.jpg', '2024-11-01', 'Volunteer', 'Helping out at tech and digital marketing events', 29, 'https://www.masonjones.com'),
('amelia.garcia@example.com', 'Amelia', 'Garcia', 'P@ssw0rd123!', '123-222-4455', '1994-06-21', 'Female', 'media/profile_pictures/amelia.jpg', '2024-11-03', 'Attendee', 'Passionate about business summits and innovation', 30, 'https://www.ameliagarcia.com'),
('caleb.morris@example.com', 'Caleb', 'Morris', 'P@ssw0rd123!', '123-363-4455', '1992-10-11', 'Male', 'media/profile_pictures/caleb.jpg', '2024-11-06', 'Organizer', 'Event organizer with a focus on music and arts', 31, 'https://www.calebmorris.com'),
('nina.wilson@example.com', 'Nina', 'Wilson', 'P@ssw0rd123!', '123-555-2234', '1993-09-28', 'Female', 'media/profile_pictures/nina.jpg', '2024-11-08', 'Volunteer', 'Looking to assist at fitness and wellness events', 22, 'https://www.ninawilson.com'),
('lucas.white@example.com', 'Lucas', 'White', 'P@ssw0rd123!', '123-777-5533', '1991-05-15', 'Male', 'media/profile_pictures/lucas.jpg', '2024-11-11', 'Admin', 'Tech support for digital marketing and tech events', 23, 'https://www.lucaswhite.com'),
('sophia.james@example.com', 'Sophia', 'James', 'P@ssw0rd123!', '123-333-5566', '1990-12-03', 'Female', 'media/profile_pictures/sophia.jpg', '2024-11-14', 'Attendee', 'Exploring trends in innovative startups', 24, 'https://www.sophiajames.com'),
('daniel.green@example.com', 'Daniel', 'Green', 'P@ssw0rd123!', '123-494-2233', '1992-02-28', 'Male', 'media/profile_pictures/daniel.jpg', '2024-11-17', 'Volunteer', 'Aiming to help out with sports events and championships', 25, 'https://www.danielgreen.com'),
('ella.brown@example.com', 'Ella', 'Brown', 'P@ssw0rd123!', '123-555-6277', '1991-07-09', 'Female', 'media/profile_pictures/ella_brown.jpg', '2024-11-20', 'Organizer', 'Event manager for cultural expos and art exhibitions', 26, 'https://www.ellabrown.com'),
('alexander.lee@example.com', 'Alexander', 'Lee', 'P@ssw0rd123!', '123-333-3344', '1990-10-10', 'Male', 'media/profile_pictures/alexander.jpg', '2024-11-22', 'Attendee', 'Exploring global education forums and summit discussions', 27, 'https://www.alexanderlee.com'),
('isabella.davis@example.com', 'Isabella', 'Davis', 'P@ssw0rd123!', '123-555-1122', '1994-04-04', 'Female', 'media/profile_pictures/isabella.jpg', '2024-11-25', 'Volunteer', 'Aiming to support large-scale art and tech exhibitions', 28, 'https://www.isabelladavis.com'),
('sebastian.white@example.com', 'Sebastian', 'White', 'P@ssw0rd123!', '123-444-5566', '1991-11-30', 'Male', 'media/profile_pictures/sebastian.jpg', '2024-11-28', 'Admin', 'Event coordinator for international food festivals', 29, 'https://www.sebastianwhite.com'),
('olivia.miller@example.com', 'Olivia', 'Miller', 'P@ssw0rd123!', '123-333-2233', '1990-03-12', 'Female', 'media/profile_pictures/olivia_miller.jpg', '2024-12-01', 'Attendee', 'Attending and learning from digital marketing workshops', 30, 'https://www.oliviamiller.com'),
('andrew.wilson@example.com', 'Andrew', 'Wilson', 'P@ssw0rd123!', '123-555-3322', '1993-09-15', 'Male', 'media/profile_pictures/andrew.jpg', '2024-12-04', 'Volunteer', 'Helping with logistics and event setups at large gatherings', 31, 'https://www.andrewwilson.com'),
('lucy.johnson@example.com', 'Lucy', 'Johnson', 'P@ssw0rd123!', '123-444-4455', '1994-05-20', 'Female', 'media/profile_pictures/lucy_johnson.jpg', '2024-12-06', 'Organizer', 'Event planner specializing in food and health events', 31, 'https://www.lucyjohnson.com'),
('jacob.martin@example.com', 'Jacob', 'Martin', 'P@ssw0rd123!', '123-555-7788', '1990-01-30', 'Male', 'media/profile_pictures/jacob.jpg', '2024-12-09', 'Volunteer', 'Excited to assist with tech trends seminars and conferences', 23, 'https://www.jacobmartin.com'),
('emma.white@example.com', 'Emma', 'White', 'P@ssw0rd123!', '123-333-2293', '1991-08-14', 'Female', 'media/profile_pictures/emma_white.jpg', '2024-12-12', 'Admin', 'Focused on managing business leader summits and corporate forums', 24, 'https://www.emmawhite.com'),
('noah.perez@example.com', 'Noah', 'Perez', 'P@ssw0rd123!', '123-444-1922', '1993-01-19', 'Male', 'media/profile_pictures/noah_perez.jpg', '2024-12-15', 'Attendee', 'Loves attending and exploring innovative startup fairs', 25, 'https://www.noahperez.com'),
('charlotte.harris@example.com', 'Charlotte', 'Harris', 'P@ssw0rd123!', '123-555-8899', '1992-11-11', 'Female', 'media/profile_pictures/charlotte.jpg', '2024-12-18', 'Volunteer', 'Assisting with art and technology exhibitions', 26, 'https://www.charlotteharris.com'),
('william.davis@example.com', 'William', 'Davis', 'P@ssw0rd123!', '123-333-7733', '1990-06-05', 'Male', 'media/profile_pictures/william.jpg', '2024-12-20', 'Organizer', 'Event coordinator for large international festivals', 27, 'https://www.williamdavis.com'),
('oliver.taylor@example.com', 'Oliver', 'Taylor', 'P@ssw0rd123!', '123-555-2233', '1991-07-25', 'Male', 'media/profile_pictures/oliver_taylor.jpg', '2024-12-23', 'Attendee', 'Attending business and tech conferences', 28, 'https://www.olivertaylor.com'),
('ava.martiniez@example.com', 'Ava', 'Martinez', 'P@ssw0rd123!', '123-444-2233', '1992-12-12', 'Female', 'media/profile_pictures/ava_martinez.jpg', '2024-12-25', 'Volunteer', 'Helping at health and wellness events', 29, 'https://www.avamartinez.com'),
('leo.williams@example.com', 'Leo', 'Williams', 'P@ssw0rd123!', '123-333-5966', '1994-08-10', 'Male', 'media/profile_pictures/leo_williams.jpg', '2024-12-27', 'Organizer', 'Event coordinator for international art exhibitions', 30, 'https://www.leowilliams.com'),
('mia.johnson@example.com', 'Mia', 'Johnson', 'P@ssw0rd123!', '123-494-1122', '1993-04-20', 'Female', 'media/profile_pictures/mia_johnson.jpg', '2024-12-30', 'Volunteer', 'Supporting tech seminars and startup events', 31, 'https://www.miajohnson.com'),
('jacob.davis@example.com', 'Jacob', 'Davis', 'P@ssw0rd123!', '123-955-1234', '1990-03-12', 'Male', 'media/profile_pictures/jacob_davis.jpg', '2025-01-02', 'Attendee', 'Interests include art exhibitions and food festivals', 22, 'https://www.jacobdavis.com'),
('sophia.martinez@example.com', 'Sophia', 'Martinez', 'P@ssw0rd123!', '123-333-4435', '1992-06-25', 'Female', 'media/profile_pictures/sophia_martinez.jpg', '2025-01-04', 'Organizer', 'Specializes in organizing fitness and wellness events', 23, 'https://www.sophiamartinez.com'),
('jackson.brown@example.com', 'Jackson', 'Brown', 'P@ssw0rd123!', '123-525-6789', '1990-09-08', 'Male', 'media/profile_pictures/jackson_brown.jpg', '2025-01-06', 'Volunteer', 'Volunteering at sports championships and art fairs', 24, 'https://www.jacksonbrown.com'),
('lucas.jones@example.com', 'Lucas', 'Jones', 'P@ssw0rd123!', '123-944-5678', '1991-12-15', 'Male', 'media/profile_pictures/lucas_jones.jpg', '2025-01-08', 'Admin', 'Managing event logistics for business summits and conferences', 25, 'https://www.lucasjones.com'),
('ella.davis@example.com', 'Ella', 'Davis', 'P@ssw0rd123!', '123-595-3391', '1993-05-06', 'Female', 'media/profile_pictures/ella_davis.jpg', '2025-01-10', 'Attendee', 'Attending music festivals and food events', 26, 'https://www.elladavis.com'),
('liam.smith@example.com', 'Liam', 'Smith', 'P@ssw0rd123!', '123-333-6966', '1994-10-18', 'Male', 'media/profile_pictures/liam_smith.jpg', '2025-01-12', 'Volunteer', 'Helping with business forums and leadership events', 27, 'https://www.liamsmith.com'),
('ella.green@example.com', 'Ella', 'Green', 'P@ssw0rd123!', '193-444-9122', '1991-01-21', 'Female', 'media/profile_pictures/ella_green.jpg', '2025-01-15', 'Organizer', 'Specializing in art and tech exhibitions', 28, 'https://www.ellagreen.com'),
('emily.james@example.com', 'Emily', 'James', 'P@ssw0rd123!', '123-555-7966', '1992-02-17', 'Female', 'media/profile_pictures/emily_james.jpg', '2025-01-18', 'Attendee', 'Passionate about attending leadership forums and summits', 29, 'https://www.emilyjames.com'),
('aiden.wilson@example.com', 'Aiden', 'Wilson', 'P@ssw0rd123!', '123-333-8999', '1990-04-12', 'Male', 'media/profile_pictures/aiden_wilson.jpg', '2025-01-20', 'Admin', 'Administering logistics for art festivals and auctions', 30, 'https://www.aidenwilson.com'),
('madison.lee@example.com', 'Madison', 'Lee', 'P@ssw0rd123!', '123-555-3944', '1993-06-30', 'Female', 'media/profile_pictures/madison_lee.jpg', '2025-01-22', 'Volunteer', 'Supporting tech workshops and digital marketing events', 31, 'https://www.madisonlee.com'),
('evelyn.martin@example.com', 'Evelyn', 'Martin', 'P@ssw0rd123!', '123-944-8999', '1991-08-22', 'Female', 'media/profile_pictures/evelyn_martin.jpg', '2025-01-25', 'Organizer', 'Focused on managing international food festivals', 22, 'https://www.evelynmartin.com'),
('logan.perez@example.com', 'Logan', 'Perez', 'P@ssw0rd123!', '123-393-5599', '1992-12-05', 'Male', 'media/profile_pictures/logan_perez.jpg', '2025-01-28', 'Volunteer', 'Assisting with startup pitch days and tech seminars', 23, 'https://www.loganperez.com'),
('mia.lee@example.com', 'Mia', 'Lee', 'P@ssw0rd123!', '123-595-2255', '1990-11-10', 'Female', 'media/profile_pictures/mia_lee.jpg', '2025-01-30', 'Admin', 'Managing digital marketing workshops and global conferences', 24, 'https://www.mialee.com'),
('daniel.taylor@example.com', 'Daniel', 'Taylor', 'P@ssw0rd123!', '193-444-5566', '1994-09-12', 'Male', 'media/profile_pictures/daniel_taylor.jpg', '2025-02-02', 'Attendee', 'Interested in leadership summits and innovative business strategies', 25, 'https://www.danieltaylor.com'),
('lucie.green@example.com', 'Lucy', 'Green', 'P@ssw0rd123!', '123-933-5577', '1991-02-20', 'Female', 'media/profile_pictures/lucy_green.jpg', '2025-02-04', 'Organizer', 'Focused on health and fitness events and wellness workshops', 26, 'https://www.lucygreen.com'),
('chloe.smith@example.com', 'Chloe', 'Smith', 'P@ssw0rd123!', '113-559-7788', '1992-07-14', 'Female', 'media/profile_pictures/chloe_smith.jpg', '2025-02-06', 'Volunteer', 'Helping with art and technology exhibitions', 27, 'https://www.chloesmith.com'),
('nathan.brown@example.com', 'Nathan', 'Brown', 'P@ssw0rd123!', '123-339-6677', '1993-10-29', 'Male', 'media/profile_pictures/nathan_brown.jpg', '2025-02-09', 'Admin', 'Admin for startup pitch days and innovation fairs', 28, 'https://www.nathanbrown.com'),
('sophia.miller@example.com', 'Sophia', 'Miller', 'P@ssw0rd123!', '123-595-3388', '1991-01-01', 'Female', 'media/profile_pictures/sophia_miller.jpg', '2025-02-12', 'Attendee', 'Interested in global food and drink shows', 29, 'https://www.sophiamiller.com'),
('william.james@example.com', 'William', 'James', 'P@ssw0rd123!', '123-944-2211', '1990-03-23', 'Male', 'media/profile_pictures/william_james.jpg', '2025-02-14', 'Volunteer', 'Volunteer coordinator for business forums and corporate summits', 30, 'https://www.williamjames.com');

