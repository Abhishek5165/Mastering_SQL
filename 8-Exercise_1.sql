CREATE TABLE employees (emp_id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(20) NOT NULL,desig VARCHAR (20) DEFAULT 'Probation',
dept VARCHAR (20) NOT NULL);

---------------------------------------------------------------------

INSERT INTO employees (emp_id,name,desig,dept) VALUES 
(101,'Raju','Manager','Loan');

---------------------------------------------------------------------

INSERT INTO employees (name,desig,dept) VALUES 
('Sham','Cashier','Cash'),
('Paul','Associate','Loan'),
('Alex','Accountant','Account'),
('Victor','Associate','Deposit');

----------------------------------------------------------------------

SELECT emp_id,name FROM employees WHERE emp_id = 101;
SELECT emp_id,name FROM employees;

---------------------------------------------------------------------

-- Update the data ...

UPDATE employees SET dept='IT' WHERE emp_id=103;

-- Delete the particular row ...

DELETE FROM employees WHERE emp_id=102;