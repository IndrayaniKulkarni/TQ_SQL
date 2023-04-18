#  working on 14 apr 
# recording of 7th apr

USE studentdb1;

SELECT * 
FROM  course;

SELECT coursename, coursefees
FROM course;

# show the student detail of 101 id
SELECT * 
FROM course
WHERE courseid = 101;

# show the details of student whos feestatus is no paid
SELECT * 
FROM student
WHERE feestatus = "UnPaid";

INSERT INTO student (stid, sname, email, phoneNo)VALUES 
(11,"Rina","rina@gmail.com",12341235);

# show students whose course is
#  null 
SELECT * FROM student
WHERE courseid IS NULL;

# not null
SELECT * FROM student
WHERE courseid IS NOT NULL;

# student feestatus is either unpaid or halfpaid
SELECT * FROM student
WHERE feestatus = "UnPaid" 
OR feestatus = "HalfPaid";

# show student who had no paid course of 102
SELECT * FROM student
WHERE (feestatus = "UnPaid" 
OR feestatus = "HalfPaid")
AND courseid = 102;

 # in clause - multiple rows who meets certain constrian 
 
SELECT * FROM student
WHERE feestatus IN
( "UnPaid", "HalfPaid")
AND courseid = 102;

# not in 
SELECT * FROM student
WHERE NOT feestatus IN
( "UnPaid", "HalfPaid")
AND courseid = 102;
