1. SELECT COUNT(emp_id) AS Total_Records FROM Account_holders;

-- Output 

Total_Records 
10

2. SELECT dept AS DEPT,COUNT(emp_id) AS COUNT FROM Account_holders GROUP BY dept;

-- Output 

DEPT   COUNT
Loan	 3
Cash	 2
Account	 2
Deposit	 2
Withdraw 1

3. SELECT * FROM Account_holders ORDER BY Balance DESC LIMIT 1;
or
3. SELECT * FROM Account_holders WHERE Balance = (SELECT MAX(Balance) FROM Account_holders);

-- Output 

108	Ram	Chandra	Manager	Account	72000
					
4. SELECT dept AS DEPT,AVG(Balance) AS Amount FROM Account_holders GROUP BY dept;

-- Output 

DEPT          Amount
Loan	    40000.0000
Cash	    20000.0000
Account	    46000.0000
Deposit	    36500.0000
Withdraw	26000.0000

5.  SELECT dept AS DEPT,MAX(Balance) AS Amount FROM Account_holders WHERE dept='Loan' GROUP BY dept;

-- Output 

DEPT    Amount
Loan	60000

6. SELECT dept AS DEPT,SUM(Balance) AS Amount FROM Account_holders WHERE dept='Loan' GROUP BY dept;

-- Output 

DEPT    Amount
Loan	120000