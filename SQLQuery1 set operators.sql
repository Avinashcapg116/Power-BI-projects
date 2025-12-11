use AdventureWorks2022



-- Union operator --
select CurrencyCode --109 rows
from Sales.CountryRegionCurrency
Union
select CurrencyCode -- 105 rows
from Sales.Currency

this combines two select statements but displays only distinct values 

--Union all operator ---
select CurrencyCode --109 rows
from Sales.CountryRegionCurrency
Union all 
select CurrencyCode -- 105 rows
from Sales.Currency
 this combines two select staments but displays all the values present over there

 -----------Intersect Operator -----------

 Select * from HumanResources.Employee


 --all job titles for position held by both males and females
 Select JobTitle from HumanResources.Employee
 where Gender = 'M'     --- Job titles for males (206 Rows)
Intersect
 Select JobTitle from HumanResources.Employee
 where Gender = 'F'     --- Job titles for Females (84 Rows)

only 26 job titles that are held by both male and females 


---with inner join----

Select Distinct EM.Jobtitle 
from HumanResources.Employee as EM
Join HumanResources.Employee as EF
on EM.JobTitle = EF.JobTitle
  And EM.Gender = 'M'
  And EF.Gender = 'F'