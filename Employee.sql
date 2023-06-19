mysql> create table employees(emp_id int primary key,fname varchar(10),lname varchar(10),email varchar(10),phno numeric(10),hire_date date,job_id int,salary int,manager_id int,dept_id int,foreign key (job_id) references jobs(job_id),foreign key (dept_id) references departments (dept_id) on delete cascade);^C
mysql> insert into regions values(1001,'Haryana'),(1002,'Sumatra'),(1003,'Jibla'),(1004,'Auckland'),(1005,'Chennai'),(1006,'Tianjin'),(1007,'Shanghai');
Query OK, 7 rows affected (0.46 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> select * from regions;
+----------+----------+
| regionid | rname    |
+----------+----------+
|     1001 | Haryana  |
|     1002 | Sumatra  |
|     1003 | Jibla    |
|     1004 | Auckland |
|     1005 | Chennai  |
|     1006 | Tianjin  |
|     1007 | Shanghai |
+----------+----------+
7 rows in set (0.00 sec)
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

mysql> insert into jobs values(111,'Manager',60000,63000),(112,'AManager',45000,50000),(113,'HR',57000,60000),(114,'Security',28000,30000),(115,'SExecutive',29000,30000);
Query OK, 5 rows affected (0.08 sec)
Records: 5  Duplicates: 0  Warnings: 0
mysql> select * from jobs;
+--------+------------+--------+--------+
| job_id | job_title  | minSal | maxSal |
+--------+------------+--------+--------+
|    111 | Manager    |  60000 |  63000 |
|    112 | AManager   |  45000 |  50000 |
|    113 | HR         |  57000 |  60000 |
|    114 | Security   |  28000 |  30000 |
|    115 | SExecutive |  29000 |  30000 |
+--------+------------+--------+--------+
5 rows in set (0.01 sec)
| DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
+---------------+----------------------+------------+-------------+
|            10 | Administration       |        200 |        1700 |
|            20 | Marketing            |        201 |        1800 |
|            30 | Purchasing           |        114 |        1700 |
|            40 | Human Resources      |        203 |        2400 |
|            50 | Shipping             |        121 |        1500 |
|            60 | IT                   |        103 |        1400 |
|            70 | Public Relations     |        204 |        2700 |
|            80 | Sales                |        145 |        2500 |
|            90 | Executive            |        100 |        1700 |
  emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
  
1.SELECT fname,lname
  FROM employees 
   WHERE locid = 1700;
2. SELECT fname,lname
  FROM employees 
   WHERE locid not in 1700;
3. SELECT max(salary)
FROM employees;
4.SELECT * FROM employees 
WHERE salary > 
ALL(SELECT avg(salary)FROM employees GROUP BY emp_id);
5.SELECT departments.department_id, result1.total_amt 
FROM departments,  
( SELECT employees.department_id, SUM(employees.salary) total_amt  
FROM employees  
GROUP BY department_id) result1 
WHERE result1.department_id = departments.department_id;
6.SELECT first_name, last_name, salary, department_id  
FROM employees  
WHERE salary IN  
( SELECT MIN(salary)  
FROM employees  
GROUP BY department_id 
);
7.SELECT dep_id,
       avg(salary)
FROM employees
GROUP BY dep_id
HAVING avg(salary) <
  (SELECT avg(salary)
   FROM employees);
8.
