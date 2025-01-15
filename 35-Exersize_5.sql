1.  SELECT * FROM Account_holders WHERE Balance BETWEEN 25000 AND 60000;

-- Output 
-- both the salaries included ..

101	Raju	Kumar	Manager	Loan	25000
102	Sham	singh	Cashier	Cash	30000
103	Paul	vector	Associate	Loan	35000
105	Victor	jacson	Associate	Deposit	45000
107	Raman	Kushwaha	Associate	Loan	60000
109	Kisan	Singh	Cashier	Deposit	28000
110	Pradeep	Kumar	Customer	Withdraw	26000
					
2.  SELECT * FROM Account_holders WHERE fname LIKE 'S%' OR fname LIKE 'R%';

-- Output 

101	Raju	Kumar	Manager	Loan	25000
102	Sham	singh	Cashier	Cash	30000
107	Raman	Kushwaha	Associate	Loan	60000
108	Ram	Chandra	Manager	Account	72000
					
3. SELECT * FROM Account_holders WHERE (Balance = 25000 AND dept = 'Loan');

-- Output 

101	Raju	Kumar	Manager 	Loan	25000

4. SELECT * FROM Account_holders WHERE desig IN('Manager','Associate');

-- Output  

101	Raju	Kumar	Manager	Loan	25000
103	Paul	vector	Associate	Loan	35000
105	Victor	jacson	Associate	Deposit	45000
107	Raman	Kushwaha	Associate	Loan	60000
108	Ram	Chandra	Manager	Account	72000
					
5. SELECT fname,Balance, CASE WHEN Balance != 0 THEN Balance/80 END AS 'sal in dollars' FROM Account_holders;

--Output ..

fname   Balance sal in dollars
Raju	25000	312.5000
Sham	30000	375.0000
Paul	35000	437.5000
Alex	20000	250.0000
Victor	45000	562.5000
Mohit	10000	125.0000
Raman	60000	750.0000
Ram	    72000	900.0000
Kisan	28000	350.0000
Pradeep	26000	325.0000