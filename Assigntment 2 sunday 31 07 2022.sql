create database AssigntmentSecond;
use AssigntmentSecond;




-------------------------------------------------------------------


use AssigntmentSecond;

create table Customer(
Cust_Id int primary key,
name varchar(20),
address_line1 varchar(30),
address_line2 varchar(30),
city varchar(20),
pin_code bigint,
totalRequests int

);

insert into Customer values (501 , 'John' , 'St Sant Road' , 'US' , 'CA' , 589658 , 1 ) , 
(502 , 'John' , 'St Sant Road' , 'US' , 'CA' , 589658 , 1 );



create table Service_Status(
Status_Id int primary key check (Status_Id < 5 )
--desc - values of id and desc are (1-OPEN, 2- IN_PROGRESS, 3-CLOSED,4-Cancelled)
);

alter table Service_Status
add desc_status varchar(30);


select * from Service_Status;


create table Service_Request(
Service_Id int primary key,
Cust_Id int foreign key references Customer(Cust_Id) ON UPDATE CASCADE
ON DELETE CASCADE,
service_desc varchar(20),
request_open_date date,
status_id int foreign key references Service_Status (Status_Id) ON UPDATE CASCADE ON DELETE CASCADE, 
Emp_id int foreign key references Employee (Emp_Id) ON UPDATE CASCADE ON DELETE CASCADE, 
request_closed_date date,
charges int
);


create table Employee(
Emp_Id int primary key, 
name varchar(20), 
age int check (age>18),
requestsCompleted varchar(20),
emp_rating int 

);


--1.	Write a query to create Employee table.


create table Employee(
Emp_Id int primary key, 
name varchar(20), 
age int check (age>18),
requestsCompleted varchar(20),
emp_rating int 

);


--2.	Write a query to add column totalRequests (integer) to customer table (Assume it was not present earlier)

alter table Customer
add totalRequests int;

--3.	Write single query to create ReqCopy table which will have same structure and data of service_request table.
select * into ReqCopy from Service_Request;
--using this query creating dec to dec copy of service_request table




--4.	Show customer name, service description, charges	of requests served by employees older than age 30. (make use of sub query)

select service_desc,charges from Service_Request
where Emp_id =
(select Emp_id from Employee where age >30 );




--5.	Write a query to select customer names for whom employee ‘John’ has not served any request.(make use of sub query)

select name from Customer 
where Cust_Id not in 
(select Cust_Id from Service_Request where Emp_id = 
(select Emp_id from Employee where name = 'John'));

select * from Employee;
--6.	Show employee name, total charges of all the requests served by that employee. Consider only ‘closed’ requests.

select name,sum(charges) from Employee e inner join Service_Request sr
on e.Emp_Id = sr.Emp_id 
inner join Service_Status ss on sr.status_id = ss.Status_Id
where desc_status = 'closed' group by sr.Emp_id;


--7.	Show service description, customer name of request having third highest charges.





--8.	Delete all requests served by ‘Sam’ as he has left the company.


delete from Employee where name = 'Sam';


--9.	Delete all cancelled requests from request table.

delete from Service_Request 
where status_id = 
(select status_id from Service_Status where status_id = 4);


--10.	Update charges of request raised by customer ‘Sony’. Add 10% to the charges if charges are less than 100.





--11.	Update totalRequests of customer table. TotalRequests should be total requests given by that customer.




--12.	Create a view which will show customer name, service desc , employee name, service charges , status desc of requests which are not closed.




--13.	Create a view to which shows city, total charges collected in that city.



--14.	Give one example of left outer join using above database.




--15.	Show name of all employees who have same rating as employee ‘John’ 20.State at least 4 aggregate functions used in sql.







select * from Employee;
































