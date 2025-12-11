----schema objects---

--shcema meaning collection of data objects including tables , views, indexes 
--schema belongs to one database and a database may have multiple schemeas
--schemas makes work simple----

--create schema--

CREATE SCHEMA TestSchema
AUTHORIZATION guest

create table Departments
(                                      -- if we create a table and dosent specifi schema name it will crete in dbo schema by default
ID int not null,
 DepartmentName Varchar Not Null
)


create table TestSchema.Departments
(                                    
ID int not null,
 DepartmentName Varchar Not Null
)
--change schema name of a table--
Create Schema NewSchema

Alter Schema NewSchema
Transfer testschema.departments

--drop schema--

Drop Schema TestSchema
Drop Schema NewSchema

Alter Schema Humanresources
transfer NewSchema.Departments 

--views---

virtual tables based on the result set of an sql statement

--create view--
Create View VPersonwithMailAddress As
Select FirstName, LastName,EmailAddress from person.person As p
Join Person.EmailAddress as E 
on P.BusinessEntityID= E.BusinessEntityID

select * from VPersonwithMailAddress

drop view VPersonwithMailAddress

------------Sequence -----

--it is an object in sql server that is used to generate a number of sequence--

--create sequence

Create sequence Sequenceobject
Start with 1
Increment by 1

--Next sequence value--

Select Next value for SequenceObject

--Current sequence value--

Select * from sys.sequences
where name = 'SequenceObject'  

Select current_value from sys.sequences
where name = 'SequenceObject' 

--restart sequence value--

Alter Sequence Sequenceobject
Restart with 1

--- sequence value in insert statemeent 
Insert into HumanResources.Department
Values(
Next value for sequenceobject, 'S'
)
Insert into HumanResources.Department
Values(
Next value for sequenceobject, 'P'
)
Insert into HumanResources.Department
Values(
Next value for sequenceobject, 'K'
)


--Create Decreent sequence --
Create Sequence DecSequence
As Int
Start with 100
Increment By -1

SELECT nEXT VALUE for DecSequence

--Create a sequence with min and max value
create sequence MinMaxseq
Start with 100
Increment by 20
Minvalue 100
Maxvalue 200

Select next value for minmaxSeq

alter sequence MinMaxseq
Increment by 20
Minvalue 100
Maxvalue 200
cycle