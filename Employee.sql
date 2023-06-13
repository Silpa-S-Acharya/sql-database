mysql> create table employees(emp_id int primary key,fname varchar(10),lname varchar(10),email varchar(10),phno numeric(10),hire_date date,job_id int,salary int,manager_id int,dept_id int,foreign key (job_id) references jobs(job_id),foreign key (dept_id) references departments (dept_id) on delete cascade);^C
mysql> insert into regions values(1001,'Sikkim'),(1002,'Mizoram'),(1003,'Waikato'),(1004,'Auckland'),(1005,'Chennai'),(1006,'Tripura'),(1007,'Taranaki');
Query OK, 7 rows affected (0.05 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> insert into countries values(2001,'India',1001),(2002,'India',1002),(2003,'New Zealand',1003),(2004,'New Zealand',1004),(2005,'India',1005
Query OK, 7 rows affected (0.06 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> select * from countries;
+------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
|       2001 | India        |      1001 |
|       2002 | India        |      1002 |
|       2003 | New Zealand  |      1003 |
|       2004 | New Zealand  |      1004 |
|       2005 | India        |      1005 |
|       2006 | India        |      1006 |
|       2007 | New Zealand  |      1007 |
+------------+--------------+-----------+
7 rows in set (0.00 sec)
mysql> insert into locations values(1100,'Iroli',45321,'Rabbada','Lucknow',2001),(1200,'Thekemala',698123,'Karamveli','Chennai',2002),(1300,'Sector 23',2137,'Clevedon','United Kingdom',2003),(1400,'Sector 22',2150,'Mangere','United Kingdom',2004),(1700,'Sector 17',2149,'Whitford','United Kingdom',2007);
Query OK, 5 rows affected (0.14 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from locations;
+-------------+----------------+-------------+-----------+----------------+------------+
| location_id | street_address | postal_code | city      | state_province | country_id |
+-------------+----------------+-------------+-----------+----------------+------------+
|        1100 | Iroli          |       45321 | Rabbada   | Lucknow        |       2001 |
|        1200 | Thekemala      |      698123 | Karamveli | Chennai        |       2002 |
|        1300 | Sector 23      |        2137 | Clevedon  | United Kingdom |       2003 |
|        1400 | Sector 22      |        2150 | Mangere   | United Kingdom |       2004 |
|        1700 | Sector 17      |        2149 | Whitford  | United Kingdom |       2007 |
+-------------+----------------+-------------+-----------+----------------+------------+
5 rows in set (0.00 sec)
mysql> insert into departments values(1,'Finance',1200),(2,'Marketing',1400),(3,'Sales',1700),(4,'Quality',1300),(5,'Engineer',1100);Query OK, 5 rows affected (0.06 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from departments;
+---------+-----------+-------------+
| dept_id | dept_name | location_id |
+---------+-----------+-------------+
|       1 | Finance   |        1200 |
|       2 | Marketing |        1400 |
|       3 | Sales     |        1700 |
|       4 | Quality   |        1300 |
|       5 | Engineer  |        1100 |
+---------+-----------+-------------+
5 rows in set (0.00 sec)

