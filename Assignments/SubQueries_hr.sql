-- MySQL SUBQUERY
-- 1. Write a query to find the names (first_name, last_name) and the salaries of 
-- the employees who have a higher salary than the employee whose 
-- last_name='Bull'.
SELECT first_name, last_name, salary
FROM employees 
WHERE salary > (SELECT salary 
				FROM employees
                WHERE last_name = "Bull")
ORDER BY salary DESC;
           
-- SELECT first_name, last_name, salary
-- FROM employees 
-- WHERE last_name = "Bull";   
             
-- 2. Write a query to find the names (first_name, last_name) of all employees 
-- who works in the IT department.
SELECT first_name, last_name, salary
FROM employees 
WHERE department_id = (SELECT department_id
						FROM departments
                        WHERE department_name = "IT");
                        
-- 3. Write a query to find the names (first_name, last_name) of the employees who 
-- have a manager and work for a department based in the United States.
SELECT first_name, last_name, employee_id, manager_id
FROM employees 
WHERE manager_id IN (
    SELECT employee_id
    FROM employees
    WHERE manager_id IS NOT NULL
) AND manager_id IN (SELECT manager_id
					FROM departments 
                    WHERE location_id IN (SELECT location_id 
                                          FROM locations
                                           WHERE country_id IN (SELECT country_id 
                                                                  FROM countries
                                                                  WHERE country_name = "United States of America")));

-- Hint : Write single-row and multiple-row subqueries
-- 3. Write a query to find the names (first_name, last_name) of the employees 
-- who are managers.
SELECT first_name, last_name, employee_id, manager_id
FROM employees 
WHERE EMPLOYEE_ID IN (SELECT DISTINCT manager_id FROM employees);

-- 4. Write a query to find the names (first_name, last_name), the salary of the 
-- employees whose salary is greater than the average salary.
SELECT first_name, last_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary)
				FROM employees);
                
-- 5. Write a query to find the names (first_name, last_name), the salary of the 
-- employees whose salary is equal to the minimum salary for their job 
-- grade.
SELECT first_name, last_name, salary
FROM employees
WHERE salary IN (SELECT MIN(salary)
				FROM employees
                GROUP BY job_id);
               
-- 6. Write a query to find the names (first_name, last_name), the salary of the 
-- employees who earn more than the average salary and who works in any 
-- of the IT departments.
SELECT first_name, last_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary)
                FROM employees
                WHERE department_id IN (SELECT department_id
                                         FROM departments
                                         WHERE department_name = 'IT'));

-- 7. Write a query to find the names (first_name, last_name), the salary of the 
-- employees who earn more than Mr. Bell.
SELECT first_name, last_name, salary
FROM employees
WHERE salary > (SELECT salary
                FROM employees
                WHERE last_name = 'Bell');

-- 8. Write a query to find the names (first_name, last_name), the salary of the 
-- employees who earn the same salary as the minimum salary for all 
-- departments.
SELECT first_name, last_name, salary
FROM employees
WHERE salary = (SELECT MIN(salary)
                FROM employees);

-- 9. Write a query to find the names (first_name, last_name), the salary of the 
-- employees whose salary greater than the average salary of all 
-- departments.
SELECT first_name, last_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary)
                FROM employees);


-- 10. Write a query to find the names (first_name, last_name) and salary 
-- of the employees who earn a salary that is higher than the salary of all the 
-- Shipping Clerk (JOB_ID = 'SH_CLERK'). Sort the results of the salary of 
-- the lowest to highest.
SELECT first_name, last_name, salary
FROM employees
WHERE salary > (SELECT MAX(salary)
                FROM employees
                WHERE job_id = 'SH_CLERK')
ORDER BY salary ASC;


-- 11. Write a query to find the names (first_name, last_name) of the 
-- employees who are not supervisors.
SELECT first_name, last_name
FROM employees
WHERE employee_id NOT IN (SELECT DISTINCT manager_id
                          FROM employees);

-- 12. Write a query to display the employee ID, first name, last names, 
-- and department names of all employees.
SELECT e.employee_id, e.first_name, e.last_name, d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

-- 13. Write a query to display the employee ID, first name, last names, 
-- salary of all employees whose salary is above average for their 
-- departments.
SELECT e.employee_id, e.first_name, e.last_name, e.salary
FROM employees e
JOIN (SELECT department_id, AVG(salary) AS avg_salary
      FROM employees
      GROUP BY department_id) d
ON e.department_id = d.department_id
WHERE e.salary > d.avg_salary;

-- 14. Write a query to fetch even numbered records from employees 
-- table.
SELECT *
FROM employees
WHERE MOD(employee_id, 2) = 0;

-- 15. Write a query to find the 5th maximum salary in the employees 
-- table.
SELECT DISTINCT salary
FROM employees e1
WHERE 5 = (SELECT COUNT(DISTINCT e2.salary)
           FROM employees e2
           WHERE e2.salary >= e1.salary);

-- 16. Write a query to find the 4th minimum salary in the employees table.
-- 17. Write a query to select last 10 records from a table.
-- 18. Write a query to list department number, name for all the 
-- departments in which there are no employees in the department.
-- 19. Write a query to get 3 maximum salaries.
-- 20. Write a query to get 3 minimum salaries.
-- 21. Write a query to get nth max salaries of employees.
-- 22. Write a query to get nth max salaries of employees.
