/* Create the database */
CREATE DATABASE CollegeManagementSystem;
USE CollegeManagementSystem;

/* Create the Departments Table */
CREATE TABLE CollegeManagementSystem.Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    HeadOfDepartment VARCHAR(100),
    FacultyCount INT
);


INSERT INTO CollegeManagementSystem.Departments (DepartmentID, DepartmentName, HeadOfDepartment, FacultyCount) VALUES 
(1, 'Computer Science', 'Dr. John Smith', 15),
(2, 'Electrical Engineering', 'Dr. Emily Johnson', 10),
(3, 'Mechanical Engineering', 'Dr. Alan Brown', 12),
(4, 'Civil Engineering', 'Dr. Sarah White', 8),
(5, 'Business Administration', 'Dr. Robert Green', 6),
(6, 'Mathematics', 'Dr. Linda Black', 7),
(7, 'Physics', 'Dr. Michael Davis', 9),
(8, 'Chemistry', 'Dr. Julia Wilson', 5),
(9, 'Biology', 'Dr. William Moore', 11),
(10, 'Arts & Humanities', 'Dr. Jessica Lee', 4),
(11, 'Environmental Science', 'Dr. Henry Davis', 10),
(12, 'Law', 'Dr. Rachel Brown', 12),
(13, 'Psychology', 'Dr. Samuel Parker', 8),
(14, 'Sociology', 'Dr. Helen Moore', 7),
(15, 'History', 'Dr. John Harris', 9),
(16, 'Geography', 'Dr. Paul White', 6),
(17, 'Philosophy', 'Dr. Isaac Taylor', 5),
(18, 'Economics', 'Dr. Clara Lee', 7),
(19, 'Political Science', 'Dr. Mark Young', 10),
(20, 'Linguistics', 'Dr. Emma Green', 5);

