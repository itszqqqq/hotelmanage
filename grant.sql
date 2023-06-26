CREATE USER admin@localhost IDENTIFIED BY '123456';
GRANT ALL ON hotel.* TO 'admin'@'localhost' WITH GRANT OPTION;


CREATE USER zq@localhost IDENTIFIED BY '123456';
CREATE USER yz@localhost IDENTIFIED BY '123456';
CREATE USER lym@localhost IDENTIFIED BY '123456';


GRANT ALL ON hotel.message TO 'zq'@'localhost' ;
GRANT ALL ON hotel.orders TO 'zq'@'localhost' ;
GRANT ALL ON hotel.record TO 'zq'@'localhost' ;
GRANT ALL ON hotel.room TO 'zq'@'localhost' ;
GRANT select ON hotel.roomtype TO 'zq'@'localhost' ;
GRANT select,update ON hotel.news TO 'zq'@'localhost' ;

GRANT ALL ON hotel.message TO 'yz'@'localhost' ;
GRANT ALL ON hotel.orders TO 'yz'@'localhost' ;
GRANT ALL ON hotel.record TO 'yz'@'localhost' ;
GRANT ALL ON hotel.room TO 'yz'@'localhost' ;
GRANT select ON hotel.roomtype TO 'yz'@'localhost' ;
GRANT select,pdate ON hotel.news TO 'yz'@'localhost' ;

GRANT ALL ON hotel.message TO 'lym'@'localhost' ;
GRANT ALL ON hotel.orders TO 'lym'@'localhost' ;
GRANT ALL ON hotel.record TO 'lym'@'localhost' ;
GRANT ALL ON hotel.room TO 'lym'@'localhost' ;
GRANT select ON hotel.roomtype TO 'lym'@'localhost' ;
GRANT select,update ON hotel.news TO 'lym'@'localhost' ;