use practice;
create table Movie(MovieId int primary key,MovieName Varchar(20) not null,Category varchar(20) not null,
					ReleaseDate date ,ProductionCost float,BusinessCost float);
insert into Movie values(001,'Hindi_Movie','Musical','2018-04-23',124500,130000),
						(002,'Tamil_Movie','Action','2016-05-17',112000,118000),
                        (003,'English_Movie','Horror','2017-08-06',245000,360000),
                        (004,'Bengali_Movie','Adventure','2017-01-04',72000,100000),
                        (005,'Telugu_Movie','Action',null,100000,null),
                        (006,'Punjabi_Movie','Comedy',null,30500,null);
select * from Movie;
select MovieId,MovieName,(ProductionCost+BusinessCost) as Total_Earning from Movie;
select Category from Movie;
select MovieId,MovieName,(BusinessCost-ProductionCost) as Net_Profit from Movie;