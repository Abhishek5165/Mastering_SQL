CREATE DATABASE Library;
USE Library;

CREATE TABLE Authors (Auth_Id INT PRIMARY KEY AUTO_INCREMENT,Name VARCHAR(20) NOT NULL);

CREATE TABLE Books (Book_Id INT PRIMARY KEY AUTO_INCREMENT,Title VARCHAR(20) NOT NULL,Ratings INT,
A_Id INT,FOREIGN KEY (A_Id) REFERENCES Authors(Auth_Id) ON DELETE CASCADE);

INSERT INTO Authors (Name) VALUES ('Raju'),
('Sham'),('Baburao'),('Paul');

SELECT * FROM Authors;

-- Output -

Auth_Id  Name
   1	 Raju
   2	 Sham
   3	 Baburao
   4	 Paul

INSERT INTO Books (Title,Ratings,A_Id) VALUES ('Story of Raju',5,1) , ('Story of Baburao',4,3) , ('Ram-The Greate Man',2,1) , ('Love Story by Sham',1,2);

SELECT * FROM Books;

-- Output -

Book_Id         Title         Ratings  A_Id
   1	     Story of Raju	     5	    1
   2	     Story of Baburao	  4	    3
   3	     Ram-The Greate Man	  2	    1
   4	     Love Story by Sham	  1	    2

SELECT Name,Title,Ratings FROM Authors INNER JOIN Books ON Books.A_Id=Authors.Auth_Id;

-- Output -

Name         Title         Ratings
Raju	   Story of Raju	      5
Raju	   Ram-The Greate Man	2
Sham	   Love Story by Sham	1
Baburao	Story of Baburao	   4

SELECT Name,IFNULL(Title,'Not Found') AS Title,IFNULL(Ratings,0) AS Ratings FROM Authors LEFT JOIN Books ON Books.A_Id=Authors.Auth_Id;

-- Output -

Name        Title            Ratings
Raju	   Story of Raju	        5
Raju	   Ram-The Greate Man	  2
Sham	   Love Story by Sham	  1
Baburao	Story of Baburao	     4
Paul	   Not Found	           0


SELECT Name,Ratings, CASE WHEN (Ratings >= 3) THEN 'Good' ELSE 'Average' END AS Remark FROM Authors INNER JOIN Books ON Books.A_Id=Authors.Auth_Id;

--Output -

Name   Ratings   Remark
Raju	   5	      Good
Raju	   2	     Average
Sham	   1	     Average
Baburao	4	      Good