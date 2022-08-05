

--group by 


select department_id , max(salary) from employees group by department_id;
select department_id , min(salary) from employees group by department_id;
select department_id , count(*) from employees group by department_id;
select department_id , avg(salary) from employees group by department_id;
select department_id , sum(salary) from employees group by department_id;



---group by with having cluase--------


select department_id , count(salary) from employees
group by department_id   having count(*) >= 5;


select department_id , count(salary) from employees
group by department_id   having count(*) >= 2;


select department_id , count(salary) from employees
group by department_id   having count(*) >= 6;










