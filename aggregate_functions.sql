CREATE TABLE employees(
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO employees(name,age,department,salary,city)
VALUES
('Afeefa',23,'AI',45000,'Pune'),
('Sara',21,'HR',30000,'Mumbai'),
('Adnan',27,'IT',55000,'Delhi'),
('Adeeba',21,'AI',40000,'Pune'),
('Ali',24,'Finance',38000,'Hyderabad'),
('Ayzalnoor',15,'IT',25000,'Mumbai'),
('Sneha',26,'HR',42000,'Pune'),
('Sahil',29,'Finance',60000,'Delhi'),
('Anaya',22,'AI',47000,'Mumbai'),
('Rahul',25,'IT',52000,'Pune');


--Day 4: Aggregate Functions + GROUP BY

--COUNT() → Count records

select count(*) from employees;
select  count(*) from employees where city='Pune';

--SUM() → Add values

select sum(salary) from employees;

--AVG() → Average

select avg(salary) from employees;

--MIN() and MAX()

--Lowest salary:

SELECT MIN(salary)
FROM employees;

--Highest salary:

SELECT MAX(salary)
FROM employees;

--GROUP BY → Create groups and summarize

--Count employees in each department:
select department ,count(*) from employees group by department;
--Average salary per department:
select department, avg(salary) from employees group by department;


--Practice questions
-- Find department and total salary paid in each department
select department ,sum(salary ) from employees group by department 
---- Find the average employee age
select avg(age) from employees;
--Count employees in each department
select department,count(*) from employees group by department 
--Count employees in each city
select city, count (*) from employees group by city ;
---- Find average salary for each department
select department,avg(salary ) from employees group by department 
-- Find total salary paid in each city
select city,sum(salary ) from employees group by city 
-- Find the highest salary in each department

select department,max(salary) from employees group by department

-- Find departments where average salary is greater than 45000

SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 45000;

-- Find cities having more than 2 employees
select city , count(*) from employees group by city having COUNT(*) > 2;

-- Find the department with the highest total salary
SELECT department, SUM(salary)
FROM employees
GROUP BY department
ORDER BY SUM(salary) DESC
LIMIT 1;

-- Find the number of employees whose salary is greater than average salary
select count(*) from employees where salary>( select avg(salary ) from employees  );

-- Find city and average salary sorted by average salary descending
SELECT city, AVG(salary)
FROM employees
GROUP BY city
ORDER BY AVG(salary) DESC;
