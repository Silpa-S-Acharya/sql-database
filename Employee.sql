mysql> create table employees(emp_id int primary key,fname varchar(10),lname varchar(10),email varchar(10),phno numeric(10),hire_date date,job_id int,salary int,manager_id int,dept_id int,foreign key (job_id) references jobs(job_id),foreign key (dept_id) references departments (dept_id) on delete cascade);^C
mysql> insert into regions values(1001,'Haryana'),(1002,'Sumatra'),(1003,'Jibla'),(1004,'Auckland'),(1005,'Chennai'),(1006,'Tianjin'),(1007,'Shanghai');
Query OK, 7 rows affected (0.46 sec)
Records: 7  Duplicates: 0  Warnings: 0
   insert into employees values(68418,"Zack","Ryder","zackryder09@gmail.com",8754123362,"1999-08-09",777,20000,152,2),(67521,"Scarlet","Taylor","taylor34@gmail.com",9874562315,"2000-07-12",555,38000,101,1),(69532,"Kelly","John","kjohn18@gmail.com",7568412366,"1994-05-08",666,9500,102,3),(61234,"Randy","Orton","rkorton23@gmail.com",9632587410,"2002-05-11",333,55000,109,10);
Query OK, 4 rows affected (0.18 sec)
Records: 4  Duplicates: 0  Warnings: 0
  insert into dependents values(512,"Luca","Reo","Brother-in-law",61234),(617,"Ricardo","Rodrigus"),(418,"Alberto","Rio","Son",68418),(331,"Natalya","Tyson");
 insert into departments values(1,"Public Relations",1800),(2,"Human Resources",1400),(3,"Sales",1800);
mysql> insert into locations values(1800,"Outer Ring Road",400008,"Nagapada","Tamil Nadu",204),(1400,"Dalian",116013,"Shahekou","Liaoning",205);
mysql> insert into departments values(10,"Administration",1700),(20,"Marketing",1800),(30,"Purchasing",1700),(50,"Shipping",1500),(60,"IT",1400),(90,"Executive",1700);
insert into locations values(1300, "New Bangaru",600078,"K K Nagar","Tamil Nadu",204),(1400,"Dalian",116013,"Shahekou","Liaoning",205),(1500,"Nanjing",61105,"North China","Tianjin",206),(1700,"Crescent",1050,"Remuera","Auckland",203),(1800,"Outer Ring Road",400008,"Nagapada","Tamil Nadu",204),( 1900,"Gorakhpur",122001 ,"Gurugram","Chandigarh",207);
insert ininsert into regions values(1001,"Haryana"),(1002,"Sumatra"),(1003,"Jibla"),(1004,"Auckland"),(1005,"Chennai"),(1006,"Tianjin"),(1007,"Shanghai");
insert into countries values(201,"Indonesia",1002),(202,"Yemen",1003),(203,"Germany",1004),(204,"India",1005),(205,"China",1006),(206,"China",1007),(207,"India",1001);
mysql> insert into jobs values(111,"Manager",22000,58000),(222,"Asst.Manager",11500,35000),(333,"Analyst",10000,43000),(444,"Trainer",9000,38000),(555,"Managing Director",25000,68000),(666,"Accountant",30000,78000),(777,"Supporter",12000,28000);
Query OK, 7 rows affected (0.06 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> select * from jobs;
+--------+-------------------+--------+--------+
| job_id | job_title         | minSal | maxSal |
+--------+-------------------+--------+--------+
|    111 | Manager           |  22000 |  58000 |
|    222 | Asst.Manager      |  11500 |  35000 |
|    333 | Analyst           |  10000 |  43000 |
|    444 | Trainer           |   9000 |  38000 |
|    555 | Managing Director |  25000 |  68000 |
|    666 | Accountant        |  30000 |  78000 |
|    777 | Supporter         |  12000 |  28000 |
+--------+-------------------+--------+--------+
7 rows in set (0.00 sec)


mysql> select * from locations;
+-------+-----------------+--------+-------------+------------+------+
| locid | saddress        | pcode  | city        | sprovince  | cid  |
+-------+-----------------+--------+-------------+------------+------+
|  1300 | New Bangaru     | 600078 | K K Nagar   | Tamil Nadu |  204 |
|  1400 | Dalian          | 116013 | Shahekou    | Liaoning   |  205 |
|  1500 | Nanjing         |  61105 | North China | Tianjin    |  206 |
|  1700 | Crescent        |   1050 | Remuera     | Auckland   |  203 |
|  1800 | Outer Ring Road | 400008 | Nagapada    | Tamil Nadu |  204 |
|  1900 | Gorakhpur       | 122001 | Gurugram    | Chandigarh |  207 |
+-------+-----------------+--------+-------------+------------+------+
6 rows in set (0.00 sec)

mysql> select * from employees;
+--------+-----------+--------+----------------------------+------------+------------+-------+--------+------------+--------+
| emp_id | fname     | lname  | email                      | phno       | hire_date  | jobid | salary | manager_id | deptid |
+--------+-----------+--------+----------------------------+------------+------------+-------+--------+------------+--------+
|  61234 | Randy     | Orton  | rkorton23@gmail.com        | 9632587410 | 2002-05-11 |   333 |  55000 |        109 |     10 |
|  67521 | Scarlet   | Taylor | taylor34@gmail.com         | 9874562315 | 2000-07-12 |   555 |  38000 |        101 |      1 |
|  68319 | Charlotte | Flair  | charlotteflair09@gmail.com | 9784562231 | 2004-09-12 |   222 |  33000 |        147 |     50 |
|  68418 | Zack      | Ryder  | zackryder09@gmail.com      | 8754123362 | 1999-08-09 |   777 |  20000 |        152 |      2 |
|  69532 | Kelly     | John   | kjohn18@gmail.com          | 7568412366 | 1994-05-08 |   666 |   9500 |        102 |      3 |
+--------+-----------+--------+----------------------------+------------+------------+-------+--------+------------+--------+
5 rows in set (0.00 sec)

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
7 rows in set (0.02 sec)

mysql> select * from countries;
+-----+-----------+----------+
| cid | cname     | regionid |
+-----+-----------+----------+
| 201 | Indonesia |     1002 |
| 202 | Yemen     |     1003 |
| 203 | Germany   |     1004 |
| 204 | India     |     1005 |
| 205 | China     |     1006 |
| 206 | China     |     1007 |
| 207 | India     |     1001 |
+-----+-----------+----------+
7 rows in set (0.02 sec)

mysql> select * from departments;
+--------+------------------+-------+
| deptid | depname          | locid |
+--------+------------------+-------+
|      1 | Public Relations |  1800 |
|      2 | Human Resources  |  1400 |
|      3 | Sales            |  1800 |
|     10 | Administration   |  1700 |
|     20 | Marketing        |  1800 |
|     30 | Purchasing       |  1700 |
|     50 | Shipping         |  1500 |
|     60 | IT               |  1400 |
|     90 | Executive        |  1700 |
+--------+------------------+-------+
9 rows in set (0.00 sec)

1.SELECT fname,lname FROM employees WHERE locid = 1700;
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
