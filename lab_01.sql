create database lab_01;

use lab_01;


-- create instructor table
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



-- Questions

-- 1. Show the name of all instructors
select name
from instructor;

-- 2. Show the course id and title of all courses
select course_id,title
from course;

-- 3. Find the name and department of the instructor whose ID is 22222.
select ID,Name,Dept_Name
from instructor
where ID = 22222;


-- 4. Find the names and departments of instructors who have a salary greater than 70,000.
select Name,Dept_Name,Salary
from instructor
where Salary > 70000;


-- 5. Find the titles of courses that have credits not less than 4.
select title,credits
from course
where credits >= 4;


/*-- 6. Find the names and departments of instructors who have a salary between 80,000 and 100,000
(inclusive).*/
select Name,Dept_Name,Salary
from instructor
where Salary between 80000 and 100000;


-- 7. Find the titles and credits of courses not offered by the 'Comp. Sci.' department.
select title,credits
from course
where dept_name != 'Comp.Sci';

-- 8. Display all records from the instructor table.
select *
from instructor;


/*-- 9. Find all courses (show all columns) that are offered by the 
'Biology' department and have credits not equal to 4.*/
select *
from course
where dept_name = 'Biology' and credits != 4;


-- 10. Show unique department names only from the course table.
select distinct(dept_name)
from course;
