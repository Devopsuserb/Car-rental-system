create database ORS
use ORS
create table registrationdetailstable(Name varchar(30), Gender char(9), Phnum varchar(20),email varchar(40) PRIMARY KEY,
											passwrd varchar(30),Addres varchar(400),Actor varchar(10))
Insert into registrationdetailstable values('Krishna', 'M', '8977535382','palli.vamsi59@gmail.com','abc','Vijayawada, Andhra Pradesh, India','user')
Insert into registrationdetailstable values('Krishna', 'M', '8977535382','palli.vamsi51@gmail.com','abc','Vijayawada, Andhra Pradesh, India','admin')
Select * from registrationdetailstable
update registrationdetailstable set passwrd='1' where email='palli.vamsi59@gmail.com'
update registrationdetailstable set passwrd= '123' where email= 'palli.vamsi59@gmail.com'
drop table registrationdetailstable
select passwrd,Actor from registrationdetailstable where email = 'palli.vamsi59@gmail.com'
create proc returnpassword (@email varchar(40))
as
select passwrd,Actor from registrationdetailstable where email = @email
exec returnpassword 'palli.vamsi59@gmail.com'
create proc abc(@Name varchar(20), @Gender char(9), @Phnum varchar(20),@email varchar(40),@passwrd varchar(30),@Addres varchar(400),@Actor varchar(10))
as 
insert into registrationdetailstable values(@Name, @Gender, @Phnum ,@email,@passwrd,@Addres,@Actor)
exec abc'ABC', 'M', '9876','P@P','123','India','user'
update registrationdetailstable set Phnum = '' and Addres= '' where email = ''
drop table cardetails
drop table carbookingdetails
Create table carbookingdetails (CarCode int PRIMARY KEY,CarAvailability varchar(40) Default 'Y', Bookingdate date not null default '2015-11-17',AvailableFrom date not null default '2015-11-17')
insert into carbookingdetails(CarCode) values(1),(2),(3),(4),(5)
insert into carbookingdetails(CarCode) values(11),(12),(13),(14),(15)
insert into carbookingdetails(CarCode) values(21),(22),(23),(24),(25)
Select * from carbookingdetails
Create table cardetails(CarCode int PRIMARY KEY, Cartype VarChar(40),Location varchar (40),carstatus varchar(40) Default 'Working',CarAvailability varchar(40) Default 'Y', Bookingdate date not null default '2015-11-17',AvailableFrom date not null default '2015-11-17', email Varchar(40))
insert into cardetails(CarCode,Cartype,Location) values(1,'Luxury','Kansas'),(2,'Minivan','Kansas'),(3,'Hybrid','Kansas'),(4,'SUV','Kansas'),(5,'Passenger Van Rental','Kansas')
insert into cardetails(CarCode,Cartype,Location) values(11,'Luxury','LeeSummit'),(12,'Minivan','LeeSummit'),(13,'Hybrid','LeeSummit'),(14,'SUV','LeeSummit'),(15,'Passenger Van Rental','LeeSummit')
insert into cardetails(CarCode,Cartype,Location) values(21,'Luxury','GrainValley'),(22,'Minivan','GrainValley'),(23,'Hybrid','GrainValley'),(24,'SUV','GrainValley'),(25,'Passenger Van Rental','GrainValley')
Select CarCode,Cartype,Location,AvailableFrom from cardetails where Location = 'GrainValley'
Select CarCode,Cartype,Location,AvailableFrom from cardetails where email='palli.vamsi59@gmail.com'
Select * from cardetails where Cartype = 'Luxury'and carstatus = 'N'
Select * from carbookingdetails where DATEDIFF(DAY,Bookingdate,GETDATE())+1 > DATEDIFF(DAY,'2013-11-08',GETDATE())
Select * from carbookingdetails where DATEDIFF(DAY,Bookingdate,GETDATE())+1 > DATEDIFF(DAY,'2015-11-27',GETDATE())
Select DISTINCT Location from cardetails
Select *  from carbookingdetails where DATEDIFF(DAY,ReturnDate,GETDATE())> 0
sELECT GETDATE()