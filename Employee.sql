mysql> create table employees(emp_id int primary key,fname varchar(10),lname varchar(10),email varchar(10),phno numeric(10),hire_date date,job_id int,salary int,manager_id int,dept_id int,foreign key (job_id) references jobs(job_id),foreign key (dept_id) references departments (dept_id) on delete cascade);^C
mysql> insert into regions values(1001,'Haryana'),(1002,'Sumatra'),(1003,'Jibla'),(1004,'Auckland'),(1005,'Chennai'),(1006,'Tianjin'),(1007,'Shanghai');
Query OK, 7 rows affected (0.46 sec)
Records: 7  Duplicates: 0  Warnings: 0

insert into employees values(68418,"Zack","Ryder","zackryder09@gmail.com",8754123362,"1999-08-09",777,20000,152,2),(67521,"Scarlet","Taylor","taylor34@gmail.com",9874562315,"2000-07-12",555,38000,101,1),(69532,"Kelly","John","kjohn18@gmail.com",7568412366,"1994-05-08",666,9500,102,3),(61234,"Randy","Orton","rkorton23@gmail.com",9632587410,"2002-05-11",333,55000,109,10);
Query OK, 4 rows affected (0.18 sec)
Records: 4  Duplicates: 0  Warnings: 0
mysql> insert into dependents values(512,"Luca","Reo","Brother-in-law",61234),(617,"Ricardo","Rodrigus",NULL,NULL),(408,"Alberto","Rio","Son",69532),(331,"Natalya","Tyson",NULL,NULL);
Query OK, 4 rows affected (2.95 sec)
Records: 4  Duplicates: 0  Warnings: 0

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
mysql> select * from dependents;
+--------+---------+----------+----------------+--------+
| depnid | fname   | lname    | relation       | emp_id |
+--------+---------+----------+----------------+--------+
|    331 | Natalya | Tyson    | NULL           |   NULL |
|    408 | Alberto | Rio      | Son            |  69532 |
|    512 | Luca    | Reo      | Brother-in-law |  61234 |
|    617 | Ricardo | Rodrigus | NULL           |   NULL |
+--------+---------+----------+----------------+--------+
4 rows in set (0.00 sec)

1. mysql> select e.fname,e.lname from employees e join departments l on e.deptid=l.deptid where l.locid=1700;
 
2. mysql>  select e.fname,e.lname from employees e join departments l on e.deptid=l.deptid where l.locid not in(1700);
 
3. mysql> select fname,lname,salary from employees where salary=(select max(salary) from employees);
 
4. mysql> select fname,lname,salary from employees where salary>all(select avg(salary) from employees);
 
5. mysql> select departments.deptid,depname,employees.fname,employees.lname from departments,employees where departments.deptid=employees.deptid and employees.salary>10000;  

6. mysql> select departments.deptid,depname,employees.fname,employees.lname from departments,employees where departments.deptid=employees.deptid and employees.salary<10000;

7. select e.employee_id,e.first_name,e.last_name,e.salary from employees e where e.salary> ALL (select min(salary) from employees group by department_id);

8. select e.employee_id,e.first_name,e.last_name,e.salary from employees e where e.salary>= All (select max(salary) from employees group by department_id);

9. select avg(sub.avgSalary) as 'Average salary' from (select avg(e.salary) as avgSalary from employees e group by e.department_id) sub ;
 
10.select emp_id,fname,salary,(select avg(salary) from employees) as avg_salary,salary-(select avg(salary) from employees) as salary_diff from employees;

11.mysql> select emp_id,fname,lname,salary,depname from employees,departments where employees.deptid=departments.deptid and salary>(select avg(salary) from employees);

12.mysql> select fname,lname from dependents where relation is NULL;
+---------+----------+
| fname   | lname    |
+---------+----------+
| Natalya | Tyson    |
| Ricardo | Rodrigus |
+---------+----------+
2 rows in set (0.00 sec)

13.mysql> select fname,lname,depname,e.deptid from employees e join departments d on d.deptid=e.deptid where d.deptid in(1,2,3);
+---------+--------+------------------+--------+
| fname   | lname  | depname          | deptid |
+---------+--------+------------------+--------+
| Scarlet | Taylor | Public Relations |      1 |
| Zack    | Ryder  | Human Resources  |      2 |
| Kelly   | John   | Sales            |      3 |
+---------+--------+------------------+--------+
3 rows in set (0.00 sec)

