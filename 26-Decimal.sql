CREATE TABLE decimals (id INT PRIMARY KEY AUTO_INCREMENT, Value DECIMAL NOT NULL);

INSERT INTO decimals (id,Value) VALUES (1,13.32);

SELECT * FROM decimals;

ALTER TABLE decimals MODIFY COLUMN Value DECIMAL(5,2);

INSERT INTO decimals (Value) VALUES (23.425),
(24.25),
(16.554),
(56.32);

-- Output 

id  Value
1	13.32
2	23.43
3	24.25
4	16.55
5	56.32

-- Error Code: 1264. Out of range value for column 'Value' at row 1	

INSERT INTO decimals (Value) VALUES (2363.42);
