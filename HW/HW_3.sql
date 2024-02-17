-- Homework #3  
-- Part 1 - mywork database
-- Write sql 
-- 	1. Add column 'country' to dept table in mywork database
ALTER TABLE mywork.dept 
add column country varchar(50);

 
-- 	2. Rename column 'loc' to 'city';
ALTER TABLE mywork.dept rename column loc to  city;
-- 	3. Add three more departments: HR, Engineering, Marketing

select * from mywork.dept;
INSERT INTO mywork.dept
(deptno, dname, city, country)
values(
5, 'HR', 'NYC', 'AMERICA'),
(6, 'ENGINEERING','NEW YORK', 'USA'),
(7, 'MARKETING', 'SAN DIEGO','USA');
-- 	4. Write sql statement to show which department is in Atlanta
--     Save your work 

select * from mywork.dept
where
city like "%Atlanta%";


-- Part 2  - library_simple database
-- Run library_simple.sql script  (takes a few minutes)
-- (source: https://github.com/amyasnov/stepic-db-intro/tree/2650f9a7f9c72e1219ea93cb4c4e410cca046e54/test)

-- Look at table relationships in EER Diagram

-- Write sql 

-- 	1. What is the first name of the author with the last name Swanson?
select first_name 
from 
author
WHERE
last_name = "SWANSON";
-- 	2. How many pages are in Men Without Fear book?
select name, page_num from book where  name = "Men Without Fear";

-- 	3. Show all book categories that start with with letter 'W'
select * 
from category
where name
like "w%"; 

-- */
-- -- ---------------------------------------------------