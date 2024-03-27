use practice;
create table product(Id int primary key,Name varchar(20) not null,Price float not null,Quantity int not null);
insert into product values(1,'TV',45000,3),(2,'Bike',85000,2),(3,'Washing Machine',40000,4),
						(4,'Fan',18000,10),(5,'Car',95000,2);
select * from product;
select Name,Price from product;
select Name,price-price*(0.2) as price_discount from product; 
select * from product where price<60000;
select * from product where Quantity between 3 and 10; 
