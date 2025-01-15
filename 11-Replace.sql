SELECT REPLACE('ABCDPQRS','PQRS','XYZ') AS NAME;

-- if we use preplace with select then it will not affect the original table.
SELECT REPLACE(emp_id,10,100)  AS ID FROM employees;

-- it also replace the numeric value with string value.

SELECT REPLACE(emp_id,10,'EMP')  AS ID FROM employees;