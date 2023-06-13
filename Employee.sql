mysql> create table employees(emp_id int primary key,fname varchar(10),lname varchar(10),email varchar(10),phno numeric(10),hire_date date,job_id int,salary int,manager_id int,dept_id int,foreign key (job_id) references jobs(job_id),foreign key (dept_id) references departments (dept_id) on delete cascade);^C
mysql
