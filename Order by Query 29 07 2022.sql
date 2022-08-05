select * from employees  order by salary;

select * from employees  order by salary desc;


select * from employees  order by salary,first_name;


select * from employees where department_id = 9 order by salary;


select * from employees where department_id = 9 order by salary,first_name;


--like is used with wildcard charactore for matching pattern 

-- % zero or more char __ excatly one


select * from employees where first_name like 's%n';

select * from employees where last_name like 'k__%';

select * from employees where email like 's__%';



