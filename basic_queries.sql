-- This creates a students table
create table students(id serial primary key,
name varchar(50),
age int,
course varchar(50));

-- Data insertion in table 
insert into students(name,age,course)
values
('Afeefa', 23,'AI'),
('Adeeba',21,'CA'),
('Ayzalnoor',4,'UKG'),
('Fauzan',10,'Third class'),
('Adnan',27,'M.phrma'),
('Asad',9,'Second class');

--View data(* used to view all data)
Select* from students ;

--View data with selected columns
select name,age from students ;


--Filtering data
--Show only names and courses
select name,course from students;

--Show students older than 20
select * from students where age>20;

--Show students whose age is less than 15
select * from students where age<15;

--Sort by age (smallest → largest)
select * from students order by age;

--Sort by age (largest → smallest)
select * from students order by age dESC;

--Show only first 3 rows
select * from students limit 3;

--Write a query to show only students with age greater than 20 and sort them by age in descending order.
select * from students where age>20 order by age desc;

--Day 3: **LIKE, IN, BETWEEN, DISTINCT**
--LIKE → Find patterns % means "any number of characters"
--Names starting with A
select * from students where name like 'A%';
--Names ending with a
select name from students where name like '%a'
--Names containing "ee"
select * from students where name like '%ee%';

--IN → Match multiple values
select * from students where age IN (20,23);

--BETWEEN → Range of values
--Show students aged between 10 and 23
select * from students where age between 10 and 23;

--DISTINCT → Remove duplicates
--You currently have duplicate courses and names.

select DISTINCT course from students;

--Show students whose names start with S
select * from students where name like 'S%'
--Show students whose names end with a
select * from students where name like '%a'
--Show students whose age is 21 or 27
select * from students where age in (21 ,27)
--Show students aged between 15 and 25
select * from students where age between 15 and 25
--Show unique student names only
select distinct name from students

--Show students whose names start with A and age is greater than 20, sorted by age descending.
select * from students where name like 'A%' and age >20 order by age desc
