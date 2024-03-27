use practice;
create table Student(stu_id int primary key, stu_name varchar(20) not null,stu_address varchar(20) not null,
					 stu_phno bigint not null,stu_percentage float not null);
insert into Student values(1,'Rahul','Agra',9557806625,85),(2,'Ankit','Delhi',8855664471,75),
						  (3,'Shailendra','Noida',7213457896,92);
select * from Student;
select stu_id,stu_name,stu_address,stu_percentage from Student where stu_percentage>80;
update Student set stu_percentage=stu_percentage+2 where stu_id=1;
set sql_safe_updates=0;
delete from Student where stu_name='Ankit';