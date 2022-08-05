use Practice;


/*1. Write a query to list the number of jobs available in the employees table.*/

use Practice;




select  count(distinct job_id)  from employees; 



/*2. Write a query to get the total salaries payable to employees.*/

select sum(salary) from employees;

/*3. Write a query to get the minimum salary from employees table*/



select min(salary) from employees;



/*4. Write a query to get the maximum salary of an employee working as a
Programmer.*/



select max(salary) from employees 
where job_id in ( select job_id from jobs where job_title ='Programmer'  );


/*5. Write a query to get the average salary and number of employees working
the department 90.*/

select avg(salary),count(*) from employees 
where department_id = 90; 


/*6.Write a query to get the highest, lowest, sum, and average salary of all
employees.*/


select max(salary) as highest, min(salary) as lowest , sum(salary) as sum , avg(salary) as average from employees ;



/*7. Write a query to get the number of employees with the same job*/

select job_id, count(*) from employees
group by job_id;




/*8. Write a query to get the difference between the highest and lowest
salaries.*/


select max(salary) - min(salary)   as Diff_is     from  employees ;

/*9. Write a query to find the manager ID and the salary of the lowest-paid
employee for that manager.*/

select manager_id , min(salary) from employees
where manager_id is not null
group by manager_id
order by min(salary) desc;



/*10. Write a query to get the department ID and the total salary payable
in each department.*/

select department_id, sum(salary) from employees
where department_id is not null group by department_id;

--or

select department_id , sum(salary) from employees group by department_id;



/*11. Write a query to get the average salary for each job ID excluding
programmer.*/


select job_id , avg(salary) from employees
where job_id in 
(select job_id from jobs where job_title not in ('programmer'))  
group by job_id;


/*12. Write a query to get the total salary, maximum, minimum, average
salary of employees (job ID wise), for department ID 90 only.*/


select job_id ,  sum(salary) , max(salary) , min (salary) , avg(salary)  from employees
where job_id in(90)           
 group by job_id;


 /*13. Write a query to get the job ID and maximum salary of the
employees where maximum salary is greater than or equal to $4000.*/


select job_id , max(salary) from employees
where salary >= 4000
group by job_id;



/*14. Write a query to get the average salary for all departments
employing more than 10 employees.*/


select department_id , avg(salary),count(*)  from employees
group by department_id
having count(*) > 10;





select * from employees;
select * from jobs ;



