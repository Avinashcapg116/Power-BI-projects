use logindb;

create table employee(
ID int,
EmpName Varchar(255),
DeptName Varchar (255),
Salary int 

)

Insert Into employee
values ( 1, 'Sam', 'HR', 1000);


Insert Into employee
values ( 2, 'Raj', 'IT', 2000);

Insert Into employee
values ( 3, 'Sam', 'Admin', 3000);


Insert Into employee
values ( 4, 'Raj', 'Finance', 4000);

Insert Into employee
values ( 5, 'Jay', 'HR', 1000);


Insert Into employee
values ( 6, 'Ram', 'IT', 2000);

Insert Into employee
values ( 7, 'Sher', 'Admin', 3000);


Insert Into employee
values ( 8, 'Ravi', 'Finance', 4000);

Insert Into employee
values ( 9, 'Sam', 'HR', 1000);


Insert Into employee
values ( 10, 'Raj', 'IT', 2000);

Insert Into employee
values ( 11, 'Sam', 'Admin', 3000);


Insert Into employee
values ( 12, 'Raj', 'Finance', 4000);

Insert Into employee
values ( 13, 'shiv', 'HR', 1000);


Insert Into employee
values ( 14, 'ganu', 'IT', 2000);

Insert Into employee
values ( 15, 'vishnu', 'Admin', 3000);


Insert Into employee
values ( 16, 'Rajesh', 'Finance', 4000);
select * from employee;

Insert Into employee
values ( 17, 'Sameer', 'HR', 1000);


Insert Into employee
values ( 18, 'Rajesh', 'IT', 2000);

Insert Into employee
values ( 19, 'kishor', 'Admin', 3000);


Insert Into employee
values ( 20, 'viju', 'Finance', 4000);

Insert Into employee
values ( 21, 'gaju', 'HR', 1000);


Insert Into employee
values ( 22, 'avi', 'IT', 2000);

Insert Into employee
values ( 23, 'gulam', 'Admin', 3000);


Insert Into employee
values ( 24, 'Raftaar', 'Finance', 5000);
select * from employee;

delete  from employee
where ID = ( 16)

select DeptName, max (salary) as maxsalary
from employee
group by DeptName;


select e.*,
max (salary) over () as maxsalary
from employee e;


select e.*,
max (salary) over (partition by deptname) as maxsalary
from employee e;



-------------------------row number--------------------------


select e.*,
row_number () over (Order By e.Salary) as rn
from employee e;


SELECT e.*,
       ROW_NUMBER() OVER (PARTITION BY deptname ORDER BY e.ID) AS rn
FROM employee e;


-- fetch the first 2 employees from each department to join the company 


select * from (
SELECT e.*,
       ROW_NUMBER() OVER (PARTITION BY deptname ORDER BY e.ID) AS rn
FROM employee e) x
where x.rn < 3;

