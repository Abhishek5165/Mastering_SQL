1. SELECT DISTINCT dept AS DEPT FROM Account_holders;

-- Output 

DEPT 
Loan
Cash
Account
Deposit
Withdraw

2. SELECT * FROM Account_holders ORDER BY Balance DESC;

-- Output 

108	Ram	Chandra	Manager	Account	72000
107	Raman	Kushwaha	Associate	Loan	60000
105	Victor	jacson	Associate	Deposit	45000
103	Paul	vector	Associate	Loan	35000
102	Sham	singh	Cashier	Cash	30000
109	Kisan	Singh	Cashier	Deposit	28000
110	Pradeep	Kumar	Customer	Withdraw	26000
101	Raju	Kumar	Manager	Loan	25000
104	Alex	carry	Accountant	Account	20000
106	Mohit	Sharma	Accountent	Cash	10000


3. SELECT * FROM Account_holders LIMIT 3;

-- Output 

101	Raju	Kumar	Manager	Loan	25000
102	Sham	singh	Cashier	Cash	30000
103	Paul	vector	Associate	Loan	35000
					

4. SELECT * FROM Account_holders WHERE fname LIKE "R%";

-- Output 

101	Raju	Kumar	Manager	Loan	25000
107	Raman	Kushwaha	Associate	Loan	60000
108	Ram	Chandra	Manager	Account	72000

5. SELECT * FROM Account_holders WHERE CHAR_LENGTH(lname) = 5;

-- Output 

101	Raju	Kumar	Manager	Loan	25000
102	Sham	singh	Cashier	Cash	30000
104	Alex	carry	Accountant	Account	20000
109	Kisan	Singh	Cashier	Deposit	28000
110	Pradeep	Kumar	Customer	Withdraw	26000
					
