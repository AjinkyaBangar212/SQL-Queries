use PB3;


create table Hotel (

hotelid int ,
hotelname varchar(20)

);

--how to add coloumn  after creating table using alter key

alter table Hotel add rating int;

alter table Hotel add email varchar(20);

alter table Hotel add menu varchar(20);
alter table Hotel add Staff varchar(20);
alter table Hotel add locality varchar(30);




--how to drop coloumn  after creating table using alter key
alter table Hotel drop column email;

alter table Hotel drop column menu;

alter table Hotel drop column locality;




--how to Change coloumn data type  after creating table using alter key

alter table Hotel alter column rating float;

alter table Hotel alter column staff int;

alter table Hotel alter column staff varchar(30);




--how to add constraint after creating table

alter table Hotel 
alter column hotelid int not null;


alter table Hotel add primary key (hotelid);

alter table Hotel add unique (staff);


--how to add constraint after creating table

alter table Hotel drop constraint PK__Hotel__17AA30FAA4224F73;

alter table Hotel drop constraint UQ__Hotel__BA808F7A00B3D439;


select * from Hotel;


sp_help 'Hotel';







