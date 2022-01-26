
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
