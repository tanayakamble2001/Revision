use practice;
create table Store(StoreId varchar(10) primary key,Name varchar(20) not null, Location varchar(20) not null,
					City varchar(20) not null, NoOfEmp int not null,DateOpen date not null,
                    SalesAmt int not null);
insert into Store values('S101','Planet Fashion','Bandra','Mumbai',7,'2015-10-16',40000),
						('S102','Vogue','Karol Bagh','Delhi',8,'2015-07-14',120000),
                        ('S103','Trends','Powai','Mumbai',10,'2015-06-24',30000),
                        ('S104','Super Fashion','Thane','Mumbai',11,'2015-02-06',45000),
                        ('S105','Annabelle','South Extn.','Delhi',8,'2015-04-09',60000),
                        ('S106','Rage','Defence Colony','Delhi',5,'2015-03-01',20000);
select * from Store;
select Name,SalesAmt as Sales_Amount from Store where City in ('Mumbai');
select * from Store Order by Name ASC;
select City , count(StoreId) from Store group by City having count(StoreId)>2;