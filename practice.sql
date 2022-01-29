#groupby example (orders and orderdetails tables)
use classicmodels;
select * from orders;
select * from orderdetails;
select 
	status, sum(priceEach*quantityOrdered)as amnt 
from 
	orders inner join orderdetails 
using(orderNumber)
group by status;

#groupby without aggregate acts like distinct functions

select status, customerNumber as quantity from orders group by status;

select distinct status from orders;

