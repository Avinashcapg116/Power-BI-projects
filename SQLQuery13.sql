--user management--

--a login is a simple credential for accessing sql server--

create login Newlogin with password  = 'Avinash@2807'

alter login Newlogin with name = Newlogin02 

alter login Newlogin with password  = 'Avinash@2808'

drop login Newlogin02