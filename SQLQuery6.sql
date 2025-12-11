use NEWDB3;

create table Students (
ID int NOT NULL UNIQUE,
EmpName varchar(255) NOT NULL,
City varchar(255) NOT NULL,
Salary int
)

insert into Students( ID, EmpName, City, Salary)
Values ('1', 'Om', 'Indore', '1000');

insert into Students( ID, EmpName, City, Salary)
Values ('2', 'Jay', 'Bareli', '2000');

Select * from Students;

insert into Students( ID, EmpName, City, Salary)
Values ('3', 'Om', 'Pune', '3000');

insert into Students( ID, EmpName, City, Salary)
Values ('4', 'Jay', 'Delhi', '4000');

insert into Students( ID, EmpName, City, Salary)
Values ('4', 'Ram', 'NsS', '5000');
 

 --------------------------------Primary key---------------------------------


 create table Students (
ID int NOT NULL Primary key,
EmpName varchar(255) NOT NULL,
City varchar(255) NOT NULL,
Salary int
)

insert into Students( ID, EmpName, City, Salary)
Values ('1', 'Om', 'Indore', '1000');

insert into Students( ID, EmpName, City, Salary)
Values ('2', 'Jay', 'Bareli', '2000');

select * from Students;


-----------------Foreign Key-----------------------

--------------------------------------

Check Constraints 

use NEWDB3;


create table Students (
ID int NOT NULL Primary key,
EmpName varchar(255) NOT NULL,
City varchar(255) NOT NULL,
Salary int Check (Salary<10000)
);

insert into Students( ID, EmpName, City, Salary)
Values ('1', 'Om', 'Indore', '11000');

insert into Students( ID, EmpName, City, Salary)
Values ('2', 'Jay', 'Bareli', '22000');

insert into Students( ID, EmpName, City, Salary)
Values ('3', 'Ram', 'Pune', '20000');

select * from Students;

