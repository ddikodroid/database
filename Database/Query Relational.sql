
23 Oktober

tampilkan sales rep dari setiap customers
SELECT firstname, lastname, customerName
FROM customers c inner join employees e
on c.salesRepEmployeeNumber = e.employeeNumber


tampilkan office dari setiap employee
select firstname, lastname, city, state, country
from employees e inner join offices o
on e.officecode = o.officecode

cara lain(namanya harus sama-dalam hal ini officecode):
select firstname, lastname, city, state, country
from employees natural join offices;


tampilkan customer yang tidak pernah melakukan order
select customername, ordernumber
from customers c left join orders o 
using (customerNUmber)
where ordernumber is null;


select productname, productcode
from products p left join orderdetails o
using (productcode)
where ordernumber is null;


cross join
select customername, firstname
from customers c cross join employees e

select concat(fisrtname,' '.lastname), customername
from employees cross join customers;