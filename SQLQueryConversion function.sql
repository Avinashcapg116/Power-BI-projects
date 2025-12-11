------conversion function----


!1) Convert 2) Cast 

use AdventureWorks2022

----Convert
Select Convert(int,5.45)
Select Convert(float,5.45)
select Convert(varchar,5.45)
Select Convert(datetime, '2025-9-5')
select firstname, LastName, modifieddate,
     Convert(Varchar, Modifieddate) DateToText
from person.person



----Cast 
Select Cast (5.45 As int)
Select Cast (5.45 As float)
Select Cast(5.45 As Varchar)
Select Cast('2025-9-5' As datetime) as texttodatewithdata
select firstname, LastName, modifieddate,
     Cast(Modifieddate as varchar) DateToText
from person.person



