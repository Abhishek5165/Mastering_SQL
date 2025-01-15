-- Float takes upto 7 precisions values while double can take upto 15 values;

-- float takes 4 bytes for memory ..
-- double takes 8 bytes for memory ..

CREATE TABLE FDDatatype (id INT PRIMARY KEY AUTO_INCREMENT, F FLOAT NOT NULL, D DOUBLE NOT NULL);

SELECT * FROM FDDatatype;

INSERT INTO FDDatatype (id,F,D) VALUES (1,123.126,123.126);

INSERT INTO FDDatatype (F,D) VALUES (12.1234567,12.1234567);