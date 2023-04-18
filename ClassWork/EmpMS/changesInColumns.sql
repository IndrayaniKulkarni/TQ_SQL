# 14 Apr 
-- updation based on input
USE employeedb;

ALTER TABLE department
DROP COLUMN hod;
-- ALTER TABLE department
-- CHANGE COLUMN hod hod INT;
ALTER TABLE department
ADD COLUMN hod int;

ALTER TABLE department 
ADD CONSTRAINT FOREIGN KEY (hod) 
REFERENCES employee(eid);