create table trainer1(
tid int primary key ,
tname varchar(20),
qualification varchar(20),

);


Create table student1(

sid int primary key,
sname varchar(20),
percentage int ,
trainerid int,

constraint fktid foreign key (trainerid) 
references trainer1 (tid)


);





insert into trainer1 values (101,'Deepa' , 'BE'), (102, 'Kalyani' , 'BE') , (103 , 'Kimaya' , 'BE') , (104 , 'Neha' , 'CS');

insert into student1 values (1,'Ajinkya',100, 104) ;

insert into student1 values (2, 'Shweta' , 98 , 104) , (3 , 'Rushika', 90 , 101) , (4 , 'Sukanya' , 78 , 101) , (5 , 'Rashmika' , 91 , 102), (6,'Kriti',90,103);

select * from student1 ;
select * from trainer1;