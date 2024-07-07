CREATE TABLE StudentInfo (
 STU_ID INT PRIMARY KEY,
 STU_NAME varchar(50), 
 DOB date, 
 PHONE_NO int,
 EMAIL_ID varchar(20),
 ADDRESS text);

INSERT INTO StudentInfo (STU_ID, STU_NAME, DOB, PHONE_NO, EMAIL_ID, ADDRESS) VALUES
(1, 'Dhana', '4/5/2001', '9772044338', 'dhana99@gmail.com', 'Chennai'),
(2, 'Lakshmi', '5/5/2000', '9410820323', 'lakshmi88@gmail.com', 'Madurai'),
(3, 'Priya', '6/7/2002', '7275555555', 'priyasww@gmail.com', 'Dindigul'),
(4, 'Dharshini', '4/5/2002', '5305680404', 'dharsh78@gmail.com', 'Dindigul'),
(5, 'Ram', '6/7/2002', '7104817042', 'ram88@gmail.com', 'Dindigul'),
(6, 'Chandru', '5/5/2002', '7753340455', 'chand44@gmail.com', 'Chennai'),
(7, 'Vijay', '8/5/2001', '8369731249', 'vijay90@gmail.com', 'Madhrai'),
(8, 'Ajith', '2/3/2004', '7015920349', 'ajith654@gmail.com', 'Dindigul');

/* Table creation CoursesInfo */ 

CREATE TABLE CoursesInfo (
 COURSE_ID CHAR(5) PRIMARY KEY,
 COURSE_NAME varchar(50), 
 COURSE_INSTRUCTOR_NAME varchar(50)
 ); 
INSERT INTO CoursesInfo (COURSE_ID, COURSE_NAME,COURSE_INSTRUCTOR_NAME) VALUES
('1AECE','Electronics and communication','Arumugam'),
('1BCSE','Computer science','Saraswathi'),
('1CIT','Information technology','Prabhu'),
('1MECH','Mechanical','Saravanan');

/* Table creation EnrollmentInfo */ 

CREATE TABLE EnrollmentInfo (
    ENROLLMENT_ID INT PRIMARY KEY,
    STU_ID INT,
    COURSE_ID CHAR(5),
    ENROLL_STATUS VARCHAR(20), 
    CONSTRAINT FK_EnrollmentStudent FOREIGN KEY (STU_ID) REFERENCES StudentInfo(STU_ID),
    CONSTRAINT FK_EnrollmentCourse FOREIGN KEY (COURSE_ID) REFERENCES CoursesInfo(COURSE_ID)
);

INSERT INTO EnrollmentInfo (ENROLLMENT_ID, STU_ID, COURSE_ID, ENROLL_STATUS) VALUES
(1000, 1, '1AECE', 'Enrolled'),
(1001, 2, '1BCSE', 'Enrolled'),
(1002, 3, '1CIT', 'Not Enrolled'),
(1004, 4, '1MECH', 'Not Enrolled'),
(1005, 5, '1CIT', ' Enrolled'),
(1006, 6, '1MECH', 'Enrolled'),
(1007, 7, '1BCSE', 'Not Enrolled'), 
(1008, 8, '1CIT', ' Enrolled');

-- a) Write a query to retrieve student details, such as student name, contact informations, and Enrollment status

SELECT STU_NAME, PHONE_NO, EMAIL_ID, ADDRESS, ENROLL_STATUS from StudentInfo
full join EnrollmentInfo on StudentInfo.STU_ID = EnrollmentInfo.STU_ID

-- b) Write a query to retrieve a list of courses in which a specific student is enrolled. 

SELECT STU_NAME, COURSE_NAME, ENROLL_STATUS from StudentInfo 
join EnrollmentInfo on StudentInfo.STU_ID = EnrollmentInfo.STU_ID 
join CoursesInfo on EnrollmentInfo.COURSE_ID = CoursesInfo.COURSE_ID
where STU_NAME = 'Dhana'

-- c) Write a query to retrieve course information, including course name, instructor information

SELECT COURSE_ID, COURSE_NAME,COURSE_INSTRUCTOR_NAME from CoursesInfo  

-- d) Write a query to retrieve course information for a specific course . 

SELECT COURSE_ID, COURSE_NAME,COURSE_INSTRUCTOR_NAME from CoursesInfo 
WHERE COURSE_ID = '1MECH'

-- e) Write a query to retrieve course information for multiple courses. 

SELECT COURSE_ID, COURSE_NAME,COURSE_INSTRUCTOR_NAME from CoursesInfo 
WHERE COURSE_ID IN ('1MECH', '1BCSE', '1CIT'); 

-- f) Test the queries to ensure accurate retrieval of student information.( execute the queries and verify the results against the expected output.) 

SELECT STU_ID, STU_NAME, DOB, EMAIL_ID, ADDRESS
FROM StudentInfo
WHERE STU_ID = 1;