/* Create the Faculty Table */
CREATE TABLE CollegeManagementSystem.Faculty (
    FacultyID INT PRIMARY KEY,
    Name VARCHAR(100),
    DOB DATE,
    Gender VARCHAR(10),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


INSERT INTO CollegeManagementSystem.Faculty (FacultyID, Name, DOB, Gender, Email, PhoneNumber, DepartmentID) VALUES
(1, 'Dr. John Doe', '1980-03-15', 'Male', 'johndoe@college.com', '1234567890', 1),
(2, 'Dr. Emily Rose', '1979-05-22', 'Female', 'emilyrose@college.com', '1234567891', 2),
(3, 'Dr. Alan Brown', '1985-07-30', 'Male', 'alanbrown@college.com', '1234567892', 3),
(4, 'Dr. Sarah White', '1982-01-12', 'Female', 'sarahwhite@college.com', '1234567893', 4),
(5, 'Dr. Robert Green', '1984-10-25', 'Male', 'robertgreen@college.com', '1234567894', 5),
(6, 'Dr. Linda Black', '1987-02-19', 'Female', 'lindablack@college.com', '1234567895', 6),
(7, 'Dr. Michael Davis', '1986-08-09', 'Male', 'michaeldavis@college.com', '1234567896', 7),
(8, 'Dr. Julia Wilson', '1983-04-11', 'Female', 'juliawilson@college.com', '1234567897', 8),
(9, 'Dr. William Moore', '1981-11-23', 'Male', 'williammore@college.com', '1234567898', 9),
(10, 'Dr. Jessica Lee', '1980-09-03', 'Female', 'jessicalee@college.com', '1234567899', 10),
(11, 'Dr. Henry Davis', '1983-07-18', 'Male', 'henrydavis@college.com', '1234567800', 11),
(12, 'Dr. Rachel Brown', '1977-10-02', 'Female', 'rachelbrown@college.com', '1234567801', 12),
(13, 'Dr. Samuel Parker', '1984-06-14', 'Male', 'samuelparker@college.com', '1234567802', 13),
(14, 'Dr. Helen Moore', '1981-09-08', 'Female', 'helenmoore@college.com', '1234567803', 14),
(15, 'Dr. John Harris', '1978-04-11', 'Male', 'johnharris@college.com', '1234567804', 15),
(16, 'Dr. Paul White', '1980-12-05', 'Male', 'paulwhite@college.com', '1234567805', 16),
(17, 'Dr. Isaac Taylor', '1982-02-28', 'Male', 'isaactaylor@college.com', '1234567806', 17),
(18, 'Dr. Clara Lee', '1985-11-15', 'Female', 'claralee@college.com', '1234567807', 18),
(19, 'Dr. Mark Young', '1983-03-29', 'Male', 'markyoung@college.com', '1234567808', 19),
(20, 'Dr. Emma Green', '1986-01-10', 'Female', 'emmagreen@college.com', '1234567809', 20);

/* Create the Courses Table */
CREATE TABLE CollegeManagementSystem.Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    CourseCode VARCHAR(20),
    Duration INT,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


INSERT INTO CollegeManagementSystem.Courses (CourseID, CourseName, CourseCode, Duration, DepartmentID) VALUES
(1, 'Computer Science', 'CS101', 4, 1),
(2, 'Electrical Engineering', 'EE101', 4, 2),
(3, 'Mechanical Engineering', 'ME101', 4, 3),
(4, 'Civil Engineering', 'CE101', 4, 4),
(5, 'Business Administration', 'BA101', 3, 5),
(6, 'Mathematics', 'MA101', 3, 6),
(7, 'Physics', 'PH101', 3, 7),
(8, 'Chemistry', 'CH101', 3, 8),
(9, 'Biology', 'BI101', 3, 9),
(10, 'Arts & Humanities', 'AH101', 3, 10),
(11, 'Environmental Science', 'ES101', 3, 11),
(12, 'Law', 'LA101', 3, 12),
(13, 'Psychology', 'PSY101', 3, 13),
(14, 'Sociology', 'SOC101', 3, 14),
(15, 'History', 'HIS101', 3, 15),
(16, 'Geography', 'GEO101', 3, 16),
(17, 'Philosophy', 'PHI101', 3, 17),
(18, 'Economics', 'ECO101', 3, 18),
(19, 'Political Science', 'POL101', 3, 19),
(20, 'Linguistics', 'LIN101', 3, 20);

/* Create the Classes Table */
CREATE TABLE CollegeManagementSystem.Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(100),
    CourseID INT,
    FacultyID INT,
    Schedule VARCHAR(100),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);

INSERT INTO CollegeManagementSystem.Classes (ClassID, ClassName, CourseID, FacultyID, Schedule) VALUES
(1, 'CS101 - Introduction to Computer Science', 1, 1, 'Mon, Wed, Fri - 10:00 AM to 12:00 PM'),
(2, 'EE101 - Electrical Circuit Analysis', 2, 2, 'Mon, Wed, Fri - 09:00 AM to 11:00 AM'),
(3, 'ME101 - Introduction to Mechanics', 3, 3, 'Tue, Thu - 01:00 PM to 03:00 PM'),
(4, 'CE101 - Civil Engineering Fundamentals', 4, 4, 'Mon, Wed - 11:00 AM to 01:00 PM'),
(5, 'BA101 - Introduction to Business', 5, 5, 'Tue, Thu - 09:00 AM to 11:00 AM'),
(6, 'MA101 - Calculus I', 6, 6, 'Mon, Wed, Fri - 02:00 PM to 04:00 PM'),
(7, 'PH101 - Physics I', 7, 7, 'Mon, Wed - 03:00 PM to 05:00 PM'),
(8, 'CH101 - Organic Chemistry', 8, 8, 'Tue, Thu - 10:00 AM to 12:00 PM'),
(9, 'BI101 - Introduction to Biology', 9, 9, 'Mon, Wed - 01:00 PM to 03:00 PM'),
(10, 'AH101 - Introduction to Humanities', 10, 10, 'Mon, Wed, Fri - 12:00 PM to 02:00 PM'),
(11, 'ES101 - Environmental Science', 11, 11, 'Tue, Thu - 03:00 PM to 05:00 PM'),
(12, 'LA101 - Introduction to Law', 12, 12, 'Mon, Wed - 09:00 AM to 11:00 AM'),
(13, 'PSY101 - Psychology 101', 13, 13, 'Tue, Thu - 01:00 PM to 03:00 PM'),
(14, 'SOC101 - Introduction to Sociology', 14, 14, 'Mon, Wed - 02:00 PM to 04:00 PM'),
(15, 'HIS101 - World History', 15, 15, 'Mon, Wed, Fri - 10:00 AM to 12:00 PM'),
(16, 'GEO101 - Physical Geography', 16, 16, 'Tue, Thu - 09:00 AM to 11:00 AM'),
(17, 'PHI101 - Introduction to Philosophy', 17, 17, 'Mon, Wed - 12:00 PM to 02:00 PM'),
(18, 'ECO101 - Principles of Economics', 18, 18, 'Mon, Wed, Fri - 03:00 PM to 05:00 PM'),
(19, 'POL101 - Introduction to Political Science', 19, 19, 'Tue, Thu - 02:00 PM to 04:00 PM'),
(20, 'LIN101 - Introduction to Linguistics', 20, 20, 'Mon, Wed - 01:00 PM to 03:00 PM');


