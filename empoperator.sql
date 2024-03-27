create database emp;
use emp;
create table employee(ID int primary key, Name varchar(20) not null,Department varchar(20) not null,
						Salary float not null, Location varchar(20) null); 
insert into employee values(1,'Jay','HR',5000,'Chennai'),(2	,'Yash','Management',7000,'Pune'),
						(3,'Annand','Training',6000,'Chennai'),(4,'Ruhi','Sales',4000,'Delhi');
insert into employee(ID,Name,Department,Salary)values(5,'Pratik','Admin',3000);
select * from employee;
select ID,Name from employee where Location in('Chennai','Mumbai','Pune');
select Name from employee where Location is null;
select * from employee order by Salary asc;




select date_format('1947-08-15','%W');
select date_format('2001-08-18','%M');
select upper('tanaya');


select concat('MySQL',' is',' Fun');
select replace('I Love Coding','Coding','MySQL');
select length('I Love India');