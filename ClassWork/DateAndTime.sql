# 17 Apr., 2023

# Ways to get current date
SELECT CURDATE(); # yyyy-MM-dd
SELECT NOW(); # yyyy-MM-DD hh:mm:ss

# adddate
SELECT ADDDATE(CURDATE(), INTERVAL 10 DAY); # yyyy-MM-dd

SELECT ADDDATE(CURDATE(), INTERVAL 1 MONTH); # yyyy-MM-dd 
# basically currDate + interval

# SELECT MONTH FROM DATE;

SELECT MONTH(CURDATE()); # MONTH NUMBER
SELECT MONTHNAME(CURDATE()); #MONTH IN WORDS

SELECT DAYOFMONTH(CURDATE()); # DATE 
SELECT DAYNAME(CURDATE()); # DAY -MONDAY..
SELECT DAYOFWEEK(CURDATE()); # NO. OF DAY IN WEEK
SELECT DAYOFYEAR(CURDATE()); # LIKE 107

# TIME
SELECT HOUR(NOW()); # COMPLETE HOURS TILL NOW WITH 24 HOURS IN CONSIDERATION

SELECT TIME(ADDTIME(NOW(), "1:00:00")); # CURRENT HOURS + 1HOUR

SELECT CURRENT_TIME();

# SUBTRACT DATE
SELECT SUBDATE(CURDATE(), INTERVAL 1 MONTH); # REDUCE NO. OF INTERVAL FROM CURRENT DATE

SELECT DATE_SUB(CURDATE(), INTERVAL 1 MONTH); # works similar to above function

# date diff - returns the number of days
SELECT DATEDIFF(CURDATE(), "2023-03-21"); 

# 
USE testcoursedb;

# show the first_name, id and experience of the employee in the company
SELECT * FROM employees;

SELECT employee_id, first_name,
DATEDIFF(CURDATE(),HIRE_DATE)/365 AS experience
FROM employees;

# date format 
SELECT DATE_FORMAT(CURDATE(), "%d-%m-%y"); # 17-04-23

SELECT DATE_FORMAT(CURDATE(), "%d-%M-%y"); # 17-April-23

SELECT DATE_FORMAT(CURDATE(), "%D-%M-%Y");# 17th-April-2023

SELECT DATE_FORMAT(CURDATE(), "%W-%D-%M-%Y"); # Monday-17th-April-2023
