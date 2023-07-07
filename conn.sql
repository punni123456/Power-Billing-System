
drop database link site3;
drop database link site4;
create database link site3
 connect to system identified by "123456"
 using '(DESCRIPTION =
       (ADDRESS_LIST =
         (ADDRESS = (PROTOCOL = TCP)
		 (HOST = 192.168.198.89)
		 (PORT = 1622))
       )
       (CONNECT_DATA =
         (SID = XE)
       )
     )'
;  

create database link site4
 connect to system identified by "123456"
 using '(DESCRIPTION =
       (ADDRESS_LIST =
         (ADDRESS = (PROTOCOL = TCP)
		 (HOST = 192.168.198.133)
		 (PORT = 1622))
       )
       (CONNECT_DATA =
         (SID = XE)
       )
     )'
;  