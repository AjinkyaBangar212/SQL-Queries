use Practice;


/*
1. Write a query to display the names (first_name, last_name) and salary for
all employees whose salary is not in the range $10,000 through $15,000.*/use Practice;select  first_name, last_name , salary  from employees where salary not between 10000 and 15000;/*2. Write a query to display the names (first_name, last_name) and
department ID of all employees in departments 30 or 100 in ascending
alphabetical order by department ID.*/select  first_name, last_name , department_ID from employeeswhere department_id in (30 , 100) order by department_id ASC;/*3. Write a query to display the names (first_name, last_name) and salary for
all employees whose salary is not in the range $10,000 through $15,000
and are in department 30 or 100.*/select first_name, last_name , salary from employees where department_id in(30 , 100) and  salary not between 10000 and 15000  ;/*4. Write a query to display the names (first_name, last_name) whose hire
date is not known*/select first_name, last_name from employees where hire_date is null;/*5. Write a query to display the first_name of all employees who have both "b"
and "c" in their first name.*/select first_name from employeeswhere first_name like '%b%' and  first_name like '%c%';/*6. Write a query to display the last name, job, and salary for all employees
whose job is that of a Programmer or a Shipping Clerk, and whose salary
is not equal to $4,500, $10,000, or $15,000.*/select last_name , job_id , salary from employeeswhere salary not in (1500 , 10000 , 15000) and job_id in ( select job_id from jobs where job_title in ('Programmer' , 'Shipping Clerk' ));/*7. Write a query to display all details of first 5 employees whose salary is less
among all employees.*/select top 5 * from employees where salary <    ;/*8. Write a query to display the jobs/designations available in the employees
table*/
select distinct job_id from employees;select distinct manager_id from employees;select distinct salary from employees;select distinct department_id from employees;select distinct hire_date from employees;/*9. Write a query to display the names (first_name, last_name), salary and PF 
(15% of salary) of all employees  */select * from employees;select first_name, last_name, salary, salary*0.15 as PF from employees;

select employee_id , employee_id*10  from employees;
select distinct department_id , department_id *2 from employees;/*10.Write a query to select all record from employees where last name in 
'BLAKE', 'SCOTT', 'KING' and 'FORD'*/select * from employees where last_name in ('BLAKE', 'SCOTT', 'KING' , 'FORD');