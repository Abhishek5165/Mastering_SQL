-- If we have not provide any value by default it is NULL,

CREATE TABLE Accounts (id INT PRIMARY KEY,name VARCHAR(20) NOT NULL,type VARCHAR(20) DEFAULT 'Savings');

----------------------------------------------------------------

INSERT INTO Accounts (id,name) VALUES 
(101,'Abhishek'),
(102,'Amit'),
(103,'Ankush','Current'),

-- Dublicates enteries not allowed , NOT NULL ....

INSERT INTO Accounts (id,name) VALUES (103,'Abinav');