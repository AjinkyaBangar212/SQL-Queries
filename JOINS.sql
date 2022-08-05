use HRpb3;

--1.cross join
select * from employees cross join departments;


--2 . to display all emp along dept name
--inner join
select first_name,department_name from employees inner join departments  --always use on clause
on departments.department_id= employees.department_id ;

-- or using allice clause emploeeyees e  depart d
select first_name,department_name from employees e inner join departments d --always use on clause
on d.department_id= e.department_id ;





use Practice1;

  select * from student s inner join trainer t on
  s.tid = t.tid;

   select * from student s left join trainer t on
  s.tid = t.tid;




   select * from trainer t right join student s on
  s.tid = t.tid;



   select * from student s right join trainer t on
  s.tid = t.tid;

  
   select * from student s full outer join trainer t on
  s.tid = t.tid;


select * from student s inner join trainer t on
  s.tid = t.tid;




use Practice1;

-- cross join

select * from student cross join trainer;

select * from trainer cross join student;




-- inner join

select * from student s inner join trainer t on
s.tid = t.tid;

select * from student s inner join trainer t on
s.tid = t.tid;




-- outer join  1. left join 2.right join 3.full outer join

--1.left join

select * from student s left join trainer t on
s.tid =t.tid;

select * from   trainer t left join student s on
s.tid = t.tid;



-- right join

select * from student s right join trainer t on
s.tid = t.tid;

select * from trainer t right join student s on
s.tid = t.tid;


-- full outer join 

select * from student s full outer join trainer t on
s.tid = t.tid;

select * from trainer t full outer join student s on 
s.tid = t.tid;


--4 self join similar to inner join

select * from student s  join trainer t on
s.tid = t.tid;

select * from trainer t join student s on
s.tid = t.tid;


----practice

  select * from student s inner join trainer t on
  s.tid = t.tid;

   select * from student s left join trainer t on
  s.tid = t.tid;




   select * from trainer t right join student s on
  s.tid = t.tid;



   select * from student s right join trainer t on
  s.tid = t.tid;

  
   select * from student s full outer join trainer t on
  s.tid = t.tid;


select * from student s inner join trainer t on
  s.tid = t.tid;

