select max(salary) from employees;
select min(salary) from employees;
select avg(salary) from employees;
select sum(salary) from employees;
select count(salary) from employees;


select max(salary) as 'Max Salary ' from employees;
select min(salary) as 'min Salary ' from employees;
select avg(salary) as 'avg Salary ' from employees;
select sum(salary) as 'sum Salary ' from employees;
select count(salary) as 'no of Salaries ' from employees;

--count number of record non null values
-- sum count avg min max --aggrigate


select max(salary) as 'Max Salary ' from employees where department_id = 6;
select min(salary) as 'Min Salary ' from employees where department_id = 6;
select avg(salary) as 'Avg Salary ' from employees where department_id = 6;
select count(salary) as 'count of Salaries ' from employees where department_id = 6;
select sum(salary) as 'sum Salary ' from employees where department_id = 6;