/* Create the Students Table */
CREATE TABLE CollegeManagementSystem.Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    DOB DATE,
    Gender VARCHAR(10),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    EnrollmentYear INT,
    CourseID INT,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);


INSERT INTO CollegeManagementSystem.Students (StudentID, Name, DOB, Gender, Email, PhoneNumber, EnrollmentYear, CourseID) VALUES
(1, 'Alice Green', '2000-02-15', 'Female', 'alicegreen@college.com', '1112223333', 2020, 1),
(2, 'Bob Miller', '1999-05-22', 'Male', 'bobmiller@college.com', '1112223334', 2020, 2),
(3, 'Charlie Smith', '2000-07-30', 'Male', 'charliesmith@college.com', '1112223335', 2020, 3),
(4, 'Diana Black', '2001-01-12', 'Female', 'dianablack@college.com', '1112223336', 2021, 4),
(5, 'Eve White', '1999-09-25', 'Female', 'evewhite@college.com', '1112223337', 2021, 5),
(6, 'Frank Harris', '2000-04-09', 'Male', 'frankharris@college.com', '1112223338', 2021, 6),
(7, 'Grace Thomas', '2001-08-20', 'Female', 'gracethomas@college.com', '1112223339', 2022, 7),
(8, 'Henry Brown', '2000-12-11', 'Male', 'henrybrown@college.com', '1112223340', 2022, 8),
(9, 'Ivy Wilson', '2001-05-10', 'Female', 'ivywilson@college.com', '1112223341', 2022, 9),
(10, 'Jack Clark', '2001-11-03', 'Male', 'jackclark@college.com', '1112223342', 2022, 10),
(11, 'Katie Adams', '2000-04-22', 'Female', 'katieadams@college.com', '1112223343', 2020, 11),
(12, 'Liam Scott', '1999-06-14', 'Male', 'liamscott@college.com', '1112223344', 2020, 12),
(13, 'Mason Carter', '2000-03-18', 'Male', 'masoncarter@college.com', '1112223345', 2020, 13),
(14, 'Nora Evans', '2001-09-12', 'Female', 'noraevans@college.com', '1112223346', 2021, 14),
(15, 'Oliver Lewis', '1999-08-30', 'Male', 'oliverlewis@college.com', '1112223347', 2021, 15),
(16, 'Penny Gray', '2000-05-21', 'Female', 'pennygray@college.com', '1112223348', 2021, 16),
(17, 'Quinn Mitchell', '2001-07-10', 'Male', 'quinnmitchell@college.com', '1112223349', 2022, 17),
(18, 'Riley Moore', '2000-10-18', 'Female', 'riley@college.com', '1112223350', 2022, 18),
(19, 'Sophia Clark', '2001-12-22', 'Female', 'sophiaclark@college.com', '1112223351', 2022, 19),
(20, 'Tyler Hall', '2000-05-02', 'Male', 'tylerhall@college.com', '1112223352', 2022, 20);

/* Create the Enrollments Table */
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    ClassID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);


