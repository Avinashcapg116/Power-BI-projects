---WILDCARD OPERATIONS-----


Use AdventureWorks2022


----find the values that starts with 'ang'
select * from person.person where FirstName like 'ang%'


----find the values that starts with 'ang'
select * from person.person where FirstName like '%inda'


----find the values that have 'inda' in any position
select * from person.person where FirstName like '%inda%'

----find six letter names ending with 'inda'
select * from person.person where FirstName like '__inda'



----find names having these letters at that postion
select * from person.person where FirstName like 'D_v__'
 

 ---find first name starting with letter 'a' , 'b' , 'c'
 select * from person.person where FirstName like '[abc]%'

 
 ---find first name starting with letter 'a' , 'b' , 'c'
 select * from person.person where FirstName like '[a-c]%'

 
 Not like
 select * from person.person where FirstName not like '[abc]%' 


 
----find the values that starts with 'ang'
select * from person.person where FirstName not like 'ang%'