create database Practice1;

use Practice1;

create table Employee(
eid int,
ename varchar(20),
emobile bigint ,


);


insert into Employee values(1 , 'Rekha' , 9850203060);
insert into Employee (eid ) values (2) ;
insert into Employee (eid ) values (3), (4) , (5) ;


select * from Employee;

insert into Employee values (5 , 'Aj' , 79871) , (6 , 'seuch' , 98714979); 

delete  Employee ; -- deleting all table record but keeping table names

drop table Employee; ------ delete whole table record as well as table name mean drop whole structure



create table Employee(
eid int primary key,
ename varchar(20) not null,
emobile bigint unique,
esalary bigint check(esalary>20000),
ecity varchar(30) default  'Nashik'
);

select * from Employee;


insert into Employee values (1, 'rdgdfg' , 8791087439 , 80000 , 'Bombay');

insert into Employee values (2, 'rdgdfg' , 7791087439 , 100000 , 'Bombay');

insert into Employee (eid,ename,emobile,ecity) values (4 , 'hvtf' , 78879870148 , 'Nagar' );

insert into Employee (eid,ename) values (6 , 'uihiuh'  );

insert into Employee (eid,ename,emobile) values (6 , 'uihiuh' , 8717109) ;
insert into Employee (eid,ename,emobile) values( 7 , 'yvcdv' , 987010981);


------------from now use of alter key ----------------
-- adding / removing    coloumn 
-- adding / removing       constraint   using alter  


drop table  Employee;

create table Employee(
eid int ,
ename varchar(20)
);

select * from Employee;



-- ading coloumn

alter table Employee 
add email varchar(30);


alter table Employee
add emobile bigint ;

alter table Employee
add esalary bigint;

alter table Employee
add eexperiance int;


select * from Employee;

---- droping coloumn using alter

alter table Employee
drop column eexperiance;


alter table Employee
drop column esalary;

select * from Employee;

drop table Employee;


------------- adding /removing constraint after creating table using alter

create table Employee(
eid int,
ename varchar(30),
emobile bigint,
esalary bigint,
eeducation varchar(30)
);


alter table Employee 
alter column eid int not null;

alter table Employee
add primary key (eid);



alter table Employee
alter column ename varchar(30) not null;



alter table Employee
add unique (emobile);


 alter table Employee
 add check(esalary >15000);


alter table Employee
add default 'BE' for eeducation;


sp_help 'Employee'


----removing constraint using alter

alter table Employee
drop constraint PK__Employee__D9509F6D43B74008;

alter table Employee
Drop constraint UQ__Employee__FDF8D998FB54D14F;

alter table Employee
drop constraint CK__Employee__esalar__3E52440B;

alter table Employee
drop constraint DF__Employee__eeduca__3F466844;

alter table Employee
alter column ename  varchar(20) null;

alter table Employee
alter column eid int null;

select *  from Employee;

sp_help 'Employee';

drop table Employee;




------------from now use of alter key ----------------
-- adding / removing    coloumn 
-- adding / removing       constraint   using alter  




create table Employee(
eid int,
ename varchar(20)
);

alter table Employee
add esalary int;

alter table Employee
add emobile bigint;

alter table Employee
add eeducation varchar(30);

select * from Employee;



alter table Employee
drop column eeducation;

alter table Employee
drop column emobile;

alter table Employee
drop column esalary;

alter table Employee
drop column ename;


select * from Employee;
drop table Employee;


--adding removing constraints using alter  
create table Employee(
eid int,
ename varchar(20),
esalary int,
equalification varchar(20),
emobile bigint

);


alter table Employee
alter column eid int not null;

alter table Employee
add primary key (eid);


alter table Employee
alter column ename varchar(30) not null;

alter table Employee
add check (esalary > 15000);

alter table Employee
add default 'BE' for equalification;



alter table Employee
add unique (emobile);



sp_help 'Employee';


alter table Employee
drop constraint PK__Employee__D9509F6DFF90EA38;

alter table Employee
drop constraint UQ__Employee__FDF8D99883ED1AC4;

alter table Employee
drop constraint  CK__Employee__esalar__4316F928;

alter table Employee
drop constraint DF__Employee__equali__440B1D61;


alter table Employee
alter column ename varchar(20) null; 

alter table Employee
alter column eid int null;

select * from Employee;


alter table Employee 
drop column eid;


drop table Employee;


-----------primary key and foreign key



create table student(
sid int primary key,
sname varchar(20),
sper int check(sper > 30 and sper < 100),
tid int foreign key references trainer(tid)
);


create table trainer (
tid int primary key,
tname varchar(30) not null
);

select * from student;
select * from trainer;


insert into trainer values(501 , 'Deepa') , (502 , 'Kalyani');

insert into student values(1,'Ajinkya' , 99 , 501);

insert into student values(2,'Prasad' , 98 , 501) , (3, 'Shweta' , 60 , 502);

-----------------update query

update student
set sname ='Ajinkya';


update student 
set sname ='Prasad' where sid = 2;


update student
set sname = 'Sneha' where sid  = 3;



----delete 

delete student
where sid=3;

select * from student;
select * from trainer;



----------------reletion using pk and fk
--parent
create table Department (
did int primary key,
dname varchar(30) unique
);

--child
create table Employee(
eid int primary key,
ename varchar(20) not null,
emobile bigint unique,
did int foreign key references Department(did) 
);


insert into Department values(501 , 'IT') , (502 , 'Sales') , (503 , 'Marketing');

insert into Employee values (1 , 'Ajinkya' , 989898 , 501) , (2 , 'Prasad' , 884455, 501) , (3 , 'Shweta' , 985325 , 503) ,(4 , 'Shweta' , 889325 , 502);




select * from Department;
select * from Employee;


































































































