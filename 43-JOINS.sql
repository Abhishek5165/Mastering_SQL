-- CROSS Join -> To check All the Combinations of the tables;
SELECT * FROM Customers,Orders;

-----------------------------------------------------------
-- INNER Join -> It returns the common part of the tables.
SELECT * FROM Customers INNER JOIN Orders ON Customers.Id = Orders.Order_Id;

-- Output -
Id  Name        Email       Order_Id   Date     Amount  cus_Id
1	Ram	    ram@gmail.com	   1	2024-11-19	200.32	1
2	Sham	sham@gmail.com	   2	2024-11-20	500.11	1
3	Amit	amit@gmail.com	   3	2024-11-21	100.00	2
4	Paul	paul@gmail.com	   4	2024-11-22	300.43	3
5	Baburao	baburao@gmail.com  5	2024-11-23	400.22	2
6	Alex	alex@gmail.com	   6	2024-11-24	1000.23	4

-----------------------------------------------------------
-- LEFT  Join -> It returns the common part of the tables also the complete data of the Left table.

SELECT * FROM Customers LEFT JOIN Orders ON Customers.Id = Orders.Order_Id;

-- Output -

Id  Name        Email       Order_Id   Date     Amount  cus_Id
1	Ram	    ram@gmail.com	    1	2024-11-19	200.32	1
2	Sham	sham@gmail.com	    2	2024-11-20	500.11	1
3	Amit	amit@gmail.com	    3	2024-11-21	100.00	2
4	Paul	paul@gmail.com	    4	2024-11-22	300.43	3
5	Baburao	baburao@gmail.com	5	2024-11-23	400.22	2
6	Alex	alex@gmail.com	    6	2024-11-24	1000.23	4

-- RIGHT Join -> It returns the common part of the tables also the complete data of the Right table.

SELECT * FROM Customers RIGHT JOIN Orders ON Customers.Id = Orders.Order_Id;

-- Output - in spaces there is a null values.

1	Ram	    ram@gmail.com	1	2024-11-19	200.32	1
2	Sham	sham@gmail.com	2	2024-11-20	500.11	1
3	Amit	amit@gmail.com	3	2024-11-21	100.00	2
4	Paul	paul@gmail.com	4	2024-11-22	300.43	3
5	Baburao	baburao@gmail.com	5	2024-11-23	400.22	2
6	Alex	alex@gmail.com	6	2024-11-24	1000.23	4
			                7	2024-11-25	240.73	6
			                8	2024-11-26	640.62	3
			                9	2024-11-27	1200.43	3