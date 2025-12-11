

-------------------------------1st Table creation----------------------------------

use Studentdata;


Create Table customer(
ID int,
Firstname varchar(255),
Lastname varchar(255),
address int) ;

select * from customer;

Insert into customer (ID, Firstname, lastname, address)
 values ('1', 'Avinash', 'Pathak', '11')
;

Insert into customer (ID, Firstname, lastname, address)
 values ('2', 'Raj', 'Kumar', '12')
;


Insert into customer (ID, Firstname, lastname, address)
 values ('3', 'Rushi', 'Dhawan', '13')
;

Insert into customer (ID, Firstname, lastname, address)
 values ('4', 'Pavan', 'Singh', '14')
;

---------------------------------------2nd table creation-------------------------------


Create Table payment(
ID int,
Amount int,
Mode varchar(255),
PaymentDate Date) ;


Insert into payment (ID, Amount, Mode, Paymentdate)
 values ('1', '200', 'Cash', '12-12-2024')
;

select * from payment;


Insert into payment (ID, Amount, Mode, Paymentdate)
 values ('2', '300', 'Card', '12-12-2024')
;


Insert into payment (ID, Amount, Mode, Paymentdate)
 values ('3', '400', 'Cash', '12-12-2024')
;


Insert into payment (ID, Amount, Mode, Paymentdate)
 values ('5', '500', 'Card', '12-12-2024')
;

delete from payment
where id = '2';


-------------------inner joins execution-------------------------

Select * 
from customer AS c
Inner join payment as p
ON c.ID = p.ID

Select c.Firstname, p.amount, p.mode 
from customer AS c
Inner join payment as p
ON c.ID = p.ID

--------------------Left Join-----------------------------

Select * 
from customer As c
Left Join Payment As p
On  c.ID = p.ID


-------------------Right Join--------------------------------

Select * 
from customer As c
Right Join Payment As p
On  c.ID = p.ID


------------------Full Outer Join--------------------------

Select * 
from customer AS c
Full Outer join payment as p
ON c.ID = p.ID