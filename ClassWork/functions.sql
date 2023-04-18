# 18 Apr 2023
# function
/*
CREATE DEFINER=`root`@`localhost` FUNCTION `maxOfNum`(num1 INT, num2 INT) RETURNS int
    DETERMINISTIC
BEGIN
	IF (num1 > num2)
		THEN RETURN num1;
    ELSE 
		RETURN num2;
    END IF;    
RETURN 1;
END */
SELECT maxOfNum(90,87);
/*
CREATE DEFINER=`root`@`localhost` FUNCTION `powerOfNumber`(base INT, pow INT) RETURNS int
    DETERMINISTIC
BEGIN

SET @ans = 1;
WHILE (pow >=1)
 DO 
   SET @ans = @ans * base;
   SET pow = pow -1;
END WHILE;
RETURN @ans;   

RETURN 1;
END*/
SELECT powerOfNumber(9,3);

/*
USE `testcoursedb`;
DROP function IF EXISTS `addTwoNum`;

DELIMITER $$
USE `testcoursedb`$$
CREATE FUNCTION addTwoNum (num1 INT, num2 INT)
RETURNS INTEGER DETERMINISTIC
BEGIN
 DECLARE ans INT ;
 SET ans = num1 + num2;
RETURN ans;
END$$

DELIMITER ;
*/
SELECT addTwoNum(100,20);

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `calc_exp`(hiredate DATE) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE exp INT;
SET exp = FLOOR(DATEDIFF(CURDATE(),hiredate)/365);
RETURN exp;
END*/
select first_name, hire_date, calc_exp(hire_date)
from employees;


/*
CREATE DEFINER=`root`@`localhost` FUNCTION `calTotalSalDeptId`(deptId INT) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE totSal INT;
SELECT SUM(salary) INTO totSal
FROM employees
GROUP BY department_id
HAVING department_id = deptId;

RETURN totSal;
END
*/
SELECT SUM(salary) 
FROM employees
GROUP BY department_id
HAVING department_id = 10;
SELECT calTotalSalDeptId(10);

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `calAvgSalaryDeptName`(deptName VARCHAR(80)) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE avgSal INT;
SELECT AVG(e.salary) INTO avgSal
FROM employees e 
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING d.department_name = deptName;

RETURN avgSal;
END*/
SELECT AVG(e.salary)
FROM employees e 
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING d.department_name = "IT";
SELECT calAvgSalaryDeptName("IT");

-- need to from here 

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `experience`(hiredate date) RETURNS int
    DETERMINISTIC
BEGIN

RETURN (year(curdate())-year(hiredate));
END
*/


select first_name, hire_date, experience(hire_date)
from employees;

select * from employees;

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `votecheck`(birthdate date) RETURNS char(1) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
 set @age= year(curdate())-year(birthdate);
 if(@age>=18)
 then return 'Y';
 else
 return 'N';
 end if;

END
*/
select empid, ename, votecheck(birth_date) as 'VoteEligibility'
from employee;

select sum(salary)
from employees 
group by department_id
having department_id=90 ;

/*