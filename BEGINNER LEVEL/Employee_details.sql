create database EMP;
use EMP;
create table EDT (
Sid int,
Sname char(10),Sfee Decimal(6,2),
age Tinyint);
--display detailed information about a database object (such as a table, view)
Sp_HELP EDT;
Sp_HELP Dept_Details;
Sp_HELP EMP_DETAILS;

select * from EMP_DETAILS;

SELECT *
INTO CUSTOMER
FROM PracticeTables.dbo.CUSTOMER;

sp_help CUSTOMER
-- SQL CREATE COMMANDS-
create table users(
FIRSTNAME varchar(50),
LASTNAME varchar(50),
email_ID varchar(50),
Password varchar(50)
);
--SQL DELETION OF TABLES-
DROP TABLE users;
DELETE TOP (1)
FROM users;

--SQL INSERT INTO COMMANDS-
INSERT INTO users (
    FIRSTNAME,
    LASTNAME,
    email_ID,
    Password
)
VALUES (
    'jai',
    'sharma',
    'abc@gmail.com',
    'abc#123'
),
--multiple records-
('jaya','sharma','xyz@gmail.com','123');

--SQL SELECT COMMANDS-
SELECT * FROM USERS;
SELECT DISTINCT FIRSTNAME,LASTNAME
FROM USERS;


CREATE TABLE EMP (
    EMPNO INT PRIMARY KEY,
    ENAME VARCHAR(20),
    JOB VARCHAR(20),
    MGR INT,
    HIREDATE DATE,
    SAL DECIMAL(10,2),
    COMM DECIMAL(10,2),
    DEPTNO INT
);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES
(7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 20),
(7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 30),
(7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 30),
(7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, 20),
(7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30),
(7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, 30),
(7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, 10),
(7788, 'SCOTT', 'ANALYST', 7566, '1982-12-09', 3000, NULL, 20),
(7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10),
(7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 0, 30),
(7876, 'ADAMS', 'CLERK', 7788, '1983-01-12', 1100, NULL, 20),
(7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950, NULL, 30),
(7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL, 20),
(7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, 10);

sp_help EMP;

--selecting all columns and all rows-
select * from EMP
--selcting specific columns
select ename, deptno,hiredate
from EMP
SELECT ename, job, sal Salary
 FROM emp ;
--selecting specific columns,all rows
select deptno, ename
from EMP
SELECT empno, ename,
Sal* 12 as ANNUAL_SALARY
  FROM emp; 
--Operator Precedence 
select ename, sal, 12 * sal + 100 as newsal, 12 * (sal + 100) as newsal2
from EMP
--Defining a Null Value
--(A null is a value that is unavailable, unassigned, unknown, or inapplicable.)
--(A null is not the same as zero or a blank space.)

SELECT ename,  12 * sal + comm
FROM emp
WHERE ename ='KING'

--Defining a Column Alias
SELECT ename  AS "Ad" ,  sal "Maaş"
FROM emp;
select ename as ad,sal maa2
from emp;

--Concatenation Operator
SELECT   ename || job  AS   "Employees"
FROM emp ;
--Literal Character Strings
--(Each character string is output once for each row returned.)
SELECT  ename  ||  '  is a '    ||   '  '  || job
AS "Employee Details"
FROM   emp ;

SELECT  ename  ||  '  : '    ||   ' salary = '  || sal 
AS "Employee Details"
FROM   emp ;

--Duplicate Rows
select deptno from emp; --(notice the repetation)
select distinct deptno, job as newdep
from EMP;


