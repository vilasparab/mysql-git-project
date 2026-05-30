-----
create database PracticeHYD

use PracticeHYD

-----
CREATE TABLE Student(
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course VARCHAR(30),
    city VARCHAR(30),
    marks INT
);

DESC Student;
-----
INSERT INTO Student
VALUES
(101,'Amit','BCA','Mumbai',85),
(102,'Sneha','BSc','Pune',78),
(103,'Rahul','BCom','Nashik',90);

SELECT * FROM Student;

-----
ALTER TABLE Student
ADD mobile_no VARCHAR(15);

-----
UPDATE Student
SET marks = 95
WHERE student_id = 101;

SELECT * FROM Student;

-----
DELETE FROM Student
WHERE student_id = 103;

SELECT * FROM Student;

-----
TRUNCATE TABLE Student;
SELECT * FROM Student;

-----
-- DROP TABLE Student;
-- DROP DATABASE CollegeDB;

----changes
SELECT * FROM Student
WHERE marks > 80;

-----
CREATE TABLE Student1 (
    studentId INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    marks INT CHECK(marks >= 0)
);

show create table Student1