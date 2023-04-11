create database studentdb1;
use studentdb1;

create table student(
stid int,
sname varchar(40),
email varchar(40),
phoneNo bigint,
courseid int,
feestatus varchar(20),
primary key (stid));

desc student;

select * from student;

#insert 

insert into student values
(1,"Rushikesh","rs@gmail.com",9988778890,101,"Paid");

insert into student (stid,sname,email,phoneNo)
values
(2,"Gaurav","gaurav@gmail.com",9119078001);

insert into student values
(3,"Vaibhav","vb@gmail.com",7788990089,102,"HalfPaid"),
(4,"Sahili","sh@gmail.com",8899789654,101,"UnPaid"),
(5,"Snehal","snehal@gmail.com",6788675687,102,"Paid");

select * from course;

INSERT INTO course VALUES 
(101, "Java", 70000),
(102, "Python", 80000),
(103,"JavaScript",75000); 
