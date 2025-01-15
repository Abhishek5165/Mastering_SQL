SELECT * FROM Customers RIGHT JOIN Orders ON Customers.Id = Orders.Order_Id;

-- Output - in spaces there is a null values.

Id  Name        Email       Order_Id   Date     Amount  cus_Id
1	Ram	    ram@gmail.com	    1	2024-11-19	200.32	   1
2	Sham	sham@gmail.com	    2	2024-11-20	500.11	   1
3	Amit	amit@gmail.com	    3	2024-11-21	100.00	   2
4	Paul	paul@gmail.com	    4	2024-11-22	300.43	   3
5	Baburao	baburao@gmail.com	5	2024-11-23	400.22	   2
6	Alex	alex@gmail.com	    6	2024-11-24	1000.23	   4
			                    7	2024-11-25	240.73	   6
			                    8	2024-11-26	640.62	   3
			                    9	2024-11-27	1200.43	   3

SELECT IFNULL(Name,'Unkown') AS NAME,SUM(Amount) AS Total FROM Customers RIGHT JOIN Orders ON Customers.Id = Orders.Order_Id GROUP BY Name;

-- Output -

Name    Total
Ram	    200.32
Sham	500.11
Amit	100.00
Paul	300.43
Baburao	400.22
Alex	1000.23
Unkown	2081.78