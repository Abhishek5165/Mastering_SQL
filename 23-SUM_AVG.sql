SELECT SUM(Balance) AS Amount FROM Account_holders;

SELECT dept AS DEPT,SUM(Balance) AS SUM FROM Account_holders GROUP BY dept;

-------------------------------------------------------------------------------

SELECT AVG(Balance) AS Amount FROM Account_holders;

SELECT dept AS DEPT,AVG(Balance) AS AVRAGE FROM Account_holders GROUP BY dept;