create database SchoolUniform;
use SchoolUniform;
create table UNIFORM(UCode int primary key, UName varchar(10) not null,UColor varchar(20) not null);
create table COST(UCode int,Size varchar(5) not null, Price int not null,
				foreign key(UCode) references UNIFORM(UCode));
insert into UNIFORM values(1,'Shirt','White'),(2,'Pant','Grey'),(3,'Tie','Blue');
select * from UNIFORM;
insert into COST values(1,'L',580),(1,'M',500),(2,'L',890),(2,'M',810);
select * from COST;    
select u.UCode,u.UName,u.UColor,c.Size,c.Price from UNIFORM as u , Cost as c where u.UCode=c.UCode; 
select UNIFORM.UCode,UNIFORM.UName,UNIFORM.UColor,COST.Size,COST.Price 
from UNIFORM left join COST on UNIFORM.UCode=COST.UCode;
select * from UNIFORM natural join COST;