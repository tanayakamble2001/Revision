use practice;
create table EMPLOYEE(Id int primary key,Name varchar(20) not null, Department varchar(20) not null,
						salary float not null,Location varchar(20) not null);
insert into EMPLOYEE values(1,'Jay','HR',5000.00,'Mumbai'),(2,'Yash','Management',7000.00,'Pune'),
					(3,'Annand','Training',6000.00,'Chennai'),(4,'Ruhi','Sales',4000.00,'Delhi'),
                    (5,'Pratik','Admin',3000.00,'Pune'),(6,'Raj','Training',5000.00,'Mumbai');
select * from EMPLOYEE;
update EMPLOYEE set salary=8000.00 where Id=5;
update EMPLOYEE set Department='HR' where Id=6;
delete from EMPLOYEE where Id=3;
select * from EMPLOYEE order by salary desc;
select * from EMPLOYEE where Location='Mumbai';