-- DATEDIFF() -> It gives the diffrence of two dates in days it will also give the negative values if the first date is small as comparision to first;

SELECT DATEDIFF('2024-10-20', '2024-08-20') AS DATE;  --Output = 61

-- After 1 year what is the date it will give ..

SELECT DATE_ADD('2024-10-20', INTERVAL 1 YEAR) AS DATE;
SELECT DATE_ADD('2024-10-20', INTERVAL 4 MONTH) AS DATE;
SELECT DATE_ADD('2024-10-20', INTERVAL 5 DAY) AS DATE;


SELECT DATE_SUB('2024-10-20', INTERVAL 1 YEAR) AS DATE;
SELECT DATE_SUB('2024-10-20', INTERVAL 4 MONTH) AS DATE;
SELECT DATE_SUB('2024-10-20', INTERVAL 5 DAY) AS DATE;

fOR TIME ---

SELECT TIMEDIFF('23:30:20', '12:30:20') AS TIME;  --Output = '11:00:00'