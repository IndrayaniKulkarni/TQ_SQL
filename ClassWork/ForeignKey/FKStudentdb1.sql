# 11 Apr 2023
USE studentdb1;

DESC student;
ALTER TABLE student
ADD CONSTRAINT fk_course
FOREIGN KEY(courseid) REFERENCES course(courseid)
ON DELETE SET NULL;

CREATE TABLE coursefaculty(
cfid INT PRIMARY KEY,
courseid INT,
facultyid INT,
CONSTRAINT fk_course1 FOREIGN KEY (courseid) REFERENCES course(courseid),
CONSTRAINT fk_faculty FOREIGN KEY (facultyid) REFERENCES faculty(facultyid)
);
-- DESC faculty;
-- SELECTfaculty * 
-- FROM faculty;
DELETE FROM course
WHERE courseid = 104;