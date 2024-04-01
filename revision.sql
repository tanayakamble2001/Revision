	-- create database
create database pract;
	-- Display databases
show databases;
	-- select Database
use pract;
use practice;
	-- create table
create table Practice(id int,name varchar(20) not null);
	-- display structure of table
desc Practice;
desc Pract;
	-- insert value into table
insert into Practice values(1,'ABCD'),(2,'EFGH');
	-- Display data from the table
select * from Practice;
	-- add primary key
alter table Practice add primary key(id);
alter table Practice modify id int primary key;
	-- add column and set as default
alter table Practice add column city varchar(20) default 'Mumbai';
	-- rename table name
alter table Practice rename Pract;
	-- rename column name
alter table Pract rename column name to Fname;
	-- add column in between
alter table Pract add column Lname varchar(20) not null after Fname;
	-- add column to fist
alter table Pract add column gender varchar(20) not null;
	-- delete column
alter table Pract drop gender;
	-- truncate tabele
truncate table Pract;
insert into Pract(id,Fname,Lname) values(1,'ABCD','qwer'),(2,'EFGH','uiop');
select * from Pract;
	-- auto increment
alter table Pract modify id int auto_increment;
	-- update 
update Pract set Fname='Anvi' where id=1;
	-- delete particular row
delete from Pract where id=2;
	-- delete all values from table
delete from Pract;
	-- safe update mode
set sql_safe_updates=0;
	-- delete table from root
drop table Pract;
	-- List operator
select * from Pract where id in (1);
select * from Pract where id not in (1);
	-- Set operator
create table table1(id int ,name varchar(20));
create table table2(id int ,name varchar(20));

insert into table1 values(1,'Tanaya'),(2,'Vihan'),(3,'Kasturi'),(4,'Isha'),(5,'Yuvaraj');
insert into table2 values(1,'Khushi'),(2,'Vihan'),(3,'Tanaya'),(4,'Isha'),(5,'Anvi');
		-- union
select * from table1 union select * from table2;
		-- union all
select * from table1 union all select * from table2;
		-- interset
select * from table1 intersect select * from table2;
		-- except
select * from table1 except select * from table2;
	-- Like operator
select * from table1 where name like 'v%';
select * from table1 where name like '%a';
select * from table1 where name like 't%a';
select * from table1 where name like 'v___n';
select * from table1 where name like '_a%';
select * from table1 where name like '%a_';
	-- limit operator
select * from table2 limit 3;
select * from table2 limit 1,2;
select * from table2 order by id desc limit 3;
	-- between operator 
select * from table1 where id between 2 and 4;
	-- without between 
select * from table1 where id>=2 and id<=4;
	-- Aggregate function
select max(id) from table2;
	-- group by 
show tables;
select * from store;
select count(StoreId), City from Store group by City;
	-- having 
select count(StoreId),city from Store group by city having count(StoreId)>2;
select count(StoreId),city from Store where StoreId>='S101' group by city having count(StoreId)>2;
	-- join Customers and Items_ordered
select c.cust_id , c.name,o.prod_name from Customer as c inner join Orders as o on c.cust_id=o.Cust_id;
select * from Customer as c left join Orders as o on c.cust_id=o.Cust_id;
select * from Customer as c right join Orders as o on c.cust_id=o.Cust_id;
select c.cust_id , c.name,o.prod_name from Customer as c natural join Orders as o;
select * from Customer natural join Orders;
select  c.cust_id , c.name,o.prod_name from customer as c cross join Orders as o;