INSERT INTO Enrollments (EnrollmentID, StudentID, ClassID, EnrollmentDate) VALUES
(1, 1, 1, '2024-01-10'),
(2, 2, 2, '2024-01-12'),
(3, 3, 3, '2024-01-15'),
(4, 4, 4, '2024-01-17'),
(5, 5, 5, '2024-01-19'),
(6, 6, 6, '2024-01-22'),
(7, 7, 7, '2024-01-25'),
(8, 8, 8, '2024-01-27'),
(9, 9, 9, '2024-01-30'),
(10, 10, 10, '2024-02-02'),
(11, 11, 11, '2024-02-05'),
(12, 12, 12, '2024-02-07'),
(13, 13, 13, '2024-02-10'),
(14, 14, 14, '2024-02-12'),
(15, 15, 15, '2024-02-14'),
(16, 16, 16, '2024-02-17'),
(17, 17, 17, '2024-02-20'),
(18, 18, 18, '2024-02-22'),
(19, 19, 19, '2024-02-24'),
(20, 20, 20, '2024-02-26');


/* Create the Exams Table */
CREATE TABLE CollegeManagementSystem.Exams (
    ExamID INT PRIMARY KEY,
    ExamName VARCHAR(100),
    ExamDate DATE,
    ClassID INT,
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);


INSERT INTO CollegeManagementSystem.Exams (ExamID, ExamName, ExamDate, ClassID) VALUES
(1, 'Midterm Exam - CS101', '2024-05-15', 1),
(2, 'Final Exam - EE101', '2024-06-01', 2),
(3, 'Midterm Exam - ME101', '2024-05-20', 3),
(4, 'Final Exam - CE101', '2024-06-15', 4),
(5, 'Midterm Exam - BA101', '2024-05-25', 5),
(6, 'Final Exam - MA101', '2024-06-20', 6),
(7, 'Midterm Exam - PH101', '2024-05-12', 7),
(8, 'Final Exam - CH101', '2024-06-25', 8),
(9, 'Midterm Exam - BI101', '2024-05-30', 9),
(10, 'Final Exam - AH101', '2024-06-30', 10),
(11, 'Midterm Exam - ES101', '2024-05-10', 11),
(12, 'Final Exam - LA101', '2024-06-10', 12),
(13, 'Midterm Exam - PSY101', '2024-05-15', 13),
(14, 'Final Exam - SOC101', '2024-06-05', 14),
(15, 'Midterm Exam - HIS101', '2024-05-25', 15),
(16, 'Final Exam - GEO101', '2024-06-10', 16),
(17, 'Midterm Exam - PHI101', '2024-05-05', 17),
(18, 'Final Exam - ECO101', '2024-06-18', 18),
(19, 'Midterm Exam - POL101', '2024-05-10', 19),
(20, 'Final Exam - LIN101', '2024-06-20', 20);

/* Create the Results Table */
CREATE TABLE CollegeManagementSystem.Results (
    ResultID INT PRIMARY KEY,
    StudentID INT,
    ExamID INT,
    MarksObtained INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (ExamID) REFERENCES Exams(ExamID)
);


INSERT INTO CollegeManagementSystem.Results (ResultID, StudentID, ExamID, MarksObtained) VALUES
(1, 1, 1, 85),
(2, 2, 2, 90),
(3, 3, 3, 80),
(4, 4, 4, 88),
(5, 5, 5, 92),
(6, 6, 6, 78),
(7, 7, 7, 85),
(8, 8, 8, 91),
(9, 9, 9, 84),
(10, 10, 10, 89),
(11, 11, 11, 87),
(12, 12, 12, 93),
(13, 13, 13, 82),
(14, 14, 14, 88),
(15, 15, 15, 91),
(16, 16, 16, 75),
(17, 17, 17, 83),
(18, 18, 18, 79),
(19, 19, 19, 94),
(20, 20, 20, 90);

/* Create the Library Table */
CREATE TABLE CollegeManagementSystem.Library (
    BookID INT PRIMARY KEY,
    BookTitle VARCHAR(100),
    Author VARCHAR(100),
    ISBN VARCHAR(20),
    PublishedYear INT
);


