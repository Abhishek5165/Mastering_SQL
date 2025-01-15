-- It works just like functions ..

DELIMITER $$
CREATE PROCEDURE emp_info()
BEGIN 
    SELECT * FROM account_holders ORDER BY Balance;
END$$ 

DELIMITER ;


-- for calling the PROCEDURE we use ...

call bank_db.emp_info();


-- Now passing the parameters in PROCEDURES..

-- Here IN is the imput ..

DELIMITER $$
CREATE PROCEDURE emp_name_info(IN p_name VARCHAR(50))
BEGIN 
    SELECT * FROM account_holders WHERE fname=p_name;
END$$ 

DELIMITER ;


-- for calling this PROCEDURE we use arguments ...

call bank_db.emp_name_info('Ram');

-- ==========================================================

-- Now creating the PROCEDURE which return something ...

DELIMITER $$
CREATE PROCEDURE emp_salary_info(IN newDept VARCHAR(50),
OUT total_Salary DECIMAL(10,2))
BEGIN 
    SELECT emp_id,fname,lname,SUM(Balance) AS Salary  INTO total_Salary FROM account_holders WHERE 
    dept=newDept;
END$$ 

DELIMITER ; 

-- for calling this PROCEDURE we use arguments ...

call bank_db.emp_name_info('Ram');
