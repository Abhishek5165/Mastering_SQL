CREATE DATABASE institute;

CREATE TABLE Students (id INT AUTO_INCREMENT PRIMARY KEY, 
Student_Name VARCHAR(100));

CREATE TABLE courses (id INT AUTO_INCREMENT PRIMARY KEY,
Course_Name VARCHAR(100), fee INT);

CREATE TABLE Student_course(Student_id INT, Course_id INT,
FOREIGN KEY (Student_id) REFERENCES Students(id),
FOREIGN KEY (Course_id) REFERENCES courses(id)
);

INSERT INTO Students (Student_Name) VALUES ("Raju"),("Sham"),("Paul"),('Alex');
INSERT INTO courses (id,Course_Name,fee) VALUES (101,"PD",3000);

INSERT INTO courses (Course_Name,fee) VALUES ("Java",5000),("Python",4000),("SQL",6000),("Linux",10000);

SELECT * FROM Students;
SELECT * FROM courses;

INSERT INTO Student_course (Student_id,Course_id) VALUES (1,101),(1,102),(2,105),(1,105),(3,103),(2,102),(4,104);


-----------------------------------------------------------

SELECT Student_Name , Course_Name FROM Students 
JOIN Student_course ON Student_course.Student_id=Students.id
JOIN courses ON Student_course.Course_id=courses.id;

----------------- Output ------------

Student_Name       Course_Name
   Raju	               PD
   Raju	              Java
   Raju	              Linux
   Sham	              Linux
   Sham	              Java
   Paul	             Python
   Alex	               SQL


SELECT Course_Name,Count(Student_Name) FROM Students 
JOIN Student_course ON Student_course.Student_id=Students.id
JOIN courses ON Student_course.Course_id=courses.id GROUP BY Course_Name;


----------------- Output ------------

Course_Name  Count(Student_Name)
    PD	      1
    Java	  2
   Linux	  2
   Python	  1
    SQL	      1


SELECT Student_Name,SUM(fee) FROM Students 
JOIN Student_course ON Student_course.Student_id=Students.id
JOIN courses ON Student_course.Course_id=courses.id GROUP BY Student_Name;

----------------- Output ------------

Student_Name   Count
    Raju	     3
    Sham	     2
    Paul	     1
    Alex	     1

SELECT Student_Name,SUM(fee) AS Total FROM Students 
JOIN Student_course ON Student_course.Student_id=Students.id
JOIN courses ON Student_course.Course_id=courses.id GROUP BY Student_Name;

----------------- Output ------------

Student_Name     Total
    Raju	     18000
    Sham	     15000
    Paul	     4000
    Alex	     6000