INSERT INTO CollegeManagementSystem.Library (BookID, BookTitle, Author, ISBN, PublishedYear) VALUES
(1, 'Introduction to Algorithms', 'Thomas H. Cormen', '9780262033848', 2009),
(2, 'Electric Circuits', 'James W. Nilsson', '9780133438981', 2014),
(3, 'Mechanical Engineering Design', 'J.E. Shigley', '9780072921955', 2011),
(4, 'Structural Engineering Handbook', 'Donald G. Newland', '9780070382322', 2010),
(5, 'Business Management', 'Stephen P. Robbins', '9780133058361', 2012),
(6, 'Calculus: Early Transcendentals', 'James Stewart', '9781305071759', 2015),
(7, 'Physics for Scientists and Engineers', 'Raymond A. Serway', '9780495382876', 2010),
(8, 'Organic Chemistry', 'L.G. Wade', '9780321910295', 2013),
(9, 'Biology: The Unity and Diversity of Life', 'Cecie Starr', '9781305095273', 2015),
(10, 'World History: Patterns of Civilization', 'C. D. K. Gokul', '9789387578875', 2019),
(11, 'Introduction to Environmental Science', 'Richard T. Wright', '9781260577985', 2020),
(12, 'Constitutional Law', 'John Marshall', '9780226239899', 2016),
(13, 'Introduction to Psychology', 'James W. Kalat', '9781305117242', 2015),
(14, 'Principles of Sociology', 'John Macionis', '9780134738329', 2019),
(15, 'Principles of Economics', 'N. Gregory Mankiw', '9781305585126', 2017),
(16, 'Geography of Globalization', 'Robert A. de Souza', '9780395984539', 2018),
(17, 'Philosophy: A Very Short Introduction', 'Edward Craig', '9780192853575', 2013),
(18, 'Understanding Political Science', 'Robert J. Jackson', '9780538454521', 2011),
(19, 'Language: Its Structure and Use', 'Edward Finegan', '9781111836523', 2014),
(20, 'Biochemistry', 'Jeremy M. Berg', '9780815344510', 2016);

/* Create the Fees Table */
CREATE TABLE CollegeManagementSystem.Fees (
    FeeID INT PRIMARY KEY,
    StudentID INT,
    Amount DECIMAL(10, 2),
    PaymentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);


INSERT INTO CollegeManagementSystem.Fees (FeeID, StudentID, Amount, PaymentDate) VALUES
(1, 1, 1500.00, '2024-01-15'),
(2, 2, 1550.00, '2024-02-20'),
(3, 3, 1600.00, '2024-01-10'),
(4, 4, 1450.00, '2024-03-05'),
(5, 5, 1500.00, '2024-02-25'),
(6, 6, 1450.00, '2024-01-30'),
(7, 7, 1480.00, '2024-03-01'),
(8, 8, 1520.00, '2024-02-10'),
(9, 9, 1570.00, '2024-01-20'),
(10, 10, 1500.00, '2024-02-15'),
(11, 11, 1600.00, '2024-03-10'),
(12, 12, 1550.00, '2024-01-25'),
(13, 13, 1620.00, '2024-02-05'),
(14, 14, 1500.00, '2024-01-12'),
(15, 15, 1480.00, '2024-03-03'),
(16, 16, 1550.00, '2024-02-18'),
(17, 17, 1600.00, '2024-01-18'),
(18, 18, 1530.00, '2024-02-22'),
(19, 19, 1500.00, '2024-03-07'),
(20, 20, 1580.00, '2024-02-12');

SELECT * FROM CollegeManagementSystem.Students;

SELECT * FROM CollegeManagementSystem.Faculty WHERE DepartmentID = 1;
/* IN and Where */
SELECT * FROM CollegeManagementSystem.Enrollments
 WHERE ClassID IN (SELECT ClassID FROM CollegeManagementSystem.Classes WHERE CourseID = 1);
 /* join */
 SELECT S.StudentID, S.Name AS StudentName, E.EnrollmentDate, C.ClassName
