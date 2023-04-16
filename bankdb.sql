create table customer(cid int primary key,cname varchar(20), city varchar(20));
desc customer;
create table branch(bid int primary key,bname varchar(20),city varchar(20));
desc branch;
create table account(acno int primary key, cid int ,bid int, amnt int ,adate date, foreign key(cid) references customer(cid),foreign key(bid) references branch(bid) on delete cascade);
desc account;
 create table borrower(loanno int primary key,cid int, bid int ,amount bigint, foreign key(cid) references customer(cid),foreign key(bid) references branch(bid) on delete cascade);
desc borrower;
Insert into customer values(1000,'Ambrose','Kannur'),(1001,'Arun','Kollam'),(1003,'Nithin','Kochi'),(1004,'Abhishek','Calicut'),(1005,'Feba','Kochi'),(1006,'Divya','Palakkad'),(1007,'Viknesh','Trivandrum'),(1008,'Vishnu','Kollam'),(1009,'Renosh','Trivandrum');
Query OK, 9 rows affected (0.24 sec)
Records: 9  Duplicates: 0  Warnings: 0

insert into branch values(622,'Kaloor','Kochi'),(623,'Chavara','Kollam'),(624,'Thotilpalam','Calicut'),(625,'Kottayam','MG Road'),(626,'Ottapalam','Palakkad'),(627,'Pattam','Trivandrum'),(628,'Mattannur','Kannur'),(629,'Eroad','Kochi');
Query OK, 8 rows affected (0.14 sec)
Records: 8  Duplicates: 0  Warnings: 0



DATE - format YYYY-MM-DD
DATETIME - format: YYYY-MM-DD HH:MI:SS
TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
YEAR - format YYYY or YY

mysql> insert into account  values(6001,1000,622,100000,'2000-05-18'),(6002,1001,623,1200000,'2001-08-17'),(6003,1009,624,500000,'2010-02-02'),(6004,1003,625,90000,'2010-12-09'),(6005,1004,626,1000000,'2011-04-03'),(6006,1005,627,38000,'2012-08-09'),(6007,1006,628,9000,'2012-11-11'),(6008,1007,629,9000,'2010-02-02'),(6009,1008,624,900000,'2010-02-06'),(6010,1001,625,8000,'2009-09-09'), (6011,1008,625,9000,'2010-06-05');;
Query OK, 10 rows affected (0.07 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> insert into borrower values(1115,1006,628,200000),(1116,1005,627,100000),(1117,1004,626,200000),(1118,1007,629,500000),(1119,1001,625,50000);
Query OK, 5 rows affected (0.14 sec)
Records: 5  Duplicates: 0  Warnings: 0


1.select cname from customer where city="Kochi";
2.select bname from branch where city="Kochi";
3. select c.cname from customer c,account a, branch b where c.cid=a.cid and b.bid=a.bid and bname="Mg Road";
4. select c.cname from customer c,borrower b where c.cid=b.cid and c.city="Calicut";
5.select cname from customer where cid in(select cid from account where bid in(select bid from account group by bid having avg(amnt)>32000));
6. select b.bname,sum(a.amnt) from account a,branch b where a.bid=b.bid group by b.bname having sum(a.amnt)>5000;
7.select b.bname,sum(a.amnt) from account a, branch b where a.bid=b.bid and b.city="Trivandrum" group by b.bname having sum(a.amnt)>32000;
8.select c.cname from customer c,account a,branch b where a.cid=c.cid and a.bid=b.bid and a.amnt=(select max(al.amnt) from account al);
9.select bname from branch where bid in(select bid from account group by bid having count(bid)>=all(select count(cid) from account group by bid));
10.select cname from customer where cid in (select cid from account group by cid having count(cid)>=all(select count(cid) from account group by
cid));
11. select city from branch group by city having count(bid)>=all(select count(bid) from branch group by city);
12.select b.bname,count(a.cid) from account a,branch b where a.bid=b.bid group by b.bname having count(a.cid)>2;
13.select cname from customer where cid in(select cid from account where cid not in(select cid from borrower));
14.select cname from customer where city="Kochi" and cid in(select cid from account where cid in(select cid from borrower));
15.select sum(amount) as  amount from borrower;
16.select cname from  customer where cid in(select cid from account where amnt=(select max(amnt) from account where bid in(select bid from account where cid in(select cid from customer where cname="Arun"))));


insert into customer values(101,'John','Trivandrum'),(102,'Devan','Calicut'),(103,'Nithin','Kochi'),(104,'Ajosh','Palakkad'),(105,'Abhishek','Kollam'),(106,'Abhishek','Kannur');
insert into branch values(2001,'Pattam','Trivandrum'),(2005,'Manamchira','Calicut'),(2002,'Eroad','Kochi'),(2003,'Mg Road','Kochi'),(2004,'Koilandi','Calicut');
 insert into account values(314,101,2003,50000,'2001-08-17'),(777,106,2003,500000,'2010-02-02'),(943,101,2002,9000,'2012-11-11'),(888,102,2001,9000,'2010-02-02'),(912,103,2002,900000,'2010-02-06'),(989,104,2003,98989,'2011-08-09'),(333,105,2004,5000,'2012-08-09'),(555,106,2005,20000,'2012-02-02');
 insert into borrower values(1115,101,2003,200000),(1116,105,2004,100000),(1117,106,2005,200000),(1118,103,2002,500000),(1119,104,2003,50000);
