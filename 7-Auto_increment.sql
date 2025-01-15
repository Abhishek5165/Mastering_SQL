CREATE TABLE Peoples(
acc_no INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
acc_type VARCHAR(50) NOT NULL DEFAULT 'Savings');


-- if we provide the auto increment then we can explicitly handle this by providing initial number then it starts its increment at that number.