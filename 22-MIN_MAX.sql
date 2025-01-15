SELECT emp_id,fname AS NAME,Balance AS Amount FROM Account_holders WHERE 
Balance = (SELECT MAX(Balance) FROM Account_holders);