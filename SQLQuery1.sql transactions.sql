--roll back command---

use AdventureWorks2022

begin tran
update person.person
set FirstName = 'Tom' where BusinessEntityID = 2
Select * from person.person

rollback
commit
--commit--

the comit command is used to save changes invoked by a transaction to the database


savepoint command---
begin tran
update person.person
set FirstName = 'Tom' where BusinessEntityID = 2
Save tran SavefirtsName
update person.person
set MiddleName = 'Z' where BusinessEntityID = 2
Save tran SaveMiddleName
update person.person
set LastName = 'Walker' where BusinessEntityID = 2
Save tran SaveLastName
 
 Rollback tran SaveMiddleName

 select * from person.person