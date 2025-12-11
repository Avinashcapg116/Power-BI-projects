use Company

create table
tableEmployees(
EmployeeID int, 

EmployeeName Varchar(20), Phone INT, Age INT, DepID INT);

SELECT * FROM tableEmployees


insert into tableEmployees(
EmployeeID, EmployeeName, Phone, Age , DepID )
Values (1001, 'Ram', 657489, 25, 2);

insert into tableEmployees(
EmployeeID, EmployeeName, Phone, Age , DepID )
Values (1002, 'Lakhan', 657488, 25, 2);

insert into tableEmployees(
EmployeeID, EmployeeName, Phone, Age , DepID )
Values (1003, 'Bharat', 657487, 25, 3);

insert into tableEmployees(
EmployeeID, EmployeeName, Phone, Age , DepID )
Values (1004, 'Shatrughna', 657486, 25, 1);


create table
tableDepartments(
DepID int,
DepartmentName varchar(20));

insert into
tableDepartments(
DepID,
DepartmentName)
Values
('1', 'IT');

insert into
tableDepartments(
DepID,
DepartmentName)
Values
('2', 'HR');

insert into
tableDepartments(
DepID,
DepartmentName)
Values
('3', 'FS');

Select * from tableDepartments

delete from tableDepartments
where DepId = 3
----------------------inner join----------------------------

SELECT EmployeeID,EmployeeName, DepartmentName, Phone
FROM tableEmployees AS E 
Join tableDepartments AS D
on E.DepID=D.DepID;


use AdventureWorks2022

select * from person.Person
 inner join person.EmailAddress
on person.BusinessEntityID=EmailAddress.BusinessEntityID

select FirstName, LastName from person.Person
 inner join person.EmailAddress
on person.BusinessEntityID=EmailAddress.BusinessEntityID


------------------------Left outer Join---------------------------

select * from production.product

select * from sales.SalesOrderDetail

select * from Production.product as p
left join sales.SalesOrderDetail as s
on p.ProductID=s.ProductID



select Name,StandardCost from Production.product as p
left join sales.SalesOrderDetail as s
on p.ProductID=s.ProductID



select Name,StandardCost from Production.product as p
left join sales.SalesOrderDetail as s
on p.ProductID=s.ProductID
where SalesOrderDetailID is null

-------------------Right Outer Join------------------


select * from Production.product as p
Right join sales.SalesOrderDetail as s
on p.ProductID=s.ProductID


select Name,StandardCost from Production.product as p
right join sales.SalesOrderDetail as s
on p.ProductID=s.ProductID


--------full outer join-----------

select * from Production.product as p
full outer join sales.SalesOrderDetail as s
on p.ProductID=s.ProductID


--------self join----------

---to find product with the same list price---

Select P1.Name, P2.Name, P1.ListPrice
from Production.product P1
Join Production.Product P2
On  P1.ListPrice = P2.ListPrice
  And P1.ListPrice <> 0 -- Exclude Products with 0 price
  and P1.Name <> P2.Name -- Exclude the same product
  order by ListPrice
