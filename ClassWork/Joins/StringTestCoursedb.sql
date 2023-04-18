# 17 Apr.,2023
# string - testcourse db

USE testCoursedb;

SELECT * 
FROM employees;

# ADD @gmail.com to all emails

UPDATE employees
set email = CONCAT(email,"@gmail.com");

ALTER TABLE employees
ADD COLUMN gender CHAR(1)
AFTER last_name;

-- ALTER TABLE employees
-- CHANGE COLUMN gender CHAR(1)
-- AFTER last_name;

ALTER TABLE employees
DROP COLUMN gender;

# add title acc to gender
SELECT IF( gender LIKE "M",
CONCAT("MR.",first_name), CONCAT("MRS",first_name)) as firstName
FROM employees;

# TITLE CASE 
-- SELECT CONCAT(UPPER(SUBSTR(first_name,1,1),LOWER(SUBSTR(first_name,2,LENGTH(first_name)))) as title
-- FROM employees;

SELECT CONCAT(UPPER (SUBSTR(first_name,1,1)),
              LOWER (SUBSTR(first_name,2,LENGTH(first_name))))
              as titleName
     FROM employees;         

USE studentdb1;

SELECT * FROM faculty;

ALTER TABLE faculty
ADD COLUMN lname VARCHAR(100)
AFTER fname;

# replace
UPDATE faculty 
SET lname = replace(lname,"Gupta","Aggrawal");

# print all emp working in their dept
USE testCoursedb;

# group concat
SELECT department_id, GROUP_CONCAT(first_name) as empName
FROM employees
GROUP BY department_id;

# group emp id of dept id
SELECT department_id, GROUP_CONCAT(employee_id) as empid
FROM employees
GROUP BY  department_id;

# String compare - strcmp
SELECT STRCMP("a","b"); -- if 1st value > 2nd then returns negative value
SELECT STRCMP("Java","Python");
SELECT STRCMP("Java","Java"); -- equal string hence returns 0
SELECT STRCMP("Python","Java");

# find in set

SELECT FIND_IN_SET('Java', 'Java,HTML,Python');

SELECT FIND_IN_SET('html', 'Java,HTML,Python');

SELECT FIND_IN_SET('Go', 'Java,HTML,Python');
