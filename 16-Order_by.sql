-- ORDER BY - used for sorting purpose..

SELECT fname FROM Account_holders order by fname;

-- sorting using desending order ...

SELECT fname FROM Account_holders order by fname DESC;

-- we can sort based on column number also ...
-- it will sort according to column 5 ..

SELECT * FROM Account_holders order by 5; 


SELECT * FROM Account_holders order by fname,lname;