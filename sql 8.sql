use NEWDB3;

select * from employee                                                                                
order by Salary;         

select * from employee
order by Salary DESC;

select * from employee
order by City, Salary;
 

select * from employee
 where City= 'delhi'
and Salary=5000;        --- and operator satisfying both the conditions 


select * from employee
 where EmpName='avi' or  ---- or operator
 EmpName='Ram';


SQL IN opearator

select * from employee
where City IN ('pune','mumbai');


select * from employee
where EmpName IN ('avi','ram');              ---- in operator is used to display entire data using only one data point ex. name , id 


select * from employee
where City not IN ('pune','mumbai');         ------ not in is also used to avoid that particular data points




sql between operator


select * from employee
where Salary Between 3000 and 5000;         ----- between operator used to display data in between a range 

select * from employee
where Salary not  Between 3000 and 5000;


select * from employee                  
where EmpName Between 'avi' and 'jay'        ---- 
order by EmpName;

SQL like operator

use NEWDB3;

select * from employee;

select * from employee
where City Like 'P%';

select * from employee
where city like '%i';

select * from employee
where EmpName like '_a%';

select * from employee
where EmpName not like '_a%';

select * from employee
where City like '__m%';

Max Function ------------------------------------

use NEWDB3;

select * from  employee;

select MAX(Id)  AS Result
from employee;

Select MIN(Salary) AS Result
from employee;

use NEWDB3;

select * from employee;

select SUM(Salary) AS result
from employee;

select SUM(Salary) 
from employee
where salary >=5000;

select SUM(Salary) AS result
from employee
where salary between 1000 and 5000;

AVG function

select * from employee;

select AVG(Salary)
from employee

select AVG(Salary)
from employee
where Salary > 4000;

select AVG(Salary) AS Conclusion
from employee
where Salary <=5000;

use NEWDB3;

select * from employee;

select COUNT(Empname)
from employee
where Salary between 2000 and 5000;

select Count(*)
from employee;