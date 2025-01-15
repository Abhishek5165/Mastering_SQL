-- View is a virtual table which is used to overcome the handyness;

CREATE VIEW inst_info AS 
SELECT Student_Name,Course_Name,fee FROM Students 
JOIN Student_course ON Student_course.Student_id=Students.id
JOIN courses ON Student_course.Course_id=courses.id;

select * from inst_info;

--------------- Output ------------------------

Student_Name    Course_Name   fee 
   Raju	           PD	      3000
   Raju	          Java	      5000
   Raju	          Linux	      10000
   Sham	          Linux	      10000
   Sham	          Java	      5000
   Paul	          Python	  4000
   Alex	          SQL	      6000


-- Now we can perform the operations just like normal tables 

DROP VIEW inst_info;