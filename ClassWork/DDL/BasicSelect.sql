
select * from course;

select cname, fees
from course;

# show the details 101 courseid
select * 
from course
where courseid=101;

select * from student;

# show the details of student who have not paid the fees
select * from student 
where feestatus="unpaid";

# show the student whose course is null

select * from student 
where courseid is null;

select * from student
where courseid is not null;

# and or

select * from student
where feestatus="HalfPaid" or feestatus="Unpaid";


# show the student who have not paid fees of course 102
select * from student
where (feestatus="HalfPaid" or feestatus="Unpaid") and courseid =102;

# in 

select * from student
where courseid in(103,104);

select * from student
where feestatus in("HalfPaid","Unpaid");

select * from student
where feestatus in("HalfPaid","Unpaid") and courseid=102;

select * from student
where not feestatus in("HalfPaid","Unpaid");





