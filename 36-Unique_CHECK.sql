CREATE TABLE contact_info (Id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(20) NOT NULL, Mobile VARCHAR(15) UNIQUE NOT NULL,CHECK (LENGTH(Mobile) >= 10));

DESC contact_info;

INSERT INTO contact_info VALUES (1,'Abhishek','8707814022');

INSERT INTO contact_info (name,Mobile) VALUES ('Aman','1234567890'),('Ankit','3456789021'),('Abhinav','0987654321'),('Abhigyan','2345678901');

SELECT * FROM contact_info;

-- Output - 

Id    name       Mobile
1	 Abhishek	8707814022
6	 Aman	    1234567890
7	 Ankit	    3456789021
8	 Abhinav	0987654321
9	 Abhigyan	2345678901
		

MI* -> INSERT INTO contact_info (name,Mobile) VALUES ('Aman','12345670')	
Error Code: 3819. Check constraint 'contact_info_chk_1' is violated.	

-- to remove this error and show some meaning full content use NAMED CONSTRAINT.

CREATE TABLE contact_info_temp (Id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(20) 
NOT NULL, Mobile VARCHAR(15)  NOT NULL UNIQUE CONSTRAINT mobile_no_less_than_10_digits CHECK (LENGTH(Mobile) >= 10));

-- here is the output ...

insert into contact_info_temp values (6,'bura','23456')	
Check constraint 'mobile_no_less_than_10_digits' is violated.
