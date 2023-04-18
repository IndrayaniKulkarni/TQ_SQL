# 18th Apr 2023
# Nth highest and lowest queries

SELECT DISTINCT(salary)
FROM employees; -- gives distinct salary list

# 3 highest salary 
SELECT DISTINCT(salary)
FROM employees
ORDER BY salary DESC -- print highest to lowest
LIMIT 3; -- we need only 3 highest salary - hence limit rows

# 3rd highest salary
-- inner query returns 3 rows of highest salary
-- outer takes 3rd i.e last row or i.e to say leaset among 3 salaries
SELECT MIN(salary)
FROM (SELECT DISTINCT(salary)
FROM employees
ORDER BY salary DESC 
LIMIT 3) AS thirdHighest; 

# 4 lowest salaries
SELECT DISTINCT(salary)
FROM employees
ORDER BY salary ASC
LIMIT 4;

# 4th lowest 
SELECT MAX(salary)
FROM (SELECT DISTINCT(salary)
FROM employees
ORDER BY salary ASC
LIMIT 4) as fourthLowest; 

# 3rd highest - ANOTHER WAY
SELECT DISTINCT(salary)
FROM employees
ORDER BY salary DESC 
LIMIT 2,1; # SKIP ROWS TILL 2ND AND THEN PRINT THE 3RD ROW

#4th lowest 
SELECT DISTINCT(salary)
FROM employees
ORDER BY salary ASC
LIMIT 3,1; # skip 3 rows and print 1 row after it

# 3rd highest 
SELECT DISTINCT(salary)
FROM employees e1
WHERE 3 = (SELECT COUNT(DISTINCT(salary))
			FROM employees e2
            WHERE e1.salary <= e2.salary);

# 4th lowest
SELECT DISTINCT(salary)
FROM employees e1
WHERE 4 = (SELECT COUNT(DISTINCT(salary))
			FROM employees e2
            WHERE e1.salary >= e2.salary);