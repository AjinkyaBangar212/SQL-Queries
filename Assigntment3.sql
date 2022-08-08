Create database AssigntmentThird;

create table Teacher(
Teacher_id int primary key,
Tname varchar(30) not null
);


insert into Teacher values(501,'Deepa') , (502 , 'Kalyani') , (503 , 'Sakshi');


Create Table Batch(
Batch_id int primary key,
BatchName varchar(30) not null,
Teacher_id int foreign key references Teacher(Teacher_id) on  update cascade   on  delete cascade

);

insert into Batch values(101 , 'C Sharp' , 501) , (102 , 'Java' , 502) , (103 , 'Paython' , 503) ,
(104 ,'c++' , 501) , (105 , '.Net' , 502 ) ;



create Table Status(
Status_id int Primary key,
desc_id int unique check (desc_id <= 4),
desc_staus varchar (10)
);

insert into Status values (401 , 1 , 'Palced' ) , (402 , 2 , 'Unplaced' ) , (403 , 3 , 'Left' ) , 
(404 , 4 , 'Remove' ) ;



create table Student (

stud_id int primary key,
Sname varchar(30) not null,
Mobile bigint,
Batch_id int foreign key references Batch (Batch_id) on  update cascade   on  delete cascade,
Status_id int foreign key references Status(Status_id) on  update cascade   on  delete cascade,
Year_Of_Pass date
);


create table Attendence(

stud_id int foreign key references Student (stud_id) on  update cascade   on delete cascade,
Date date,
Present varchar(30)
);

Create table Score(
stud_id int foreign key references Student (stud_id) on  update cascade   on delete cascade,
Test_date date,
Topic varchar(20),
Marks_obtain int ,
primary key(stud_id,Test_date)
);


--1.	Write a query to create Student and Score table. 
create table Student (

stud_id int primary key,
Sname varchar(30) not null,
Mobile bigint,
Batch_id int foreign key references Batch (Batch_id) on  update cascade   on  delete cascade,
Status_id int foreign key references Status(Status_id) on  update cascade   on  delete cascade,
Year_Of_Pass date
);



Create table Score(
stud_id int foreign key references Student (stud_id) on  update cascade   on delete cascade,
Test_date date,
Topic varchar(20),
Marks_obtain int ,
primary key(stud_id,Test_date)
);



--2.	Write a query to add column Qualification to Student table. ( Assume it was not present earlier)– add qualification column after status id

Alter table Student 
add Qualification varchar(30);


--3.	Write single query to create StudentCopy table which will have same structure and data of table.

select * into StudentCopy from Student;


--4.	List all studentsname from july2018 who were absent for test on 18Aug2018.

select Sname from Student where stud_id in 
(select stud_id from Attendence where Present = 'N' and Date between '2018-07-01' and '2018-08-18'  );


--5.	Update record of student Mithilesh from July2018 batch to Aug2018.
--Batch id of both batches is not known.

update Student 
set Year_Of_Pass = '2018-08-01' 
where Sname = 'Mithilesh' and  Year_Of_Pass = '2018-07-01'; 


--6.Assume there is field ‘student_count’ in batch table. 
--Write a query to update this field by counting no of students in that batch.





--7.List all Students from July2018 whose qualification is “BE” and year of passing is 2018.


select * from Student 
where Stud_id in
(select Stud_id from Student where Qualification='BE' and Year_Of_Pass=2018);

--8.	List student name ,topic and topic wise marks of each student from July2018 batch.

select Sname,Topic,Marks_Obtained from Student s inner join Score sc on s.Stud_id=sc.Stud_id inner join Batch b on b.Batch_id=s.Batch_id where BatchName='July2018';

--9.Display batchname and Batchwise Placed student count for all batches from which less than 5 students are placed.
select BatchName,count(*) from Batch  group by Batch_id having count(*)>=5;

--10.Display top 3 students from july2018 batch with least attendance.
select * from Student s1 where 3=(select count(distinct(Sname)) from Student s2 where s1.Stud_id>=s2.Stud_id);

--11.Delete all records of those students from attendance who are ‘PLACED’
delete Student,Status from Student inner join Status on Student.Stud_id=Status.Status_id where Status.Status_desc='Placed';

--12.Delete all records of students whose average marks are less than 50.
delete Student,Score from Student inner join Score on Student.Stud_id=Score.Stud_id where Stud_id=(Select Stud_id,avg(Marks_obtained) from Score where Marks_Obtained<=50);

--13.Create a view to which shows sid name batchname. 
create view Sviews as select Stud_id,Sname,BatchName from Student,Batch where Student.Batch_id=Batch.Batch_id; 

--14.Create index so that retrieval of records is faster when retrieved based on status id
create index idxStatus_id on Status(Status_id);

--15.Give one example of left outer join using above database.
select Sname,BatchName from Student left join Batch on Student.Batch_id=Batch.Batch_id;



