create database PB3;

use PB3;

create table student(
sid int primary key,
sname varchar(20),
marks int not null,
mobile bigint
);

insert into student values(1, 'Ajinkya', 100 , 9803741559);
insert into student values(2, 'Prasad', 98 , 778899665544 );

select * from student;
--or 
select sid,sname,marks , mobile  from student;

insert into student (sid,sname) values(3, 'Shweta');

drop table student;