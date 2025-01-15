CREATE DATABASE Store;
USE Store;

CREATE TABLE Customers (Id INT PRIMARY KEY AUTO_INCREMENT,Name VARCHAR(20) NOT NULL,Email VARCHAR(20) NOT NULL);

CREATE TABLE Orders (Order_Id INT PRIMARY KEY AUTO_INCREMENT,Date DATE,Amount DECIMAL(10,2),cust_Id INT,FOREIGN KEY (cust_Id) REFERENCES customers(Id));

INSERT INTO Customers (Name,Email) VALUES ('Ram','ram@gmail.com'),
('Sham','sham@gmail.com'),
('Amit','amit@gmail.com');

INSERT INTO Customers (Name,Email) VALUES ('Paul','paul@gmail.com'),
('Baburao','baburao@gmail.com'),
('Alex','alex@gmail.com');

SELECT * FROM Customers;

-- Output -

Id   Name            Email
1	  Ram	        ram@gmail.com
2	  Sham	     sham@gmail.com
3	  Amit	     amit@gmail.com
4	  Paul	     paul@gmail.com
5	  Baburao     baburao@gmail.com
6	  Alex	     alex@gmail.com
		
----Orders Table ....
		
INSERT INTO Orders (Date,Amount,cust_Id) VALUES (CURDATE(),200.32,1);
INSERT INTO Orders (Date,Amount,cust_Id) VALUES (DATE_ADD(CURDATE(), INTERVAL 1 DAY),500.11,1);
INSERT INTO Orders (Date,Amount,cust_Id) VALUES (DATE_ADD(CURDATE(), INTERVAL 2 DAY),100,2);
INSERT INTO Orders (Date,Amount,cust_Id) VALUES (DATE_ADD(CURDATE(), INTERVAL 3 DAY),300.43,3);
INSERT INTO Orders (Date,Amount,cust_Id) VALUES (DATE_ADD(CURDATE(), INTERVAL 4 DAY),400.22,2);
INSERT INTO Orders (Date,Amount,cust_Id) VALUES (DATE_ADD(CURDATE(), INTERVAL 5 DAY),1000.23,4);
INSERT INTO Orders (Date,Amount,cust_Id) VALUES (DATE_ADD(CURDATE(), INTERVAL 6 DAY),240.73,6);
INSERT INTO Orders (Date,Amount,cust_Id) VALUES (DATE_ADD(CURDATE(), INTERVAL 7 DAY),640.62,3);
INSERT INTO Orders (Date,Amount,cust_Id) VALUES (DATE_ADD(CURDATE(), INTERVAL 8 DAY),1200.43,3);

SELECT * FROM Orders;

Order_Id     Date        Amount   cus_Id
   1	    2024-11-19	    200.32	    1
   2	    2024-11-20	    500.11	    1
   3	    2024-11-21	    100.00	    2
   4	    2024-11-22	    300.43	    3
   5	    2024-11-23     400.22	    2
	6	    2024-11-24	    1000.23	    4
   7	    2024-11-25	    240.73	    6
   8	    2024-11-26	    640.62	    3
   9	    2024-11-27	    1200.43	    3