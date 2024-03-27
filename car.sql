create database CARSHOWROOM;
use CARSHOWROOM;
create table INVENTORY(car_id int primary key , Stores_Name varchar(20) not null, Price float not null,
					Model varchar(20) not null, Year_of_mfd year not null, Fuel_Type varchar(20) not null);
desc INVENTORY;
create table CUSTOMER(cust_id int primary key,Name varchar(20) not null, Address Varchar(50) not null,
					Phone_no bigint not null,Email varchar(30) not null);
desc CUSTOMER;
create table EMPLOYEE(emp_id int primary key,Name varchar(20) not null,DOB date not null,
					DateOf_Join date not null,Designation varchar(20) not null,Salary float);
desc EMPLOYEE;
create table SALES(Invoice_id int primary key,car_id int , cust_id int,Sale_date date not null,
					modeofpayment varchar(30) not null,emp_id int, selling_price float,
                    foreign key(car_id) references INVENTORY(car_id),
                    foreign key(cust_id) references CUSTOMER(cust_id),
                    foreign key(emp_id) references EMPLOYEE(emp_id));
desc SALES;