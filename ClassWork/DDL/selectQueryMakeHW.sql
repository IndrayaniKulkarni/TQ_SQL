#Homework given on 10th Apr 2023
USE employeedb;
#List all employees whose salary is greater than 50000.
SELECT * 
FROM  employee
WHERE salary > 50000;

#Show the department ID and name of all departments located in New York. (req. join)

#Display the names and salaries of all employees whose salary is between 30000 and 50000.
SELECT ename, salary
FROM employee
WHERE salary 
BETWEEN 30000 AND 50000;

#Show the names of all employees who joined the company after January 1, 2021.
SELECT * 
FROM employee
WHERE join_date >= '2021-01-01';
  
#List the names of all employees who work in the Sales department.
#Display the total salary paid to all employees.
#Show the average salary of employees in each department.
#Display the names and salaries of the top 5 highest-paid employees.
#List the names of all employees who have a salary greater than the average salary of their department.
#Show the total number of employees in each department.
#Display the names of all employees whose email ID is not null.
#List the names of all departments located in cities with a zip code greater than 50000.
#Show the names of all employees whose first name starts with the letter 'A'.
#Display the names and salaries of all employees whose department ID is either 1, 2 or 3.
#List the names of all employees who do not have a manager.