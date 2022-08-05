select * from student1 ;
select * from trainer1;

--   without using where clause updating all records
update trainer1
set qualification = 'MCS';

--using where clause for update , update the specific record
update trainer1
set qualification = 'BE' where tid = 104;

alter table trainer1 add experance int;

update trainer1
set experance = 10+5 where tid = 104;





















































