-- If we try to insert another any format it will not affect the anything it means 
-- it cannot change the default format ..

CREATE TABLE date_time_format (JD DATE, JT TIME,JD_JT DATETIME); 

INSERT INTO date_time_format VALUES ('2024-11-17','20:04:42','2024-11-17 20:04:42'),
('2024-11-16','21:04:24','2024-11-16 21:04:24'),
('2024-11-15','22:04:53','2024-11-15 22:04:53'),
('2024-11-14','23:04:23','2024-11-14 23:04:23'),
('2024-11-13','00:04:43','2024-11-13 00:04:43');

SELECT * FROM date_time_format;