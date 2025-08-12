create database companyDB
use companyDB

create table employee(
empid int ,
firstname varchar(50),
lastname varchar(50),
department varchar(50),
salary decimal (10,2), 
joiningdate date 
)

select * from employee

insert into employee values 
(1,'jaya','suriya', 'IT',60000,'02-03-25'),
(2,'Hari','krishnan', 'finance',63000,'02-04-25'),
(3,'tamil','selvan', 'IT',55000,'06-06-25'),
(4,'sakthi','pandi', 'HR',49000,'25-06-25'),
(5,'karthik','velusamy', 'Developer',59000,'08-09-25')

select * from employee

select * from employee where department = 'IT'

select * from employee order by salary desc

alter table employee add column DOB int 

select * from employee

alter table employee change department dept varchar(50)

select * from employee

alter table employee change DOB DOB varchar(50)

select * from employee

select count(*) as totalemployee from employee
select avg(salary) as averagesalary from employee
select max(salary) as highestsalary from employee
select min(salary) as lowestsalary from employee

select dept, count(*) as deptcount 
from employee 
group by dept

create table departments(
deptid int,
departmentname varchar(50)
)

insert into departments values (1,'IT'),
(2, 'finance'),
(3, 'HR')

select * from departments

select e.firstname, e.lastname, d.departmentname 
from employee e
join departments d
on e.dept = d.departmentname

select e.firstname, e.lastname, d.departmentname 
from employee e
left join departments d
on e.dept = d.departmentname

select e.firstname, e.lastname, d.departmentname 
from employee e
right join departments d
on e.dept = d.departmentname


alter table employee change salary salary int
select * from employee

SELECT * FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);

SELECT firstname , salary,
CASE
    WHEN salary > 70000 THEN 'High'
    WHEN salary BETWEEN 50000 AND 70000 THEN 'Medium'
    ELSE 'Low'
END AS SalaryCategory
FROM employee;

drop table departments
drop table employee


CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
)

INSERT INTO Departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DeptID INT,
    Salary DECIMAL(10,2),
    JoinDate DATE,
    City VARCHAR(50)
);

INSERT INTO Employee VALUES
(101, 'John', 'Smith', 1, 60000, '2021-03-15', 'Chennai'),
(102, 'Sara', 'Khan', 1, 55000, '2022-01-10', 'Bangalore'),
(103, 'Ravi', 'Kumar', 2, 40000, '2020-11-25', 'Hyderabad'),
(104, 'Priya', 'Menon', 3, 75000, '2019-07-05', 'Chennai'),
(105, 'David', 'Lee', 4, 50000, '2023-05-01', 'Bangalore'),
(106, 'Anita', 'Roy', 1, 65000, '2020-08-19', 'Hyderabad'),
(107, 'Vikram', 'Patel', 2, 42000, '2021-09-09', 'Chennai'),
(108, 'Meena', 'Das', 3, 78000, '2018-04-12', 'Bangalore'),
(109, 'Amit', 'Shah', 1, 60000, '2023-02-17', 'Chennai'),
(110, 'Rohit', 'Verma', 4, 48000, '2021-12-30', 'Hyderabad');

select * from Employee
select * from Departments

select distinct city from Employee

select * from Employee order by Salary desc limit 3

SELECT * FROM Employee
WHERE DeptID = 1 AND Salary > 60000;

SELECT * FROM Employee
WHERE DeptID IN (2, 3);

SELECT * FROM Employee
WHERE City NOT IN ('Hyderabad');
SELECT * FROM Employee
WHERE Salary BETWEEN 50000 AND 70000;

SELECT * FROM Employee
WHERE FirstName LIKE '%d';

SELECT DeptID, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY DeptID;

SELECT DeptID, AVG(Salary) AS AvgSalary
FROM Employee
GROUP BY DeptID;

SELECT DeptID, AVG(Salary) AS AvgSalary
FROM Employee
GROUP BY DeptID
HAVING AVG(Salary) > 60000;

SELECT FirstName, LastName, Salary,
       RANK() OVER (ORDER BY Salary DESC) AS SalaryRank
FROM Employee;


SELECT FirstName, LastName, Salary,
       DENSE_RANK() OVER (ORDER BY Salary DESC) AS SalaryDenseRank
FROM Employee;

SELECT FirstName, LastName, DeptID, Salary,
       ROW_NUMBER() OVER (PARTITION BY DeptID ORDER BY Salary DESC) AS RowNum
FROM Employee;


SELECT CONCAT(FirstName, ' ', LastName) AS FullName FROM Employee;

SELECT SUBSTRING(FirstName, 1, 3) AS ShortName FROM Employee;

SELECT UPPER(FirstName) AS UpperName FROM Employee;

SELECT lower(FirstName) AS lowername FROM Employee;

SELECT TRIM(City) AS TrimmedCity FROM Employee;

select current_date()

SELECT FirstName, JoinDate, DATE_ADD(JoinDate, INTERVAL 1 YEAR) AS NextYear
FROM Employee;

SELECT FirstName, DATEDIFF(CURRENT_DATE, JoinDate) AS DaysWorked
FROM Employee;

SELECT FirstName, YEAR(JoinDate) AS JoinYear, MONTH(JoinDate) AS JoinMonth
FROM Employee;