FROM CollegeManagementSystem.Students S
JOIN CollegeManagementSystem.Enrollments E ON S.StudentID = E.StudentID
JOIN CollegeManagementSystem.Classes C ON E.ClassID = C.ClassID;
/* Update */
UPDATE CollegeManagementSystem.Students
SET Email = 'newemail@example.com'
WHERE StudentID = 1;

/* To remove Safe mode */
SET SQL_SAFE_UPDATES = 0;


/* Delete */
DELETE FROM CollegeManagementSystem.Students
WHERE Name = 'Alice';
 
/* Alter */
ALTER TABLE CollegeManagementSystem.Faculty
ADD Salary DECIMAL(10, 2);

/* Distinct */
SELECT DISTINCT Gender FROM CollegeManagementSystem.Students;

/* Like */
SELECT * FROM CollegeManagementSystem.Faculty
WHERE Name LIKE '%John%';

/* Order by and Limit */
SELECT * FROM CollegeManagementSystem.Students
ORDER BY Name ASC 
LIMIT 5;
/* Select Sum, Count and Average */
SELECT 
    SUM(Amount) AS TotalAmount,
    COUNT(*) AS TotalFeesRecords,
    AVG(Amount) AS AverageAmount
FROM CollegeManagementSystem.Fees;

/* Min and Max */
SELECT MIN(MarksObtained),
MAX(MarksObtained) 
FROM CollegeManagementSystem.Results;

/* Case */
SELECT StudentID,
       CASE
           WHEN MarksObtained >= 80 THEN 'A'
           WHEN MarksObtained >= 60 THEN 'B'
           ELSE 'C'
       END AS Grade
FROM CollegeManagementSystem.Results Limit 5;

/* Sub query */
SELECT Name
FROM CollegeManagementSystem.Students
WHERE StudentID IN (SELECT StudentID FROM CollegeManagementSystem.Enrollments WHERE ClassID = 1);

/* Left Join */
SELECT Students.Name, Classes.ClassName
FROM CollegeManagementSystem.Students
LEFT JOIN CollegeManagementSystem.Enrollments ON Students.StudentID = Enrollments.StudentID
LEFT JOIN CollegeManagementSystem.Classes ON Enrollments.ClassID = Classes.ClassID
Limit 5;

/* View */
CREATE VIEW StudentClasses AS
SELECT Students.Name, Classes.ClassName
FROM CollegeManagementSystem.Students
JOIN CollegeManagementSystem.Enrollments ON Students.StudentID = Enrollments.StudentID
JOIN CollegeManagementSystem.Classes ON Enrollments.ClassID = Classes.ClassID;
SELECT * from CollegeManagementSystem.StudentClasses;

/* Index */
CREATE INDEX idx_student_name ON CollegeManagementSystem.Students(Name);

/* Length Upper and Lower */
SELECT 
    LENGTH(Name) AS NameLength,
    UPPER(Name) AS NameInUpperCase,
    LOWER(Name) AS NameInLowerCase
FROM CollegeManagementSystem.Students Limit 5;

/* Replace */
SELECT REPLACE(Name, 'Alice', 'Ali') FROM CollegeManagementSystem.Students;

/* Power */
SELECT POWER(2, 3) AS Result;  

/* Date and Time */
SELECT NOW() AS CurrentDateTime;

/* Date Difference */
SELECT DATEDIFF(CURRENT_DATE, '2024-01-01') AS DaysDiff;

/* Rank, Dense Rank, Ntile */
SELECT 
    StudentID,
    MarksObtained,
    RANK() OVER (ORDER BY MarksObtained DESC) AS Ranking,
    DENSE_RANK() OVER (ORDER BY MarksObtained DESC) AS Dense_Ranking,
    NTILE(4) OVER (ORDER BY MarksObtained DESC) AS Quartile
FROM CollegeManagementSystem.results
;

/* LAG and LEAD */
SELECT 
    StudentID,
    MarksObtained,
    LAG(MarksObtained) OVER (ORDER BY MarksObtained DESC) AS Previous_Marks,
    LEAD(MarksObtained) OVER (ORDER BY MarksObtained DESC) AS Next_Marks
FROM CollegeManagementSystem.results;


















