use lab_04;

-- QUESTION

-- 1. List all courses along with their instructor names.
select c.course_id, i.name
from course as c 
join instructor as i 
on c.instructor_id = i.id;

/*-- 2. Find instructors who teach more than one course. Display their
 id, name, and the number of courses they teach.*/
 select id,name,count(c.course_id) as TotalCourse
 from instructor as i
 join course as c on c.instructor_id = i.id
 group by id,name;
 
 -- 3. Find courses taught by instructors with a salary below 70,000.
 select c.course_id,c.title,i.name,i.Salary
 from course as c
 left join instructor as i 
 on c.instructor_id = i.id and i.Salary < 70000;
 
 
 /*-- 4. List all courses where the instructor’s salary is greater than the average salary of all
instructors.*/
select c.course_id,i.Salary
from instructor as i
right join course as c
on i.id = c.instructor_id and Salary > ( select avg(Salary)
										 from instructor);
                                         
-- 5. Find the instructor(s) with the minimum salary and display their name and salary.
select name,Salary
from instructor
where Salary = (select min(Salary)
				from instructor);
                
                
-- 6. Find all instructors whose salary is less than the highest salary among instructors.
select name, Salary
from instructor
where Salary < (select max(Salary)
				from instructor);
                
                
-- 7. Find the instructor(s) who earn more than the average salary of all instructors.
select name,Salary
from instructor
where Salary > (select avg(Salary)
				from instructor);
                
                
-- 8. List all instructors and their assigned courses using a LEFT JOIN.
select i.name,c.course_id
from instructor as i
left join course as c
on c.instructor_id = i.id;


-- 9. Find the 4th highest salary among instructors.
select i1.name,i1.Salary
from instructor as i1
where 4-1 = (select count(distinct i2.Salary)
			 from instructor i2
             where i1.Salary < i2.Salary);
             
             
-- 10. List all instructors along with the course titles they teach using INNER JOIN.
select i.name,c.title
from instructor as i
inner join course as c
on i.id = c.instructor_id;


-- 11. List all courses, including those that are not currently assigned to any instructor.
select c.course_id, i.name
from instructor as i
right join course as c
on c.instructor_id = i.id;


-- 12. Display the first 3 instructors with the highest salary.
select name, Salary
from instructor
order by Salary desc
limit 3;

                                                                             

 