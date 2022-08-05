use Practice;


/*Write a query to find the names (first_name, last_name) and the salaries of
the employees who have a higher salary than the employee whose
last_name='Bull'.*/
use Practice;

select first_name, last_name ,salary from employees
where salary > 
( select salary from employees where last_name = 'Bull'    );


/*2. Write a query to find the names (first_name, last_name) of all employees
who works in the IT department.*/

select first_name, last_name from employees
where job_id in 
(select job_id from jobs where job_title = 'IT');


/*3. Write a query to find the names (first_name, last_name) of the employees who
have a manager and work for a department based in the United States.
Hint : Write single-row and multiple-row subqueries*/


select first_name, last_name from employees
where department_id in 
(select department_id from departments where location_id in 
(  select location_id from locations where country_id ='US'));




/*3. Write a query to find the names (first_name, last_name) of the employees
who are managers.*/


select first_name, last_name from employees
where employee_id in 
(select manager_id from employees);


/*4. Write a query to find the names (first_name, last_name), the salary of the
employees whose salary is greater than the average salary.*/

select first_name, last_name , salary from employees
where salary > (select avg(salary) from employees);

/*5. Write a query to find the names (first_name, last_name), the salary of the
employees whose salary is equal to the minimum salary for their job
grade.*/


select first_name, last_name, salary from employees
where salary = 
(select min_salary from jobs where employees.job_id = jobs.job_id);


/*6. Write a query to find the names (first_name, last_name), the salary of the
employees who earn more than the average salary and who works in any
of the IT departments.*/








/*7. Write a query to find the names (first_name, last_name), the salary of the
employees who earn more than Mr. Bell.*/

select first_name, last_name, salary from employees
where salary > 
(select salary from employees where last_name ='Bell' );



/*8. Write a query to find the names (first_name, last_name), the salary of the
employees who earn the same salary as the minimum salary for all
departments.*/

select distinct department_id, first_name, last_name, salary from employees
where salary in 
(select min(salary) from employees ) ;





/*9.Write a query to find the names (first_name, last_name), the salary of the
employees whose salary greater than the average salary of all
departments.*/

select distinct department_id,first_name, last_name, salary from employees
where salary >
( select avg(salary) from employees);



/*10. Write a query to find the names (first_name, last_name) and salary
of the employees who earn a salary that is higher than the salary of all the
Shipping Clerk (JOB_ID = 'SH_CLERK'). Sort the results of the salary of
the lowest to highest.*/

select first_name, last_name, salary from employees
where salary > 
(select max(salary) from employees where job_id in 
(select job_id from jobs where job_title ='Shipping Clerk') ) order by salary;


/*11. Write a query to find the names (first_name, last_name) of the
employees who are not supervisors.*/






-----------copied from net   -----12 to 22 ------- didnt get this query
  
/*12. Write a query to display the employee ID, first name, last names,
and department names of all employees.*/

SELECT employee_id, first_name, last_name, 
(SELECT department_name FROM departments d
 WHERE e.department_id = d.department_id) 
 department FROM employees e ORDER BY department;




 /*13. Write a query to display the employee ID, first name, last names,
salary of all employees whose salary is above average for their
departments.*/

select employee_id, first_name, last_name, salary from employees
where salary >
(select avg(salary) from employees );

SELECT employee_id, first_name 
FROM employees AS A 
WHERE salary > 
(SELECT AVG(salary) FROM employees WHERE department_id = A.department_id);



/*14. Write a query to fetch even numbered records from employees
table.*/






/*15. Write a query to find the 5th maximum salary in the employees
table*/

SELECT DISTINCT salary 
FROM employees e1 
WHERE 5 = (SELECT COUNT(DISTINCT salary) 
FROM employees  e2 
WHERE e2.salary >= e1.salary);

/*16. Write a query to find the 4th minimum salary in the employees table*/
SELECT DISTINCT salary 
FROM employees e1 
WHERE 4 = (SELECT COUNT(DISTINCT salary) 
FROM employees  e2 
WHERE e2.salary <= e1.salary);


/*17. Write a query to select last 10 records from a table*/





/*18. Write a query to list department number, name for all the
departments in which there are no employees in the department.*/



/*19. Write a query to get 3 maximum salaries.*/

SELECT DISTINCT salary 
FROM employees a 
WHERE 3 >= (SELECT COUNT(DISTINCT salary) 
FROM employees b 
WHERE b.salary >= a.salary) 
ORDER BY a.salary DESC;


/*20. Write a query to get 3 minimum salaries.*/

SELECT DISTINCT salary 
FROM employees a 
WHERE  3 >= (SELECT COUNT(DISTINCT salary) 
FROM employees b 
WHERE b.salary <= a.salary) 
ORDER BY a.salary DESC;


/*21. Write a query to get nth max salaries of employees.  -- 21 and 22  both are same */
SELECT *
FROM employees emp1
WHERE (1) = (
SELECT COUNT(DISTINCT(emp2.salary))
FROM employees emp2
WHERE emp2.salary > emp1.salary);



/*22. Write a query to get nth max salaries of employees.*/      -- 21 and 22  both are same 

SELECT *
FROM employees emp1
WHERE (1) = (
SELECT COUNT(DISTINCT(emp2.salary))
FROM employees emp2
WHERE emp2.salary > emp1.salary);


select * from employees;
select * from jobs;

select * from Department;






































































