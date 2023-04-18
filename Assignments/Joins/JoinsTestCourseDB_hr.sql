-- MySQL Joins ASSIGNMENT
USE testcoursedb;
SHOW TABLES;

-- Write a query to find the addresses (location_id, street_address, city, 
-- state_province, country_name) of all the departments.
SELECT l.location_id, l.street_address, l.city, l.state_province, c.country_name
FROM departments d
JOIN locations l
ON d.location_id = l.location_id
JOIN countries c
ON l.country_id = c.country_id
GROUP BY d.department_id;

-- 2. Write a query to find the names (first_name, last name), department ID 
-- and name of all the employees.
SELECT e.first_name, e.last_name, e.department_id, d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

-- 3. Find the names (first_name, last_name), job, department number, and 
-- department name of the employees who work in London.
SELECT e.first_name, e.last_name, e.job_id, e.department_id, d.department_name, l.city
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
JOIN locations l
ON d.location_id = l.location_id 
AND l.city = "London";

-- 4. Write a query to find the employee id, name (last_name) along with their 
-- manager_id, manager name (last_name).
SELECT e1.employee_id, e1.last_name, e2.employee_id AS manager_id , e2.last_name AS manager_name
FROM employees e1 
JOIN employees e2
ON e1.MANAGER_ID = e2.EMPLOYEE_ID;

-- 5. Find the names (first_name, last_name) and hire date of the employees 
-- who were hired after 'Jones'.
SELECT e1.first_name, e1.last_name, e1.hire_date
FROM employees e1
JOIN employees e2
ON e1.hire_date > e2.hire_date
AND e2.last_name LIKE "Jones";

-- 6. Write a query to get the department name and number of employees in the 
-- department.
SELECT d.department_name, COUNT(e.employee_id)
FROM employees e
JOIN departments d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
GROUP BY e.department_id;

-- 7. Find the employee ID, job title, number of days between ending date and 
-- starting date for all jobs in department 90 from job history.
SELECT e.employee_id, j.job_title, DATEDIFF(jh.end_date, jh.start_date) AS numDays
FROM employees e
JOIN jobs j
ON e.JOB_ID = j.JOB_ID
JOIN job_history jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
AND e.DEPARTMENT_ID = 90;

-- 8. Write a query to display the department ID, department name and 
-- manager first name.
SELECT d.department_id, d.department_name, e.first_name AS manager_name
FROM departments d
JOIN employees e
ON d.manager_id = e.employee_id;

-- 9. Write a query to display the department name, manager name, and city.
SELECT d.department_name, CONCAT(e.first_name," ",E.last_name) AS manager_name, l.city
FROM employees e
JOIN departments d
ON d.manager_id = e.employee_id
JOIN locations l
ON d.LOCATION_ID = l.LOCATION_ID;

-- 10. Write a query to display the job title and average salary of 
-- employees.
SELECT j.job_title, AVG(e.salary) AS avgSalary
FROM employees e
JOIN jobs j
ON e.JOB_ID = j.JOB_ID
GROUP BY j.job_id;

-- 11. Display job title, employee name, and the difference between salary 
-- of the employee and minimum salary for the job.
SELECT j.job_title, CONCAT(e.first_name," ",E.last_name) AS emp_name,
ABS(e.salary - j.min_salary) AS diffSal
FROM employees e
JOIN jobs j
ON e.job_id = j.job_id;

-- 12. Write a query to display the job history that were done by any 
-- employee who is currently drawing more than 10000 of salary
SELECT e.employee_id, CONCAT(e.first_name," ",E.last_name) AS emp_name, j.*
FROM employees e
JOIN job_history j
ON e.job_id = j.job_id
AND e.salary > 10000;

-- 13. Write a query to display department name, name (first_name, 
-- last_name), hire date, salary of the manager for all managers whose 
-- experience is more than 15 years.
SELECT d.department_name, e.first_name, e.last_name, e.hire_date, e.salary,
 (DATEDIFF(CURDATE(), hire_date)/365) as experience 
FROM employees e
JOIN departments d
ON e.EMPLOYEE_ID = d.MANAGER_ID
AND (DATEDIFF(CURDATE(), hire_date)/365) > 15;