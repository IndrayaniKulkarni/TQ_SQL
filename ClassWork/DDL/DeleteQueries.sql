select * from student;

delete from student
where stid=8;

drop table student_copy;

create table student_copy
(select * from student);

select * from student_copy;

# delete student from course 103 whose fees in unpaid

delete from student_copy
where courseid=103 and feestatus="UnPaid";

