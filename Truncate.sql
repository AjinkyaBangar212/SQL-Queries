

use PB3;

select * from empp;

TRUNCATE TABLE empp;

insert into empp(ename,mobile) values ('Akshay' , 52);

select * from empp;

--- if use delete then identity start from resume from 106

delete  empp;

insert into empp(ename,mobile) values ('Akshay' , 52);

select * from empp;  -- u can see it start from identity key 106




beign tran 
delete from stud;
rollback tran;



beign tran 
truncate TABLE stud;
rollback tran;






