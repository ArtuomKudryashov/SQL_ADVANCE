use classicmodels;

-- Save your work in your SQL forlder Homework2.sql
-- show all customers in Australia
select * from customers
where
country = "Australia";
-- show First and Last name of customers in Melbourne
select contactFirstName, contactLastName
from customers
where
city = "Melbourne";

-- show all customers with Credit Limit over $200,000
select * from customers
where
creditLimit >200000;
-- who is the president of the company?

select * from employees
where 
jobTitle like "%iden%";



-- how many Sales Reps are in the company?
select * from employees
where 
jobTitle like "%Sales%Rep%";
-- show payments in descending order
select * from  payments
order by amount desc;

-- what was the check# for the payment done on December 17th 2004

select * from payments
where paymentDate = '2004-12-17'; 
-- show product line with the word 'realistic' in the description
select * from productLines
where textDescription like "%realistic%";

-- show product name for vendor 'Unimax Art Galleries'
select productName, productVendor from  products
where productVendor like "Unimax Art Galleries";


-- what is the customer number for the highest amount of payment
select customerNumber, amount 
from
payments
order by amount desc
limit 1 

