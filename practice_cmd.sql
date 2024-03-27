create database Revision;
use Revision;
show tables;
create table student(Id int primary key, Name varchar(20) not null, marks int not null,city varchar(20) not null);
insert into student values(1,'Shivay',98,'Mumbai'),(2,'Anika',87,'Ratnagiri'),(3,"Omkara",90,"Goa");
select * from student;
insert into student values(4,'Bhavya',89,'Mumbai'),(5,'Gauri',70,'Ratnagiri'),(6,'Rudra',80,'Pune'),(7,'Priyanka',85,'Goa');
alter table student add column Country varchar(20) default 'India';
alter table Employee rename student;
alter table student rename column Name to Fname;
alter table student add column Lname varchar(20) default 'Oberoi' after Fname ;
delete from student where Id=7;
alter table student modify Id int auto_increment;
insert into student(Fname, marks,city) values('Priyanka',92,'Goa');
alter table student add column Gov_id int first;
alter table student drop Gov_id;
	-- like
select * from student where Fname like 's%';
select * from student where Fname like '%a';
select * from student where Fname like '%y';
select * from student where Fname like 'o%a';
select * from student where Fname like '_a%';
select * from student where Fname like '%r_';
select * from student where Fname like 'r___a';
select * from student where Fname like 'r%a';

	-- limit
select * from student limit 3;
select * from student order by marks desc;
select * from student order by marks desc limit 3;
select distinct marks from student order by marks desc limit 1;
select distinct marks from student order by marks desc limit 1,1;
select distinct marks from student order by marks desc limit 2,1;
select distinct marks from student order by marks limit 1;


	-- list
select * from student where Id in (2,5,7);
select * from student where Id not in (2,5,7);