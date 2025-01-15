CREATE database college;
USE college;

drop database temp;

-------------------------------------------

SHOW databases;
SHOW TABLES;

-------------------------------------------

CREATE TABLE students (id INT ,name VARCHAR(20),age INT,gender VARCHAR(2), city VARCHAR(20));

-------------------------------------------

to see the schema ..
DESC students;

-------------------------------------------

DROP TABLE students;
