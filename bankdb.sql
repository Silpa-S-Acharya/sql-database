create table customer(cid int primary key,cname varchar(20), city varchar(20));
desc customer;
create table branch(bid int primary key,bname varchar(20),city varchar(20));
desc branch;
create table account(acno int primary key, cid int ,bid int, amnt int ,adate date, foreign key(cid) references customer(cid),foreign key(bid) references branch(bid) on delete cascade);
desc account;
 create table borrower(loanno int primary key,cid int, bid int ,amount bigint, foreign key(cid) references customer(cid),foreign key(bid) references branch(bid) on delete cascade);
desc borrower;
 insert into customer values(222,'John','Trivandrum'),(223,'Arun','Pathanamthitta'),(101,'Nithin','Kannur'),(102,'Abhishek','Kochi'),(201,'Jobin','Calicut'),(202,'Ajosh','Pathanamthitta'),(301,'Viknesh','Kochi'),(302,'Vishnu','Kochi'),(401,'Renosh','Palakkad'),(402,'Devan','Kollam');
 select * from customer;
insert into branch values(165,'Pattam','Trivandrum'),(111,'Manamchira','Calicut'),(121,'Eroad','Kochi'),(112,'Mg Road','Pathanamthitta'),(145,'Kaloor','Kochi'),(122,'Koilandi','Calicut'),(132,'Kattapapana','Edukki'),(144,'Kottayam','Kottayam');
select * from branch;


DATE - format YYYY-MM-DD
DATETIME - format: YYYY-MM-DD HH:MI:SS
TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
YEAR - format YYYY or YY


insert into account  values(213,102,111,100000,'2000-05-18'),(314,201,121,50000,'2001-08-17'),(777,222,165,500000,'2010-02-02'),(615,301,145,90000,'2010-12-09'),(767,302,145,10000000,'2011-04-03'),(934,401,122,4000,'2012-08-09'),(943,402,144,9000,'2012-11-11'),(888,401,111,9000,'2010-02-02'),(912,222,144,900000,'2010-02-06'),(122,102,112,8000,'2009-09-09'),(989,202,112,98989,'2011-08-09'),(333,222,111,5000,'2012-08-09'),(444,222,165,20000,'2009-04-08'),(555,223,112,20000,'2012-02-02');
select * from account;

1.select cname from customer where city="Kochi";
2.select bname from branch where city="Kochi";
3. select c.cname from customer c,account a, branch b where c.cid=a.cid and b.bid=a.bid and bname="Mg Road";
      select c.cname from customer c,account a, branch b where c.cid=a.cid and b.bid=a.bid and b.city="Mg Road";
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
