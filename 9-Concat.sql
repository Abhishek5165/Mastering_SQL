SELECT CONCAT('Abhishek ','Verma') AS FULLNAME;
-----------------------------------------------------

-- we can combine the columns as well ...

-- Now next which is concat with eperator - CONCAT_WS

CREATE TABLE Account_holders (emp_id INT AUTO_INCREMENT PRIMARY KEY, fname VARCHAR(20) NOT NULL,lname VARCHAR(20) NOT NULL,
desig VARCHAR (20) DEFAULT 'Probation', dept VARCHAR (20) NOT NULL);

------------------------------------------------------------------------------

INSERT INTO Account_holders (emp_id,fname,lname,desig,dept) VALUES 
(101,'Raju','Kumar','Manager','Loan');

------------------------------------------------------------------------------

INSERT INTO Account_holders (fname,lname,desig,dept) VALUES 
('Sham','singh','Cashier','Cash'),
('Paul','vector','Associate','Loan'),
('Alex','carry','Accountant','Account'),
('Victor','jacson','Associate','Deposit');

-------------------------------------------------------------------------------

SELECT CONCAT(fname,' ',lname) AS FullName FROM Account_holders;
SELECT emp_id AS Account, CONCAT(fname,' ',lname) AS FullName FROM Account_holders;

SELECT emp_id AS Account, CONCAT(fname,' ',15) AS FullName FROM Account_holders;

-----------------------------------------------------------------------------------

SELECT CONCAT_WS(':',emp_id ,fname) AS Name FROM Account_holders;

