use NEWDB3;


select * from employee;


create procedure AllRecords 
AS
Select * from employee
Go;

exec AllRecords;



create procedure AllRecords2 @City varchar(20)
AS
Select * from employee
where City= @City;

exec AllRecords2 @City = 'Pune'


create procedure AllRecords4 @City varchar(255), @EmpName varchar(255)
AS
Select * from employee 
where City = @City
AND
EmpName = @EmpName;

exec AllRecords4 @City = 'Pune', @EmpName = 'Om'



use NEWDB3;


exec AllRecords;

Create Index Myindex
on employee (EmpName);

Create Index Myindex2
on employee (EmpName, Salary);

Drop Index Employee.Myindex2;


use Newdb3;

select * into Empbackup2025
from employee;

select * from Empbackup2025

select Empname, Salary into Mybackup
from employee;

select * from Mybackup;

select Empname From employee;


use NEWDB3;


select * from employee;

Select top 2 * from employee;

Select Top 50 percent * from employee;

select top 4 * from employee;




Select Top 2  * from employee
where Salary > 5000;



backup database NEWDB3
to disk='C:\backup\mybackup.bak';










use NEWDB3;

select * from employee;

create view [Employees Raj] AS
select Empname, City
from employee
where City = 'Pune';

select * from [Employees Raj];

create view [Salary Above 5000] AS
select Empname, City, Salary
from employee
where Salary > 5000;

select * from [Salary Above 5000]

drop view [Employees Raj]

