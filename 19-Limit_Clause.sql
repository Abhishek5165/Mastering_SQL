-- LIMIT - It is used to limit the recors means it display only specified records only..

SELECT * from account_holders LIMIT 2;

-- we can also see the range of records.

-- it will display only 2 records starting from 3 by skiping starting 2 records.

SELECT * from account_holders LIMIT 2,2;
 
-- Small Exercise --

SELECT * from account_holders ORDER BY Balance DESC LIMIT 1;