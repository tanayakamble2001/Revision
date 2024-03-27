create database emp;
use emp;
create table employee(eid int primary key,ename varchar(20),esalary float, email varchar(30),dob date);
insert into employee values(1,'XYZ','3000.89','xyz@gmail.com','1990-08-30'),
							(2,'ABC','2300.90','abc@gmail.com','1980-03-21');
select * from employee;
update employee set esalary='4000.68',dob='1993-08-30' where eid=1;
set sql_safe_updates=0;
delete from employee;