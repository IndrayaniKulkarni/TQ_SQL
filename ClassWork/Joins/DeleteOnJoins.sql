# 17 Apr 2023
# Delete on join
use studentdb1;

DELETE s FROM student s
        JOIN
    course c ON s.courseid = c.courseid;

drop table student;

CREATE TABLE student (SELECT * FROM
    student_copy);

DELETE s FROM student s
        JOIN
    course c ON s.courseid = c.courseid
        AND c.cname = 'go';






