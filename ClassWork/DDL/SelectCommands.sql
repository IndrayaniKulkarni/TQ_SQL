#10 Apr 2023
# Select commands
use studentdb1;
SELECT * FROM student;

# add the column the joining date
ALTER TABLE student
ADD COLUMN joining_date date;

SELECT * FROM student
ORDER BY joining_date DESC;

# increasing order of joinind date

# between
SELECT * FROM faculty
WHERE salary NOT BETWEEN 30000 AND 50000;

# limit
#show the three highest salary
SELECT * FROM faculty
ORDER BY salary DESC;

SELECT * FROM faculty
ORDER BY salary DESC LIMIT 3;

# like 
SELECT * FROM student
WHERE sname LIKE 's%'; -- name starting with 's'

# word ending with 'i'
SELECT * FROM student
WHERE sname LIKE '%i';

# select with s and has 7 characters
SELECT * FROM student
WHERE sname LIKE 's______%';

SELECT * FROM student
WHERE sname LIKE 'v%v'; -- start and end of word given



# show the students in ascending order of course and if the course is same then descending order of joining date

select * from student
order by courseid asc, joining_date desc;

# show the student in course 103 and 104
select * from student 
where courseid in(103,104);

select * from student
where courseid=103 or courseid=104;

select * from student 
where courseid not in(103,104);

# between 

select * from faculty;

select fname 
from faculty
where salary between 30000 and 50000;

select fname 
from faculty
where salary not between 30000 and 50000;

#limit

select * from faculty
order by salary desc;

# show the three highest salaries
select * from faculty
order by salary desc limit 3;


#aggregate function : sum,count, min, max, avg

select count(*)
from student 
where courseid=103;

# Alias
select count(*) as TotalStudent
from student 
where courseid=103;

select sum(salary) as TotalSalary
from faculty;

select avg(salary) as AverageSalary
from faculty;

select max(salary) as MaxSalary
from faculty;

select min(salary) as MinimumSalary
from faculty;

select sum(salary) as TotalSalary
from faculty
where exp>10;
