14.mysql> select fname,lname,depname,e.deptid,j.job_title from employees e join jobs j on j.jobid=e.jobid join departments d on d.deptid=e.deptid where d.deptid in(1,2,3) and salary>10000;
+---------+--------+------------------+--------+-------------------+
| fname   | lname  | depname          | deptid | job_title         |
+---------+--------+------------------+--------+-------------------+
| Scarlet | Taylor | Public Relations |      1 | Mangaing Director |
| Zack    | Ryder  | Human Resources  |      2 | Supporter         |
+---------+--------+------------------+--------+-------------------+
2 rows in set (0.00 sec)

15.mysql> select depname,saddress,pcode,c.cname,r.rname from departments d join locations l on l.locid=d.locid join countries c on l.cid=c.cid join regions r on c.regionid=r.regionid;
+------------------+-----------------+--------+---------+----------+
| depname          | saddress        | pcode  | cname   | rname    |
+------------------+-----------------+--------+---------+----------+
| Human Resources  | Dalian          | 116013 | China   | Tianjin  |
| IT               | Dalian          | 116013 | China   | Tianjin  |
| Shipping         | Nanjing         |  61105 | China   | Shanghai |
| Administration   | Crescent        |   1050 | Germany | Auckland |
| Purchasing       | Crescent        |   1050 | Germany | Auckland |
| Executive        | Crescent        |   1050 | Germany | Auckland |
| Public Relations | Outer Ring Road | 400008 | India   | Chennai  |
| Sales            | Outer Ring Road | 400008 | India   | Chennai  |
| Marketing        | Outer Ring Road | 400008 | India   | Chennai  |
+------------------+-----------------+--------+---------+----------+
9 rows in set (0.00 sec)
17.mysql> select e.fname, e.lname, d.depname, l.city, l.sprovince from employees e join departments d on e.deptid = d.deptid join locations l on d.locid = l.locid where e.fname like 'Z%';
+-------+-------+-----------------+----------+-----------+
| fname | lname | depname         | city     | sprovince |
+-------+-------+-----------------+----------+-----------+
| Zack  | Ryder | Human Resources | Shahekou | Liaoning  |
+-------+-------+-----------------+----------+-----------+
1 row in set (0.16 sec)

18. select e.first_name,e.last_name,d.department_id,d.department_name from employees e left join department d on e.department_id=d.department_id union select e.first_name,e.last_name,d.department_id,d.department_name from employees e right join department d on e.department_id=d.department_id ;

19.  select empData.first_name,empData.manager_name from (select e.first_name,(select first_name from employees  where employee_id=e.manager_id)as manager_name from employees e)empData;

20. select e.first_name,e.last_name,d.department_id from employees e join department d on e.department_id=d.department_id where d.department_id=(select department_id from employees where last_name like 'Taylor') ;

21. select job_title,full_name,salary_difference from (select j.job_title,concat(e.first_name,' ',last_name) as full_name,j.max_salary-e.salary as salary_difference from employees e join jobs j on j.job_id=e.job_id) ej;

22. 
23. create view delhi_employees as select ej.name,ej.employee_id,ej.phone_number,ej.job_title,d.department_name,ej.manager_name from ( select concat(e.first_name,' ',e.last_name) as name,e.employee_id,e.department_id,e.phone_number,j.job_title,(select concat(first_name, ' ' ,last_name) as fullname from employees where employee_id=e.manager_id) as manager_name from employees e join jobs j on j.job_id=e.job_id) ej join department d on d.department_id=ej.department_id ;
24. select name from delhi_employees where job_title like 'manager' and department_name like 'finance';
25. update delhi_employees set phone_number=121121121 where name like 'Smith%';
26. select e.employee_id,e.first_name,e.last_name,e.email,e.phone_number,e.hire_date,e.job_id,e.salary,e.manager_id,e.department_id,d.dependent_id from employees e left join dependents d on d.employee_id=e.employee_id where dependent_id is null;
27. select employee_id,first_name,last_name,email,phone_number,manager_id from employees where manager_id=101 union  select employee_id,first_name,last_name,email,phone_number,manager_id from employees where manager_id=201;
28. select ed.employee_id,ed.first_name,ed.last_name,count(ed.employee_id) as No_of_Dependents from (select e.employee_id,e.first_name,e.last_name,d.dependent_id from employees e join dependents d on e.employee_id=d.employee_id) ed group by e.employee_id having No_of_Dependents>=1;

