SELECT CONCAT_WS(':',emp_id,fname,lname,desig,dept) AS QUERY FROM Account_holders;

-- OUTPUT - 

101:Raju:Kumar:Manager:Loan
102:Sham:singh:Cashier:Cash
103:Paul:vector:Associate:Loan
104:Alex:carry:Accountant:Account
105:Victor:jacson:Associate:Deposit


SELECT CONCAT_WS(':',emp_id, CONCAT(fname,' ',lname),desig,dept) AS QUERY FROM Account_holders;

-- OUTPUT - 

101:Raju Kumar:Manager:Loan
102:Sham singh:Cashier:Cash
103:Paul vector:Associate:Loan
104:Alex carry:Accountant:Account
105:Victor jacson:Associate:Deposit


SELECT CONCAT_WS(':',emp_id,fname,UCASE(desig),dept) AS QUERY FROM Account_holders;

-- OUTPUT - 

101:Raju:MANAGER:Loan
102:Sham:CASHIER:Cash
103:Paul:ASSOCIATE:Loan
104:Alex:ACCOUNTANT:Account
105:Victor:ASSOCIATE:Deposit

SELECT CONCAT(LEFT(desig,1),emp_id) AS ID,fname AS Name FROM Account_holders;

-- OUTPUT - 

M101	Raju
C102	Sham
A103	Paul
A104	Alex
A105	Victor

