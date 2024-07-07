CREATE TABLE Events (
Event_Id INT PRIMARY KEY, 
Event_Name VARCHAR(50),
Event_Date DATE,
Event_Location VARCHAR(50),
Event_Description VARCHAR(100)
); 

INSERT INTO Events ('Event_Id', 'Event_Name', 'Event_Date', 'Event_Location', 'Event_Description') VALUES

('E1', 'Art workshop', '12/07/2024', 'MAA15-18th floor', 'Painting workshop for employees'),
('E2', 'Photography display', '13/07/2024', 'MAA12-15th floor', 'Display photographic skills of employees'),
('E3', 'Play station', '14/07/2024', 'BLR14-8th floor', 'Play indoor games'),
('E4', 'Food stall', '15/07/2024', 'BLR12-5th floor', 'Foods and snacks counter'),
('E5', 'Light show', '16/07/2024', 'MAA15-20th floor', 'a spectacle of coloured lights '); 

CREATE TABLE Attendees (
Attendee_Id INT Primary key, 
Attendee_Name VARCHAR(50), 
Attendee_Phone VARCHAR(50), 
Attendee_Email VARCHAR(50), 
Attendee_City VARCHAR(50)
); 

INSERT INTO Attendees ('Attendee_Id', 'Attendee_Name', 'Attendee_Phone', 'Attendee_Email', 'Attendee_City') VALUES

('A101', 'Martina', '9174321890', 'martina@gmail.com', 'Chennai'),
('A102', 'Immanuel', '9345672109', 'imman@ymail.com', 'Bangalore'),
('A103', 'Chandran', '9987654321', 'chandran@gmail.com', 'Chennai'),
('A104', 'Parthasarathy', '9567890123', 'partha99@outlook.com', 'Bangalore'),
('A105', 'Yazhini', '9123456789', 'yazhini78@hotmail.com', 'Chennai');

CREATE TABLE Registrations (
Registration_id INT Primary key,
Event_Id INT,
Attendee_Id INT,
Registration_Date date,
Registration_Amount decimal(3,2)
);

INSERT INTO Registrations ('Registration_id', 'Event_Id', 'Attendee_Id','Registration_Date','Registration_Amount') VALUES 

('R01', 'E4', 'A103','12/07/2024','100.00'),
('R02', 'E3', 'A101','15/07/2024','100.00'),
('R03', 'E5', 'A105','13/07/2024','100.00'),
('R04', 'E1', 'A102','14/07/2024','100.00');

-- 5.Develop queries to retrieve event information, generate attendee lists, and calculate event attendance statistics. 

-- 5.1 event information

-- Select Event_Name, Event_date, Event_location from Events;

-- 5.2 generate attendee lists and calculate event attendance statistics

select E.Event_Id, E.Event_Name, E.Event_Date, E.Event_Location, E.Event_Description, COUNT(R.Attendee_Id) AS Attendance_Count
from Events E 
join Registrations R ON E.Event_Id = R.Event_Id
group by E.Event_Id, E.Event_Name, E.Event_Date, E.Event_Location, E.Event_Description
order by E.Event_Date;

