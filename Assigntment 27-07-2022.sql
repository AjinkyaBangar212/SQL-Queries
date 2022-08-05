

create table Doctor(
Did int primary key,
dname varchar(20) not null,
daddress varchar(20) default 'Mumbai',
qualification varchar(20) default  'BHMS',
noofpatient_handled int not null

);


select * from Doctor;

insert into Doctor Values (501 , 'Ajinkya' , 'Mumbai' , 'MD' , 6000) , (502 , 'Prasad' , 'Pune' , 'MD' , 4000) ,
(503 , 'Monali' , 'Mumbai' , 'BHMS' , 2000) , (504 , 'Ruhi' , 'Delhi' , 'BHMS' , 1000);




create table AdmittedPatient(


Entry_date date default '2022-06-01',
Discharge_date date default '2022-06-06',
wardno int ,
disease varchar(30),
did int foreign key references Doctor(Did),
Pcode int foreign key references PatientMaster(Pcode)
);

select * from AdmittedPatient;
select * from Doctor;
select * from PatientMaster;

insert into AdmittedPatient values ( '2022-06-2' , '2022-06-4',30 , 'Fever' , 504 , 01);
insert into AdmittedPatient values ( '2022-06-2' , '2022-06-4',30 , 'Fever' , 504 , 1);
insert into AdmittedPatient values ( '2022-06-4' , '2022-06-6',30 , 'Fever' , 503 , 2);
insert into AdmittedPatient values ( '2022-06-4' , '2022-06-6',30 , 'Fever' , 502 , 3);
insert into AdmittedPatient values ( '2022-06-4' , '2022-06-6',30 , 'Fever' , 501 , 4);


create table PatientMaster(
pcode int Primary key,
pname varchar(20),
paddr varchar(20),
age int,
gender varchar(10),
bloodgroup varchar(10),

);
select * from PatientMaster;


insert into PatientMaster values(01,'Mayur' , 'pune' , 29 , 'M' , 'AB+') , (02,'Ketki' , 'Satara' , 26 , 'F' , 'B+'),
(3,'Suraj' , 'Nashik' , 29 , 'M' , 'AB-') , (4,'Shilpa' , 'Latur' , 30 , 'F' , 'AB+' ),
(5,'Riyan' , 'pune' , 29 , 'M' , 'AB+' );








create table Bill(
BillNo int primary key,
bill_amount bigint,
Pcode int foreign key references PatientMaster(Pcode)
);

insert into Bill values (101 , 90000, 01);
insert into Bill values (102 , 80000, 02);

insert into Bill values (103 , 70000, 03);
insert into Bill values (104 , 60000, 04);
insert into Bill values (105 , 90000, 05);

select * from Doctor;
select * from PatientMaster;

select * from AdmittedPatient;
select * from Bill;


--1.	Write a queries to create all tables with primary key ,foreign key

 alter table Doctor 
 add primary key (Did);


  alter table PatientMaster 
 add primary key (Pcode);


 alter table AdmittedPatient
 add primary key (wardno);

 alter table Bill 
 add primary key (BillNo);


--2.	Write a query to describe above tables;

sp_help Doctor;
sp_help PatientMaster;
sp_help AdmittedPatient;
sp_help Bill;


--3.	write a query to drop primary key from patientMaster

alter table patientMaster
drop constraint PK__PatientM__9F96D7D967567CD4;



--4.	Suppose Discharge _date is not present into AdmittedPatient write query to add Discharge_date column into the AdmittedPatient

alter table AdmittedPatient
add Discharge_date date;


--5.	write a query to change the data type ward no int to varchar(10)

alter table AdmittedPatient
alter column wardno varchar(10);


--6.	write a query to drop one foreign key from AdmittedPatient

alter table AdmittedPatient
drop constraint       FK__AdmittedP__Pcode__7E37BEF6 ;



sp_help AdmittedPatient;


--7.	write a query to add foreign key such that if parent is delete or update child also delete or update 





--8.	write a query to add primary key to patientMaster
alter table patientMaster
add primary key (Pcode);



--9.	write a query to insert 5 records into the Doctor table

insert into Doctor Values (501 , 'Ajinkya' , 'Mumbai' , 'MD' , 6000) ;
insert into Doctor Values (502 , 'Prasad' , 'Pune' , 'MD' , 4000) ;
insert into Doctor Values (503 , 'Monali' , 'Mumbai' , 'BHMS' , 2000) ;
insert into Doctor Values(504 , 'Ruhi' , 'Delhi' , 'BHMS' , 1000);
insert into Doctor Values (505 , 'Ruksaar' , 'Delhi' , 'BHMS' , 900);





--10.	write a query find the no. of doctors as per qualification

select qualification,count(*) from Doctor  group by qualification;

select daddress , count(*) from Doctor  group by daddress;

select * from Doctor;


--11.	difference between primary key and unique key

           ----- Primary Key ----------
   --In the case of a primary key, we cannot save NULL values.
   --The primary key tends to generate a clustered index by default.
   --Each table holds just one primary key.
   --With the primary key, we cannot modify or delete the values.

    ------------ unique key -------------
   --In the case of a unique key, we can save a null value, however, only one NULL value is supported.
  --The unique key tends to generate a non-clustered index
  --A table can hold more than one unique key.
  --With the unique key, we can modify the column values.










  --practice----------------
select * from AdmittedPatient;
select * from Doctor;
select * from PatientMaster;
Select * From Bill;


select * from AdmittedPatient;
select Entry_Date, count(*) from AdmittedPatient group by Entry_Date;
select did,count(*) from AdmittedPatient group by did;

select pcode , count(*) from AdmittedPatient group by Pcode;

select Discharge_date,count(*) from AdmittedPatient group by Discharge_date;

select did,count(*) from AdmittedPatient group by did;



select * from Doctor;

select daddress , count(*) from Doctor group by daddress;

select qualification ,count(*) from Doctor group by qualification;


select * from PatientMaster;

select bloodgroup,count(*) from PatientMaster group by bloodgroup;

select gender,count(*) from PatientMaster group by gender;

select age,count(*) from PatientMaster group by age;

select paddr,count(*) from PatientMaster group by paddr;



select * from Bill;


select bill_amount,count(*) from Bill group by bill_amount;

select Pcode,count(*) from Bill group by Pcode;










