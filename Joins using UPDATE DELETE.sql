use PB3;

create table stud(
sid int unique,
sname varchar(30),
batchid int primary key
);
drop table stud;

create table batch(
batchname varchar(20),
batchid int foreign key references stud(batchid) on delete cascade on update cascade
);



insert into stud values(1,'Ajinkya',501), (2,'ram',502),(3,'Ajinkya',503),(4,'Neha',504)  ;
insert into batch values('PB3' , 501) , ( 'Shaurya' , 502 ) , ('Apple' , 503 );
select * from stud;
select * from batch;


--using inner query
delete from stud where  batchid in 
(select batchid from batch where batchname = 'Apple');


delete from stud where batchid  in 
(select batchid from batch where batchname = 'Apple');

--same but using join
delete s from stud s inner join batch b on
s.batchid = b.batchid where batchname ='Apple';


delete s from stud s inner join batch b on
b.batchid = s.batchid 
where batchname = 'Apple';  




update stud 
set batchid = 510 where batchid in
(select batchid from batch where batchname = 'PB3');





---update 

use HRpb3;


-- updaet using inner query or sub query

update employees
set salary = salary + 15000
where department_id in 
(select department_id from departments where department_name = 'Executive');



      -- now update using join 
	  update employees
	  set salary = salary + 15000
	  from employees e inner join departments d on
	  e.department_id = d.department_id
	  where department_name = 'Executive';

	  update employees
	  set salary =salary + 5000 
	  from employees e inner join departments d on
	  e.department_id = d.department_id where department_name = 'Executive';

	  select * from departments;
	
	  update employees
	  set salary = salary + 1000
	  from employees e inner join departments d on
	  e.department_id = d.department_id where department_name ='IT';


	  select * from  employees where department_id = (select department_id from departments where department_name ='Executive');

	  select * from employees e inner join departments d on
	  e.department_id = d.department_id where department_name  ='Executive';

	  ------------------
	  use PB3;

	  ------ join delete using left right join

	  select * from stud s right join batch b on s.batchid = b.batchid;

	  delete b from batch b left join stud s on
	  b.batchid = s.batchid
	  where s.batchid is null;


