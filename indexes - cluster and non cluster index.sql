
use PB3;
-- cluster index created by defaultly for primary key and unique key
-- for creating non cluster index use query

create index indxsal on
thinkemp(salary);

select *  from thinkemp;

drop index indxsal on thinkemp;  --for deopping index



create table empp(
eid int primary key identity(101 , 1),
ename varchar(25) not null,
mobile bigint
);


insert into empp (ename,mobile) values ('Ajinkya' , 9856231425), ('Ram' , 8596232147);


create unique nonclustered index idxmb on
empp(mobile) where mobile is not null;----it allow to insert multiple null but unique value in unique constraint



---for dropping primary or cluster index
alter table empp
drop constraint PK__empp__D9509F6D2D10756E;  --if you remove primary constraint cluster index remove automatically


insert into empp (ename,mobile) values ('Adi' , 7856231425), ('Sham' , 796232147);

insert into empp (ename) values ('Adi'), ('Sham');  --unique still addting null values more than 1
select * from empp;







