use PB3;


create table thinkemp
(
empid int primary key,
ename varchar(30) not null,
salary int,
mid int
);


alter table thinkemp 
add constraint fkmid foreign key(mid) references thinkemp(empid);

sp_help thinkemp;


select * from thinkemp e1 inner join thinkemp e2 on
e1.mid = e2.empid;



select e1.ename 'EmpName', e2.ename 'Manager'
from thinkemp e1 inner join thinkemp e2 on
e1.mid = e2.empid;



select m.ename 'Manager' , count(*) from thinkemp e inner join thinkemp m on
e.mid = m.empid group by  m.ename having count(*) >= 2;





















