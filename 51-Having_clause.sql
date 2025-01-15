SELECT Student_Name , SUM(fee) AS Total FROM inst_info GROUP BY 
Student_Name;

----------- Output --------------

Student_Name   Total
    Raju	   18000
    Sham	   15000
    Paul	   4000
    Alex	   6000


-- Having Caluse is used to check the condtion .. it is mostally used by GROUP BY;

SELECT Student_Name , SUM(fee) AS Total FROM inst_info GROUP BY 
Student_Name HAVING Total > 10000;

Student_Name   Total
    Raju	   18000
    Sham	   15000


-- it also used with GROUP BY Caluse;

WITH ROLL UP  
-- it adds the Column at the end of the table with total product in which we have using.

SELECT Student_Name , SUM(fee) AS Total FROM inst_info GROUP BY 
Student_Name WITH ROLLUP;

-- it adds NULL Lable with total sum of fees...

Alex	6000
Paul	4000
Raju	18000
Sham	15000
NULL	43000

-- we can modify this by using this .....

SELECT IFNULL(Student_Name,"Total SUM") , SUM(fee) AS Total FROM inst_info GROUP BY 
Student_Name WITH ROLLUP;


Alex	    6000
Paul	    4000
Raju	    18000
Sham	    15000
Total SUM	43000
