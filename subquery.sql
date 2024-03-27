use emp;
create table Student_info(sid int primary key auto_increment,Name varchar(20) not null,
						  dept varchar(20) not null,Percentage float not null);
insert into Student_info(Name,dept,Percentage) values('Harry','IT',95.26),('Mac','CS',98.45),
						  ('Rox','Mechanical',75.69),('Shree','IT',85.65),('Ramesh','CS',89.45);
select * from Student_info;
select * from student_info where Percentage=(select max(Percentage) from Student_info);
select * from Student_info where Percentage=(select max(Percentage) from Student_info where 
			  Percentage <(select max(Percentage)from student_info));
              
