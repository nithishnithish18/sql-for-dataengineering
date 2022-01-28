#1. inner join
#joining two tables
select * from employees;
select * from departments;
select first_name,last_name,emp.department_id,dept.department_id from employees emp 
inner join departments dept 
on emp.department_id = dept.department_id 
where emp.department_id in  (1, 2, 3, 4, 5, 6);

#joining three tables
select emp.first_name, dept.department_id,dept.department_name,job.job_title from employees emp
inner join departments dept on emp.department_id = dept.department_id
inner join jobs job on emp.job_id = job.job_id;
use hr_db;
show tables;

#left join 
#Joining two tables(tables - locations, countries)
select * from locations;
select * from countries;
SELECT
	c.country_name,
	c.country_id,
	l.country_id,
	l.street_address,
	l.city
FROM
	countries c 
left join locations l on c.country_id = l.country_id;


#joining three tables(tables - regions, countries, locations)
select
	r.region_id,
    	c.region_id,
	c.country_name,
    	c.country_id,
    	l.country_id,
    	l.city
from
	regions r
left join countries c on c.region_id = r.region_id
left join locations l on l.country_id = c.country_id;


#self join practice
create database practice;
use practice;
create table cp
(
child char (3),
parent char (3)
);
show tables;
insert into cp values ('C1', 'C2' );
insert into cp values ('A', 'AA' );
insert into cp values ('B', 'BB' );
insert into cp values ('C', 'CC' );
insert into cp values ('AA', 'AAA');
insert into cp values ('BB', 'BBB');
insert into cp values ('CC', 'CCC');

select t1.child as child,t1.parent as parent,t2.parent as gp from cp t1 join cp t2 on t1.parent = t2.child; 


# selfjoin example using employees table
use hr_db;
select * from employees;
select concat(emp.first_name,' ',emp.last_name) as employee, concat(mngr.first_name,' ',mngr.last_name) as manager 
from
	employees emp
	 inner join
	employees mngr
on
	mngr.employee_id = emp.manager_id order by manager

use classicmodels;
show tables;

#rightjoin ilustration using employees and customers tables
select * from employees;
select * from customers;
select
	 customerNumber,
     employeeNumber
from
	customers right join  employees
on
	salesRepEmployeeNumber = employeeNumber
order by employeeNumber;
