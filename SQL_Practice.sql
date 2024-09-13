use logic

create table employee(
emp_id int primary key, 
emp_name varchar(50),
jobdes varchar(30),
salary int
)

select * from employee


insert into employee values(1,'ram','admin',1000000),
(2,'harini','manager',2500000),
(3,'george','sales',2000000),
(4,'ramya','sales',1300000),
(5,'meena','hr',2000000),
(6,'ashok','manager',3000000),
(7,'abdul','hr',2000000),
(8,'ramya','engineer',1000000),
(9,'raghu','ceo',8000000),
(10,'aravind','manager',2800000),
(11,'akshay','engineer',1000000),
(12,'john','admin',2200000),
(13,'abinaya','engineer',2100000)



select emp_id , emp_name from employee

select emp_name from employee 
where jobdes = 'hr'

select * from employee 
where salary = 2000000


select *  from employee 
where jobdes in ('hr','manager','sales')


select * from employee 
where jobdes = 'hr' and salary = 2000000

select * from employee 
where jobdes = 'hr' and salary < 2000000

delete from employee
where emp_id = 12

select distinct jobdes from employee

select * from employee
order by (case jobdes
when 'ceo' then 1
when 'manager' then 2
when 'hr' then 3
when 'admin' then 4
when 'sales'   then 5
when 'engineer' then 6 
end 
)


update employee
set jobdes ='analyst'
where jobdes = 'engineer'

set SQL_SAFE_UPDATES = 0

SELECT * FROM EMPLOYEE

Select count(*) no_of_analyst from employee where jobdes = 'analyst'

select lcase(emp_name),salary
from employee

select ucase(emp_name)Name,salary
from employee

select emp_name,char_length(emp_name) char_count
from employee

select emp_name,concat('RS.',format(salary,0)) salary
from employee

alter table employee add column Hire_date date

 select now() 
 
 select date(now())
 SELECT CURDATE()
 
 select date_format(curdate(),'%d-%m-%Y') date
 
 select date_add(curdate(),interval 1 month) as 'after one month' 
 
 
 select * from employee
 
 select * from employee order by jobdes
 
 select jobdes,avg(salary) from employee
 group by jobdes
 
  select jobdes,count(emp_id) from employee
 group by jobdes
 
 select jobdes ,avg(salary) from employee 
 where jobdes = 'manager'
 
 select jobdes,count(emp_id) from employee
 group by jobdes
 having count(emp_id) > 1
 


