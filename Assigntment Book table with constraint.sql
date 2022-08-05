use PB3;

create table Book(

bid int primary key,
bname  varchar(20) unique ,
bprice int check(bprice>100),
bauthor varchar(20) not null,
bLibrarianName varchar(30) default 'Mr.Wane'


);




insert into Book Values (1,'Harry Potter' , 2000 , 'miss.Lily' , 'Mr.Devid');
insert into Book Values (2,'Madame Bovary' , 1200 , 'ms.Diya' , 'Mr.Reyan');
insert into Book Values (3,' The Divine Comedy' , 1500 , 'ms.Browny' , 'Mr.Yello');
insert into Book Values (4,'The Odyssey' , 1800 , 'Mr.Dev' , 'Mr.Red');
insert into Book Values (5,'War and Peace' , 6000 , 'miss.Lily' , 'Mr.Sandiago');
insert into Book Values (6,'Hamlet' , 5000 , 'miss.Lily' , 'Mr.Devid');


--default
insert into Book  (bid , bprice , bauthor )Values (7 , 2000 , 'miss.Lily');


select  * from Book;


























































