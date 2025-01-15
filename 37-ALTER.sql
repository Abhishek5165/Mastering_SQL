1. Add Column -

ALTER TABLE contact_info ADD COLUMN city VARCHAR(20);

2. Rename - 

ALTER TABLE contact_info RENAME COLUMN city TO City;

3. - ALTER TABLE contact_info MODIFY City VARCHAR(15) DEFAULT 'Unknown'; 
INSERT INTO contact_info (name,Mobile) VALUES ('Mahima','1234567898');

-- Output -

1	Abhishek	 8707814022	Lucknow
6	Aman	     1234567890	
7	Ankit	     3456789021	
8	Abhinav      0987654321	
9	Abhigyan	 2345678901	
19	Mahima	     1234567898	Unknown

-- change two or more query at the same time using change..

4. ALTER TABLE contact_info CHANGE name NAME VARCHAR(10) NOT NULL;


5. Drop Column - 

ALTER TABLE contact_info DROP City;