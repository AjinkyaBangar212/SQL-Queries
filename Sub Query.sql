select * from employees where job_id =
(select  job_id from jobs where job_title = 'Programmer');


select * from employees where job_id=
(select job_id from jobs where job_title = 'President');



select * from employees where job_id =
(select job_id from jobs where job_title = 'Stock Clerk');

s

-- use in in multi sub query

select * from student where batchid in 
(select batchid from batch where tid =
(select tid from  trainner where tname='de' ));




select * from student where batchid in 
(select batchid from batch where tid =
(select tid from  trainner where tname='de' ));





