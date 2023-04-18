# 17 Apr
USE studentdb1;
#incr. the salary of ..
UPDATE faculty f JOIN coursefaculty cf
JOIN course c
ON f.facultyid = cf.facultyid
AND cf.courseid = c.courseid
AND c.cname = "Java"
SET f.salary = f.salary + (0.1*f.salary);

USE testcoursedb;

UPDATE employees e JOIN departments d
ON e.department_id = d.department_id
SET e.salary = e.salary + (0.1*e.salary)
WHERE d.department_name = "IT";