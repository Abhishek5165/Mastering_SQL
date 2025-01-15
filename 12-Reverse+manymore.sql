SELECT REVERSE('ABHISHEK') AS NAME;

---------------------------------------------------------------

UPPER - UCASE 
LOWER - LCASE

SELECT UPPER(name) AS NAME FROM employees;

SELECT LOWER(name) AS NAME FROM employees;

SELECT UCASE(name) AS NAME FROM employees;

SELECT emp_id, ucase(name) AS Name FROM employees;

---------------------------------------------------------------

CHAR_LENGTH

SELECT CHAR_LENGTH("ABHISHEK") AS LENGTH;

SELECT name AS NAME,CHAR_LENGTH(name) AS LENGTH FROM employees;

SELECT emp_id AS ID, name AS NAME FROM employees where char_length(name) <=4;