use logic
select * from branch
select * from employee

----br_name emp_count


select b.branch_name ,count(e.branch_id)
from branch as b
join employee as e 
on b.branch_id = e.branch_id
group by e.branch_id


----create client table similar to branch  table

create table clients (
client_id int primary key auto_increment,
location varchar(30) not null,
address varchar(200)
)

insert into clients values(1,'newyork','25 10th block'),
(2,'coimbatore','120 15th block'),
(3,'london','21 abc road')

select * from branch
select * from clients

select * from branch
union all
select * from clients


----sub_queries
 
 select * from employee
 where branch_id = (select branch_id from branch where branch_name = 'chennai')
 
 ---exists used with sub_query
 
 SELECT branch_id, branch_name
FROM branch
WHERE EXISTS (
    SELECT *
    FROM employee
    WHERE job_des = 'admin' 
    AND branch.branch_id = employee.branch_id
);

---any
select * from employee
where branch_id = any(
select branch_id from employee
where salary > 2500000)

---all

select * from employee
where branch_id <> all(
select branch_id from branch
where branch_name in ('chennai','coimbatore'))

----------------------------------------


