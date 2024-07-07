CREATE table student_table (
Student_id INT,
Stu_name VARCHAR(50),
Department VARCHAR(50),
email_id VARCHAR(50),
Phone_no INT,
Address text, 
Date_of_birth date,
Gender char(10), 
Major VARCHAR(50), 
GPA decimal (1,1),
Grade CHAR(1)
);

INSERT INTO student_table ('Student_id','Stu_name', 'Department', 'email_id', 'Phone_no', 'Address', 'Date_of_birth', 'Gender', 'Major' , 'GPA' ,'Grade' )

VALUES ('101','Amirtha','Biology','amirtha@outlook.com','9173854210','Chennai','12/02/1991','Female','English','5.6','B'),
('102','Kabilan','Biology','kabi92@hotmail.com','9325671098','Madurai','05/11/1992','Male','Tamil','9.0','A'),
('103','Sree','Commerce','sree@gmail.com','9562147803','Theni','20/04/1991','Male','Hindi','9.5','A'),
('104','Bala','Maths','balan@gmail.com','9432156870','Punjab','19/10/1992','Male','English','4.3','C'),
('105','Raghavi','English','ravi@yahoo.com','9897531026','Andhra','22/08/1992','Female','English','8.5','A'),
('106','Nivedha','Tamil','nivin@gmail.com','9912345678','Delhi','04/01/1992','Female','Tamil','5.0','B'),
('107','Ramya','Science','ramya@facemail.com','9443210567','Tamilnadu','17/07/1991','Female','English','4.6','B'),
('108','Jenitha','Socialscience','jenitha32@gmail.com','9654782301','Gujarat','30/12/1991','Female','English','5.5','B'),
('109','Mohan','Psycology','mohan@outlook.com','9443210567','Kerala','08/03/1992','Male','Hindi','9.6','A'),
('110','Bhavani','Nursing','bhavani88@gmail.com','9912345678','Karnataka','15/09/1991','Female','English','3.6','C');

SELECT * FROM student_table;