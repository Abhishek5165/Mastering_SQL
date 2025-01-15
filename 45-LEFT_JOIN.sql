SELECT * FROM Customers LEFT JOIN Orders ON Customers.Id = Orders.Order_Id;

-- Output -

Id  Name        Email       Order_Id   Date     Amount  cus_Id
1	Ram	    ram@gmail.com	    1	2024-11-19	200.32	1
2	Sham	sham@gmail.com	    2	2024-11-20	500.11	1
3	Amit	amit@gmail.com	    3	2024-11-21	100.00	2
4	Paul	paul@gmail.com	    4	2024-11-22	300.43	3
5	Baburao	baburao@gmail.com	5	2024-11-23	400.22	2
6	Alex	alex@gmail.com	    6	2024-11-24	1000.23	4

SELECT Name,SUM(Amount) AS Total FROM Customers LEFT JOIN Orders ON Customers.Id = Orders.Order_Id GROUP BY Name;

-- Output -

Name    Total
Ram	    200.32
Sham	500.11
Amit	100.00
Paul	300.43
Baburao	400.22
Alex	1000.23