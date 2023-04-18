# 13 Apr., 2023

USE studentdb1;

# Show student whose faculty name id Raksha
SELECT * FROM student;
SELECT * FROM faculty;
SELECT * FROM coursefaculty;
SELECT s.*
FROM student s JOIN coursefaculty cf JOIN faculty f
ON s.courseid=cf.courseid AND cf.facultyid=f.facultyid AND f.fname = "Raksha";


# student details whose coursename is java
SELECT *
FROM student s 
JOIN course c
ON s.courseid = c.courseid AND c.coursename ="Java ";


# student details whose cours duration is 4 months
SELECT *
FROM student s 
JOIN course c
ON s.courseid = c.courseid AND duration_months = 4;

# show the course who faculty salary >60000
SELECT c.coursename ,f.fname, f.salary
FROM course c
JOIN coursefaculty cf
JOIN faculty f
ON  c.courseid = cf.courseid AND f.facultyid = cf.facultyid
AND f.salary > 60000; 

# self join
# show the names of have faculty whose salary > 
# than salary of shuruti
SELECT f.fname, f.salary
FROM faculty f
JOIN faculty f2
ON f.salary > f2.salary AND f2.fname = "Shuruti";

# Show the names whos exp > than jayashree
SELECT f.fname, f.salary
FROM faculty f
JOIN faculty f2
ON f.exp > f2.exp AND f2.fname = "Jayashree";

# show faculty whose salary > than avg
# better with subquery

# show faculty details whos teaching more than one course
SELECT f.*, cf.courseid, COUNT(courseid) as totcourse
FROM faculty f
JOIN coursefaculty cf
ON f.facultyid = cf.facultyid
GROUP BY facultyid
HAVING totcourse>1;
