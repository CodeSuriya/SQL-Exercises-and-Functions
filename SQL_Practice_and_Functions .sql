---add not null constraint

alter table employee 
modify emp_name varchar(50) not null 

---drop not null constraint

alter table employee 
modify emp_name varchar(50) 

---  add default constraint

alter table employee
alter jobdes set default 'unassigned'

--- drop default constraint

alter table employee
alter jobdes drop default

---add check constraint

alter table employee
add constraint chck_salary check(salary >100000)

---drop check constraint

alter table employee
drop check chck_salary 

drop table employee

create table branch(
branch_id int primary key auto_increment,
branch_name varchar(50)not null,
address varchar (200)
)

select * from branch


use logic
create table employee(
emp_id int primary key auto_increment,
ename varchar(50)not null,
job_des varchar(50),
salary int,
branch_id int,
constraint fk_branchid foreign key (branch_id) references branch (branch_id)
)

select * from employee

alter table employee
drop foreign key fk_branchid



drop table branch
drop table employee

use logic

create table employee(
emp_id int primary key,
ename varchar(50),
job_des varchar(50),
salary int
)


insert into branch values(1,'chennai','16 abc road'),
(2,'coimbatore','120 15th block'),
(3,'mumbai','25 xyz road'),
(4,'hydrabad','32 10th street')




insert into employee values(1,'ram','admin',1000000,2),
(2,'harini','manager',2500000,2),
(3,'george','sales',2000000,1),
(4,'ramya','sales',1300000,2),
(5,'meena','hr',2000000,3),
(6,'ashok','manager',3000000,1),
(7,'abdul','hr',2000000,1),
(8,'ramya','engineer',1000000,2),
(9,'raghu','ceo',8000000,3),
(10,'aravind','manager',2800000,3),
(11,'akshay','engineer',1000000,1),
(12,'john','admin',2200000,1),
(13,'abinaya','engineer',2100000,2),
(14,'vidhya','admin',2200000,null),
(15,'rajini','engineer',2100000,null)


select * from employee
select * from branch

create index name_index on employee(ename)

show index from employee

alter table employee
drop index name_index

alter table employee
add index (ename)

drop table employee


----joins
--inner joins shows only the value have correct match

select employee.emp_id,employee.ename,employee.job_des,branch.branch_name
from employee
inner join branch
on employee.branch_id= branch.branch_id

select * from employee
select* from branch

----left joins consider all values to be taken  it is correct match and not matching values

select employee.emp_id,employee.ename,employee.job_des,branch.branch_name
from employee
left join branch
on employee.branch_id= branch.branch_id

----right joins show not only the proper match but also values having in the right table also shown

select employee.emp_id,employee.ename,employee.job_des,branch.branch_name
from employee
right join branch
on employee.branch_id= branch.branch_id
order by employee.emp_id
