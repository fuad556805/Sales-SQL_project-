create database lab_02;

use lab_02;

-- -- create instructor table
create table instructor(
	ID int not null primary key,
    Name varchar(50),
    Dept_Name varchar(50),
    Salary decimal(10,2)
);


-- insert instructor values
insert into instructor(ID,Name,Dept_Name,Salary)
values
(10101,'Srinivasan','Comp.Sci.',65000.50),
(12121,'Wasif','Finance',90000),
(15151,'Mozart','Music',40000),
(22222,'Einstein','Physics',95000),
(32343,'El Said','History',60000),
(33456,'Goblin','Physics',87000.50),
(45565,'Katz','Comp.Sci.',75000),
(58583,'Califier','History',62000);


-- create course table
create table course(
	course_id varchar(50) not null primary key,
    title varchar(100),
    dept_name varchar(50),
    credits int
);


-- insert value 
insert into course(course_id,title,dept_name,credits)
values
('BIO-101','Intro. to Biology','Biology',4),
('BIO-301','Genetics','Biology',4),
('BIO-399','Computational Biology','Biology',3),
('CS-101','Intro.to Computer Science','Comp.Sci',4),
('CS-190','Game Design','Comp.Sci',4),
('CS-319','Image Processing','Comp.Sci',3),
('CS-347','Datbase System Concepts','Comp.Sci',3),
('EE-181','Intro. to Digital Systems','Elec.Eng',3),
('FIN-201','Investment Banking','Finance',3);


-- QUESTION

-- 1. Write a query to count the total number of instructors.
select count(ID) as Total_Instructor
from instructor;

-- 2. Write a query to find the average salary of instructors in the "Comp. Sci." department.
select avg(Salary) as AVG_Salary
from instructor
where Dept_name = 'Comp.Sci.';


-- 3. Write a query to find the highest salary among all instructors.
select Name,Salary as MaxSalary
from instructor
where Salary = (select max(Salary) 
				from instructor);



/*-- 4. Write a query to list each department with the total salary paid to instructors in that
department.*/
select Dept_Name,sum(Salary) as TotalSalary
from instructor
group by Dept_Name;


-- 5. Write a query to count how many instructors work in each department.
select Dept_Name,count(ID) as Total_Inst
from instructor
Group by Dept_Name;

-- 6. Write a query to find the minimum salary among instructors in the "Physics" department.
select ID,Name,Salary as MinSalary, Dept_Name
from instructor
where Salary =( select min(Salary)
				from instructor
				where Dept_Name = 'Physics');
                
-- 7. Write a query to find all instructors whose names start with the letter 'S'.
select ID,Name
from instructor
where Name like 's%';

-- 8. Write a query to find courses whose titles start with "Intro".
select course_id,title
from course
where title like 'Intro%';

-- 9. Write a query to find all courses in the "Comp. Sci." department with credits equal to 4.
select course_id,title,credits
from course
where dept_name = 'Comp.Sci' and credits = 4;

-- 10. Write a query to count how many courses each department offers.
select dept_name,count(course_id) as TotalCourses
from course
group by dept_name;


-- 11. Write a query to find all instructors whose names contain the letter 'a'.
select ID,name
from instructor
where Name like '%a%';


-- 12. Write a query to find all courses whose title contains the word 'Biology' anywhere.
select course_id,title
from course
where title like '%Biology%';

-- 13. Write a query to find instructors whose department name ends with 'ics'.
select ID,name,Dept_Name
from instructor 
where Dept_Name like '%ics';


-- 14. Write a query to find courses whose course_id starts with 'CS'.
select course_id
from course
where course_id like 'CS%';


-- 15. Write a query to find instructors whose names have exactly 6 characters.
select ID,Name
from instructor
where Name like '______%' and Name not like '_______%';

