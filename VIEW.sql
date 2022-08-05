use PB3;

--security reason
--complex query  u require frquently you store in view


select * from thinkemp;

--------simple view u can update delete insert
create view vktemp as
select empid,ename from thinkemp;

select * from vktemp;

insert into vktemp values(9,'sonali');

delete from vktemp where empid = 3;


---complex view  u cant update delete insert in that  just view just coz of constraint like not null
create view v2 as
select batchid,count(*) as c from stud group by batchid;


select * from v2;




create view v3 as
select sname , b.batchid , batchname from stud s inner join batch b on
s.batchid = b.batchid;


select * from v3;





