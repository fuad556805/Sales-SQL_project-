-- 1. 
CREATE DATABASE assignment_fuad;

USE assignment_fuad;

-- 2. 
CREATE TABLE employees
(
   id int,
   name varchar(50),
   age int,
   salary decimal(10,2),
   department varchar(30)
);


-- 3.
INSERT INTO employees(id,name,age,salary,department)
VALUES
(1, 'Fuad', 26, 50000.00, 'IT'),
(2, 'Fahim', 28, 52000.50, 'HR'),
(3, 'Al', 30, 55000.00, 'Finance'),
(4, 'Rahim', 24, 47000.00, 'Marketing'),
(5, 'Karim', 35, 60000.00, 'Sales'),
(6, 'Lisa', 18, 49000.75, 'IT'),
(7, 'Sarkar', 31, 53000.00, 'Finance'),
(8, 'Mehedi', 27, 46000.00, 'HR'),
(9, 'Zinia', 32, 58000.25, 'IT'),
(10,'Tariq', 38, 62000.00, 'Management');


-- 4. 
ALTER TABLE employees
ADD email varchar(100);

SELECT *
FROM employees;

-- 5. 
SET SQL_SAFE_UPDATES = 0;

-- 6. 
DELETE 
FROM employees
WHERE age < 25
limit 1;

SELECT *
FROM employees;

-- 7. 
SELECT name,department
FROM employees
WHERE department = 'Sales';

-- 8. 
SELECT name,salary
FROM employees
WHERE salary > 30000;

-- 9. 
SELECT name,email, IFNULL(email,'Not Provided') AS email
FROM employees
WHERE email IS NULL;

-- 10. 
SELECT name,salary,
	CASE
		WHEN salary >= 40000 THEN 'High' ELSE 'Low'
	END AS salary_status
FROM employees;


-- 11. 
CREATE VIEW hr_employees AS
SELECT name, department
FROM employees
WHERE department = 'HR';

SELECT *
FROM hr_employees;












