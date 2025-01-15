-- LIKE - keyword is used to search specific part in case of 
-- string as well as integers.

SELECT * FROM Account_holders WHERE dept LIKE "%LO%";

-- underscore means one _ is equal to one alphabet.

-- here it select 4 word length fname only
SELECT * FROM Account_holders WHERE fname LIKE "____";

--here give that records which starts with A
SELECT * FROM Account_holders WHERE fname LIKE "A%";