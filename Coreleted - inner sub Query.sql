use HRpb3;

select * from employees  e1 where salary >=
(select avg(salary) from employees e2 
where e2.department_id = e1.department_id);




-----------------------
use HRpb3;

select * from employees order by salary  desc
offset 4 rows fetch next 1 row only;


select distinct salary from employees order by salary  desc
offset 4 rows fetch next 1 row only;


select * from employees 
order by salary desc
offset  4 rows fetch next 5 row only;




select * from employees e1 where 7 = 
(select count(distinct(salary)) from employees e2
where e2.salary >= e1.salary);



