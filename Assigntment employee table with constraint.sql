use PB3;

create table Employee(
eid int primary key,
ename varchar(20) not null,
esalary bigint check (esalary > 35000 ),
emobile bigint unique ,  -- it is once null but after that unique
ecity varchar(30) default 'Pune' 
);

insert into Employee values(1,'Ajinkya', 9999999 , 9860064225 , 'Mumbai');
insert into Employee values(2,'Namrata', 39999 , 7860064225 , 'Pune');
insert into Employee values(3,'Sukanya', 45999 , 8860064225 , 'Nashik');
insert into Employee values(4,'Kiran', 49999 , 9960064665 , 'Satara');
insert into Employee values(5,'Kirti', 59999 , 9860994225 , 'Delhi');
insert into Employee values(6,'Rohini', 79999 , 9860664225 , 'Nagpur');
insert into Employee values(7,'Rohit', 899999 , 9860444225 , 'Jaipur');


--default constrain checking
insert into Employee (eid , ename , esalary) values (9,'Gautami' , 80000); 


insert into Employee (eid , ename , esalary , emobile) values (9,'Gautami' , 80000 , 9806545221); 


select * from Employee;