use practice;
create table Customers(customerid int primary key,firstname varchar(20) not null,lastname varchar(20) not null,
						city varchar(20) not null,state varchar(20) not null);
insert into Customers values(10101,'John','Gray','Lynden','Washington'),(10298,'Leroy','Brown','Pinetop','Arizona'),
                    (10299,'Elroy','Keller','Snoqualmie','Washington'),(10315,'Lisa','Jones','Oshkosh','Wisconsin'),
                    (10325,'Ginger','Schultz','Pocatello','Idaho'),
                    (10329,'Kelly','Mendoza','Kailua','Hawaii'),
                    (10330,'Shawn','Dalton','Cannon Beach','Oregon'),
                    (10338,'Michael','Howell','Tillamook','Oregon'),
                    (10339,'Anthony','Sanchez','Winslow','Arizona'),
                    (10449,'Elroy','Cleaver','Globe','Arizona');
select * from Customers;
create table ITEMS_ORDERED(customerid int , order_date date not null,item varchar(20) not null,quantity int not null , 
					price float not null,foreign key(customerid) references Customers(customerid));
insert into ITEMS_ORDERED values(10330,'1999-06-30','Pogo stick',1,28.00),(10101,'1999-06-30','Raft',1,58.00),
					(10298,'1999-07-01','Skateboard',1,33.00),(10101,'1999-07-01','Life Vest',4,125.00),
                    (10299,'1999-07-06','Parachute',1,1250.00),(10339,'1999-07-27','Umbrella',1,4.50),
                    (10449,'1999-08-13','Unicycle',1,180.79),(10329,'1999-08-14','Ski Poles',2,25.50),
                    (10101,'1999-08-18','Rain Coat',1,18.30);
select customerid,date_format(order_date,'%d-%b-%Y'),item,quantity,price from ITEMS_ORDERED;
select c.customerid,c.firstname,c.lastname,o.order_date,o.item,o.price from Customers as c inner join ITEMS_ORDERED as o
			on c.customerid=o.customerid;
select c.customerid,c.firstname,c.lastname,c.state,o.order_date,o.item,o.price from Customers as c inner join ITEMS_ORDERED as o
			on c.customerid=o.customerid order by state desc;
            
select state,count(customerid) as Number_of_people from Customers group by state;
select item , max(price),min(price) from ITEMS_ORDERED group by item;
select customerid,count(item),sum(price) from ITEMS_ORDERED group by customerid;
drop table Customers;
drop table ITEMS_ORDERED;




create table Customer(cust_id int primary key , Name varchar(20),Occupation varchar(20),Age int);
insert into Customer values(101,'Peter','Engineer',32),(102,'Joseph','Developer',30),(103,'John','Leader',28),
						   (104,'Stephen','Scientist',45),(105,'Suzy','Carpenter',26),
                           (106,'Bob','Actor',25),(107,NULL,NULL,NULL);
select * from Customer;
create table Orders(order_id int primary key,cust_id int,foreign key(cust_id) references Customer(cust_id),
					Prod_name varchar(20)not null,Order_date date not null);
insert into Orders values(1,101,'Laptop','2022-01-10'),(2,103,'Dekstop','2022-02-11'),(3,106,'Iphone','2022-03-13'),
					(4,104,'Mobile','2022-03-05'),(5,102,'TV','2022-03-20');
select * from Orders;
select * from Customer where Name is null;
select * from Customer where cust_id not in (select cust_id from Orders);
select c.Name from Customer as c inner join Orders as o on c.cust_id=o.cust_id where o.Prod_name='Laptop';
select c.cust_id,c.Name,c.Occupation,c.Age from Customer as c inner join Orders as o on c.cust_id=o.cust_id 
		where o.Prod_name='Iphone';
select * from Customer where cust_id not in (select cust_id from Orders);
select count(cust_id) from Customer where cust_id in (select cust_id from Orders);