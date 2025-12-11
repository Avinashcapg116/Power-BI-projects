--Get date function--

Select Getdate()

Select ISdate(Getdate())

Select ISdate(2025-09-24);

Select Day('2025-05-09')
Select Month('2025-05-09')
Select Year('2025-05-09')

----Datepart function---

Select DATEPART(year, '2025-02-09 5:24:22')
Select DATEPART(Day, '2025-02-09 5:24:22')
Select DATEPART(MONTH, '2025-02-09 5:24:22')
Select DATEPART(HOUR, '2025-02-09 5:24:22')
Select DATEPART(minute, '2025-02-09 5:24:22')


--Datetime function--
Select DATEPART(minute, '2025-02-09 5:24:22') --- return integer

--but in datetime function--
Select Datename(minute, '2025-02-09 5:24:22')
Select Datename(WEEKDAY, '2025-02-09 5:24:22') -- will return varchar / string
Select Datename(DAYOFYEAR, '2025-02-09 5:24:22') 
Select Datename(QUARTER, '2025-02-09 5:24:22') 

--dateadd function--

 -- here in this function we csan add or minimize day , momth, year from given parameter with the value
Select Dateadd(DAY, 5, '2025-02-09') 
Select Dateadd(DAY, -5, '2025-02-09') 

---datediff function--

select datediff(YEAR,'1990-12-09','2001-12-09')

select datediff(DAY,'1990-12-09','2001-12-09')

select datediff(MONTH,'1990-12-09','2001-12-09')

----datetime conversion------

Select 
         CONVERT(varchar,GETDATE(),1) as 'format-1',
	     CONVERT(varchar,GETDATE(),2) as 'format-2',
         CONVERT(varchar,GETDATE(),3) as 'format-3',
	     CONVERT(varchar,GETDATE(),4) as 'format-4',
		 CONVERT(varchar,GETDATE(),1) as 'format-5',
	     CONVERT(varchar,GETDATE(),2) as 'format-6',
         CONVERT(varchar,GETDATE(),3) as 'format-7',
	     CONVERT(varchar,GETDATE(),4) as 'format-10'

USe AdventureWorks2022

Select Convert (Varchar,BirthDate) from HumanResources.Employee
Select Datediff(year,Convert(Varchar,BirthDate,10),GETDATE())
from HumanResources.Employee

---time conversion---
 select
  Convert(varchar, GETDATE(),8) as 'Format-8',
   Convert(varchar, GETDATE(),14) as 'Format-14',
    Convert(varchar, GETDATE(),24) as 'Format-24',
   Convert(varchar, GETDATE(),108) as 'Format-108'