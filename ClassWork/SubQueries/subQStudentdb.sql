USE studentdb1;

SELECT *
FROM student;
SELECT * 
FROM course;

# Show the names and feestatus of student in course java
SELECT sname
FROM student
WHERE courseid = (SELECT courseid
					FROM course
                    WHERE coursename = "Java");
                    
# Show the names and feestatus of student in course .net and halfpaid
SELECT sname, feestatus
FROM student
WHERE feestatus LIKE "HalfPaid" && courseid = (SELECT courseid
											   FROM course
                                               WHERE coursename = ".net");

# Show student whose faculty name is raksha.
 SELECT * FROM faculty;
-- SELECT * FROM coursefaculty;
SELECT * 
FROM student
WHERE courseid IN (SELECT courseid
					FROM coursefaculty
                    WHERE facultyid = (SELECT facultyid
										FROM faculty
                                        WHERE fname LIKE "Raksha"));
# student details whose coursename is python
SELECT * 
FROM student
WHERE courseid = (SELECT courseid
					FROM course
                    WHERE coursename LIKE "Python");

# student details whose course duration is 4 
SELECT *
FROM student
WHERE courseid IN (SELECT courseid
					FROM course
                    WHERE duration_months LIKE 4);
                    
# Show the course who faculty salary is greater than 60000
SELECT *
FROM course
WHERE courseid IN (SELECT courseid
					FROM coursefaculty
                    WHERE facultyid IN (SELECT facultyid 
										FROM faculty
                                        WHERE salary>60000));
                                        
# show the course where number of student enrolled is greater than 3

SELECT 
    courseid, COUNT(*) AS tot_student
FROM
    student
GROUP BY courseid
HAVING tot_student >= 3;

#  exists clause
SELECT * FROM course
WHERE EXISTS(
SELECT 
    courseid, COUNT(*) AS tot_student
FROM
    student
    WHERE course.courseid = student.st.id --imp
GROUP BY courseid
HAVING tot_student >= 3);
# show the names of have faculty whose salary is greater than than salary of Shuruti 
-- Co-related subquery
SELECT fname, salary
FROM faculty
WHERE salary > (SELECT salary
					FROM faculty
                    WHERE fname LIKE "Shuruti");

# Show the names whose experience is greater than jayshree 
 
# show facutly name whose salary is greater than average salary
SELECT fname, salary
FROM faculty
WHERE salary > (SELECT AVG(salary)
                FROM faculty);
 
# we cannot self-relate using subquery 
# update the salary of faculty whose salary is greate than average salary
UPDATE faculty 
SET salary = salary + 1000 
WHERE salary > (SELECT AVG(salary) FROM faculty);

                    
# update the salary of faculty whose are teaching more than one course     
SELECT 
    courseid, COUNT(*) AS tot_student
FROM
    student
GROUP BY courseid
HAVING tot_student >1;

UPDATE faculty 
SET salary = salary + 1000 
WHERE EXISTS(SELECT 
    facultyid, COUNT(*) AS tot_course
FROM
    coursefaculty
    WHERE faculty.facultyid = coursefaculty.facultyid
GROUP BY courseid
HAVING tot_course >1);


# show the faculty details who are teaching more than one course
SELECT *
FROM faculty
WHERE EXISTs (SELECT COUNT(facultyid), COUNT(*) AS TOT_COURSE
               FROM coursefaculty
              WHERE  faculty.facultyid = coursefaculty.facultyid
              GROUP BY facultyid
			  HAVING tot_course>1);
              
   /*
   
use studentdb1;
select * from student;

# Show the names and feestatus of student in course java
select sname, feestatus
from student
where courseid=(select courseid
                 from course
                 where cname="java");
                 
                 
# Show the names and feestatus of student in course .net and halfpaid

select sname, feestatus
from student
where courseid=(select courseid
                 from course
                 where cname=".net") and feestatus='HalfPaid';
                 
             
# Show student whose faculty name is raksha

select * 
from student
where courseid in (select courseid
                from coursefaculty
                where facultyid=(select facultyid
                                 from faculty
                                 where fname="Raksha"));


 # student details whose coursename is python
 select * from student
 where courseid=(select courseid
                from course 
                where cname="python");
 
 # student details whose course duration is 4 
 
 select * from student
 where courseid in (select courseid
                   from course
                   where duration=4);
 
# Show the course who faculty salary is greater than 60000
select cname
from course
where courseid in (select courseid
                   from coursefaculty
                   where facultyid in( select facultyid
                                        from faculty
                                        where salary> 60000));
  # show the course where number of student enrolled is greater than 3
  
  select courseid, count(*) as TotalStudent
  from student
  group by courseid
   having TotalStudent>=3;
   
   # Exists
   select * from course
  where exists(  select courseid, count(*) as TotalStudent
                 from student
                 where course.courseid= student.courseid
                 group by courseid
                  having TotalStudent>=3);
   
   
  
  # show the names of have faculty whose salary is greater than than salary of Shuruti 
  select fname
  from faculty 
  where salary > (select salary
                      from faculty
                      where fname="Shuruti");
                     
  
   # Show the names whose experience is greater than jayshree  
   select fname
   from faculty
   where experience>(select experience
                     from faculty
                     where fname="Jayshree");
                     
   
   
   # # show facutly name whose salary is greater than average salary  
   
   select avg(salary)
   from faculty;
   
   select fname
   from faculty
   where salary>( select avg(salary)
                  from faculty
                   );
   
   # we cannot self related using subquery
    # update the salary of faculty whose salary is greate than average salary
    update faculty
    set salary= salary+1000
    where salary>(select avg(salary)
                   from faculty 
                   );
    
    
     # update the salary of faculty whose are teaching more than one course  
     
      select facultyid, count(*) as totalcourse
      from coursefaculty
       group by facultyId
     having totalcourse >1;
     
     update faculty
      set salary= salary+1000
      where exists(select facultyid, count(*) as totalcourse
                     from coursefaculty
                     where faculty.facultyid= coursefaculty.facultyid
                     group by facultyId
					having totalcourse >1);
                  
     
     
     # show the faculty details who are teaching more than one course
     
     select *
     from faculty
     where  exists (select facultyid, count(*) as totalcourse
			from coursefaculty
             where faculty.facultyid= coursefaculty.facultyid
              group by facultyId
              having totalcourse >1);

*/