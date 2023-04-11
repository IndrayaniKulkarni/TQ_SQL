#Table: Student
#Attributes: student_id, student_name, course_id, joining_date, fees_paid
#Table: Course
#Attributes: course_id, course_name, duration_months, fees
#Table: Faculty
#Attributes: faculty_id, faculty_name, email_id, salary, experience
USE studentdb1;
DESC student;
DESC course;
ALTER TABLE course 
ADD COLUMN duration_months INT;

CREATE TABLE faculty(
faculty_id INT PRIMARY KEY,
faculty_name VARCHAR(70), 
email_id VARCHAR(80), 
salary FLOAT, 
exp INT 
);
DESC faculty;
INSERT INTO faculty (faculty_id, faculty_name, email_id, salary, exp) 
VALUES 
(1, 'John Doe', 'john.doe@example.com', 50000, 5),
(2, 'Jane Smith', 'jane.smith@example.com', 60000, 8),
(3, 'Bob Johnson', 'bob.johnson@example.com', 70000, 10),
(4, 'Alice Brown', 'alice.brown@example.com', 55000, 7),
(5, 'Mike Davis', 'mike.davis@example.com', 65000, 9);

INSERT INTO course (courseid, coursename, coursefees, duration_months) 
VALUES (1, 'Mathematics', 5000, 6),
       (2, 'English', 4500, 5),
       (3, 'Science', 6000, 7),
       (4, 'History', 4000, 4);
       
SELECT * FROM student;       
# Q1. Show all the student whose course id is either 103,102;
# Q2. Show student name whose name starts with s
# Q3. Show all the faculty whose email id is not null
# Q4. Show the number of student in each course
# Q5. Show the numbers of courses according to duration
# Q6. Increase the fees of all courses by 10%
# Q7. Increase the salary of faculty by 20% whose experience is greater than 5 years
# Q8. Delete the course communication
# Q9. Delete the students who has not paid the fees
# Q10.Show the faculty in desc order of salary 
# Q11. Show the student in asc order of course id and if the course is same then desc order of joining date
# q12. Show the total student in each course in asc order
# q13. Add the column joining date in faculty
# q14. Change the column to exp of experience