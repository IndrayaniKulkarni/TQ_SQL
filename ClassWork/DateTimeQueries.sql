# 17 Apr 2023

# write a query to display first day of month

SELECT SUBDATE(ADDDATE(CURDATE(), INTERVAL 1 DAY), INTERVAL DAY(CURDATE()) day);

SELECT DAY(CURDATE());
SELECT ADDDATE(CURDATE(), INTERVAL 1 DAY);

#  WRITE a query last day of the month
SELECT SUBDATE( ADDDATE(CURDATE(), INTERVAL 1 MONTH), INTERVAL DAY(CURDATE()) DAY);

SELECT SUBDATE( ADDDATE("2024-02-13", INTERVAL 1 MONTH), INTERVAL DAY("2024-02-13") DAY);

# makedate(year, day of year)
SELECT EXTRACT(YEAR FROM CURDATE());
SELECT MAKEDATE(EXTRACT(YEAR FROM CURDATE()),1);

# FROM DAYS - MAKE FROM NUMBER OF DAYS

SELECT from_days(780005);


#Write a query to display first day of the month

select subdate(adddate(curdate() ,interval 1 day), interval day(curdate()) day);

select day(curdate());
select adddate(curdate() ,interval 1 day);

#Write a query to display last day of the month

select subdate(adddate(curdate() ,interval 1 month), interval day(curdate()) day);

select subdate(adddate("2024-02-13",interval 1 month), interval day("2024-02-13") day);

#Write a query to get the first day of the current year.

#makeDate(year, day of year)

select extract(year from curdate());

select makedate(extract(year from curdate()),1);

#fromDays : Make date from number of days

select from_days(729910);

#Calculate age form birthdate

use payroll;

select ename, birth_date, datediff(curdate(),birth_date)/365  as Age
from employee;

select ename, birth_date, floor(datediff(curdate(),birth_date)/365)   as Age
from employee;

select ename, birth_date, date_format(from_days(datediff(curdate(),birth_date)),"%y")  as Age
from employee;


#Show the employee names who have been hired in june

select first_name, last_name
from employees
where month(hire_date)=6;

select first_name, last_name
from employees
where monthname(hire_date)="June";

#Write a query to get the years in which more than 2 employees joined.

select count(employee_id),date_format(hire_date,"%y") as HireYear
from employees
group by HireYear
having count(EMPLOYEE_ID)>2;

#Write a query to get first name of employees who joined in 1990.

select first_name
from employees
where year(hire_date)=1990;


#Write a query to get department name, manager name, and salary of the manager for all managers whose experience is more than 35 years.

select e.FIRST_NAME, e.SALARY, d.DEPARTMENT_NAME,(datediff(curdate(),e.hire_date)/365)
from employees e join departments d
on d.MANAGER_ID=e.EMPLOYEE_ID and (datediff(curdate(),e.hire_date)/365)>30;


 #Write a query to get employee ID, last name, and date of first salary of the employees.
 
 select EMPLOYEE_ID, last_name, last_day(hire_date) as FirstSalaryDate
 from employees;
 
  #Write a query to get first name, hire date and experience of the employees.

select first_name,hire_date,datediff(curdate(),hire_date)/365 'Experience'
  from employees;

