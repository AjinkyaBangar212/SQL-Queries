Create table customer(

custid int primary key,
cname varchar(20),
city varchar(20),
mobile bigint

);


create table orderDetails(
orderid int primary key,
orderdate date,
custid int,
constraint fckid foreign key(custid) references customer (custid) 
on delete set null on update cascade

);


select * from customer;
select * from orderDetails;


delete from customer where custid = 3;

update customer 
set custid = 9 where custid = 1;






create table item(

itemid int primary key,
itemname varchar(30),
price int
);

--------------------------------Composite Primary Key---------------
create table orderItemDetails(
orderid int ,
itemid int,
qty int,
primary key(orderid, itemid),
foreign key(orderid) references orderDetails(orderid),
foreign key (itemid) references item (itemid)

); 


select * from customer;
select * from orderDetails;
select * from item;
select * from orderItemDetails;







