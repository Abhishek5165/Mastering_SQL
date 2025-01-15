-- It will give how many records are there in this table..

SELECT COUNT(*) FROM Account_holders;

SELECT COUNT(DISTINCT dept) AS DEPT FROM Account_holders;

-- It will give how many managers are there .

SELECT COUNT(desig) AS Kaam FROM Account_holders WHERE desig LIKE '%Ma%'; 