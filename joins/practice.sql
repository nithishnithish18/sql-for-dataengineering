
#inner join
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
