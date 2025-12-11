use NEWDB3;

create table Students (
ID int NOT NULL,
EmpName varchar(255) NOT NULL,
City varchar(255) NOT NULL,
Salary int
)

insert into Students( ID, EmpName, City, Salary)
Values ('1', 'Om', 'Indore', '1000');

insert into Students( ID, EmpName, City, Salary)
Values ('2', 'Jay', 'Bareli', '2000');

select * from Students;


create table Student2 (
ID int NOT NULL UNIQUE,      --------- here we have provided the Unique key 
EmpName varchar(255) NOT NULL,
City varchar(255) NOT NULL,
Salary int
)

insert into Student2( ID, EmpName, City, Salary)
Values ('1', 'Om', 'Indore', '1000');

insert into Student2( ID, EmpName, City, Salary)
Values ('2', 'Jay', 'Bareli', '2000');

Select * from Student2;

insert into Student2( ID, EmpName, City, Salary)
Values ('3', 'Om', 'Pune', '3000');

insert into Student2( ID, EmpName, City, Salary)
Values ('4', 'Jay', 'Delhi', '4000');

insert into Student2( ID, EmpName, City, Salary)
Values ('3', 'Ram', 'NsS', '5000');



create table Students (
ID int NOT NULL Primary key,     --- ID is primary key
EmpName varchar(255) NOT NULL,
City varchar(255) NOT NULL,
Salary int
)

insert into Students( ID, EmpName, City, Salary)
Values ('1', 'Om', 'Indore', '1000');

insert into Students( ID, EmpName, City, Salary)
Values ('2', 'JAy', 'Pune', '2000');

Select * from Students;



create table Student3(
ID int NOT NULL Primary key,      -----
EmpName varchar(255) NOT NULL,
City varchar(255) NOT NULL,
Salary int Check (Salary<10000)      ----- here check constarints is inserted as salary should be more than 10000 ,if the value will be lesser than it error
);

select * from Student3;

insert into Student3( ID, EmpName, City, Salary)
Values ('1', 'Om', 'Indore', '9000');

insert into Student3( ID, EmpName, City, Salary)
Values ('2', 'Jay', 'Bareli', '2000');

insert into Student3( ID, EmpName, City, Salary)
Values ('3', 'raj', 'Pun7', '7000');

use NEWDB3;


select * from employee
ORDER By Salary ASC;


select * from employee
ORDER By EmpName ASC;

select * from employee
ORDER By EmpName Desc;


select * from employee
ORDER By Salary Desc;


use NEWDB3;

select * from employee;

alter table employee
Add age int;


alter table employee
Add Wifename Varchar;

alter table employee
drop column age;

alter table employee
drop column  Wifename;


select * from employee;


Update employee
SET Salary = '2000'
where id=2;


Update employee
SET 
Empname = 'Sita',
Salary = '2000',
City = 'Delhi'
where id=2;




use NEWDB3;

select * from employee;

select Empname
from employee;

select Empname AS Myresult
from employee;