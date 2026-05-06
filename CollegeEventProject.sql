USE CollegeEventDB;
-- Department
CREATE TABLE Department1 (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50)
);

-- Organizer
CREATE TABLE Organizer (
    Organizer_ID INT PRIMARY KEY,
    Organizer_Name VARCHAR(50),
    Role VARCHAR(30)
);

-- Venue
CREATE TABLE Venue (
    Venue_ID INT PRIMARY KEY,
    Venue_Name VARCHAR(50),
    Capacity INT
);

-- Student
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Gender VARCHAR(10),
    Mobile VARCHAR(15),
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department1(Dept_ID)
);

-- Event
CREATE TABLE Event (
    Event_ID INT PRIMARY KEY,
    Event_Name VARCHAR(50),
    Event_Date DATE,
    Organizer_ID INT,
    Venue_ID INT,
    FOREIGN KEY (Organizer_ID) REFERENCES Organizer(Organizer_ID),
    FOREIGN KEY (Venue_ID) REFERENCES Venue(Venue_ID)
);

-- Participation
CREATE TABLE Participation (
    Participation_ID INT PRIMARY KEY,
    Student_ID INT,
    Event_ID INT,
    Position VARCHAR(20),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID)
);

-- Department
INSERT INTO Department1 VALUES
(1,'Computer'),(2,'Electronics'),(3,'Mechanical'),
(4,'Civil'),(5,'IT'),(6,'AI');

-- Organizer
INSERT INTO Organizer VALUES
(1,'Dr Sharma','Faculty'),
(2,'Prof Patil','Faculty'),
(3,'Amit','Student Coordinator'),
(4,'Neha','Student Coordinator'),
(5,'Rahul','Student Coordinator'),
(6,'Dr Kulkarni','Faculty');

-- Venue
INSERT INTO Venue VALUES
(1,'Auditorium',500),
(2,'Hall A',150),
(3,'Hall B',120),
(4,'Ground',1000),
(5,'Lab',60),
(6,'Conference',80);

-- Student
INSERT INTO Student VALUES
(1,'Adi','Male','9876543210',1),
(2,'Riya','Female','9876543211',2),
(3,'Karan','Male','9876543212',3),
(4,'Sneha','Female','9876543213',4),
(5,'Aman','Male','9876543214',5),
(6,'Pooja','Female','9876543215',6);

-- Event
INSERT INTO Event VALUES
(1,'Hackathon','2026-05-10',1,1),
(2,'Robotics','2026-05-12',2,5),
(3,'Tech Talk','2026-05-15',3,2),
(4,'Sports','2026-05-18',4,4),
(5,'AI Workshop','2026-05-20',6,3),
(6,'Coding','2026-05-22',5,6);

INSERT INTO Participation VALUES
(1,1,1,'Winner'),
(2,2,1,'Runner'),
(3,3,1,'Participant'),
(4,1,2,'Participant'),
(5,4,2,'Winner'),
(6,5,2,'Runner'),
(7,2,3,'Winner'),
(8,3,3,'Participant'),
(9,6,3,'Runner'),
(10,4,4,'Participant'),
(11,5,4,'Winner'),
(12,6,4,'Runner'),
(13,1,5,'Winner'),
(14,2,6,'Runner'),
(15,3,6,'Participant');

SELECT * FROM Student;

SELECT s.Student_Name, d.Dept_Name
FROM Student s
JOIN Department1 d ON s.Dept_ID = d.Dept_ID;

SELECT e.Event_Name, o.Organizer_Name
FROM Event e
JOIN Organizer o ON e.Organizer_ID = o.Organizer_ID;

SELECT * FROM Department1;
SELECT * FROM Organizer;
SELECT * FROM Venue;
SELECT * FROM Student;
SELECT * FROM Event;
SELECT * FROM Participation;





SELECT * FROM INFORMATION_SCHEMA.TABLES;



