# 13 Apr., 2023
USE testcoursedb;

# write a query to find the employee id, name (last_name) along their 
# manager_id
SELECT e.employee_id, e.last_name, e.manager_id as manager_id, m.last_name as manager
FROM employees e JOIN employees m
ON e.manger_id = m.employee_id;

# self-join



# find the employees whose hire date is less than hire date of Jones
SELECT *
FROM employees e1
JOIN employees e2
WHERE e1.hire_date > e2.hire_date AND e2.last_name = "Jones";
 
# write a query to display the job histroy that were done by any employee who is currently drawing more than 10000 of salary
 
 SELECT jh.*, e.salary
FROM job_history jh JOIN employeee e
ON jh.employee_id = e.employee_id
AND e.salary > 10000;

# write a query to display the job title and average salary of employees
-- SELECT j.job_title
-- FROM jobs j
-- JOIN employee e
-- ON ;
# write a quey to dispaly the department id, department name and manager first name
SELECT d.department_id, d.department_name, e.first_name as manager
FROM departments d JOIN employee e
ON d.manager_id = e.employee_id;

 
 