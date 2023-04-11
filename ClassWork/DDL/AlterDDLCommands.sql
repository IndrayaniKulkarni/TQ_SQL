
# modify our table

alter table course
add column facultyid int;

select * from course;

alter table course
drop column facultyid;

alter table course
add column facultyid int
after duration;

alter table course
rename column duration to duration_months;
--  the CHANGE COLUMN clause is used to change the name, data type, or -- attributes of a specific column in a table
alter table course
change column duration_months duration int;

alter table course
rename to courses;

alter table courses
rename to course;

#Copy complete table

create table student_copy
(select * from student);

#only structure

create table faculty_copy like faculty;

# drop and truncate
# truncate : deletes only the data

truncate table student_copy;

create table student_copy1
(select * from student);

# drop: deletes the entire table along with structure
drop table student_copy1;

show tables;