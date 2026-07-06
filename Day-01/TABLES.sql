-- Create Database
--CREATE DATABASE PracticeTables;
GO

USE PracticeTables;
GO

--------------------------------------------------
-- CUSTOMER
--------------------------------------------------
CREATE TABLE CUSTOMER
(
    CUSTOMER_ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    POSITION VARCHAR(50),
    COMPANY VARCHAR(100),
    STATE CHAR(2),
    CONTACT_NO VARCHAR(15)
);

--------------------------------------------------
-- ORDERS
--------------------------------------------------
CREATE TABLE ORDERS
(
    ORDER_ID INT PRIMARY KEY,
    ORDER_DATE DATE,
    CUSTOMER_ID INT,
    PRODUCT_ID INT,
    ORDER_QTY INT
);

--------------------------------------------------
-- PRODUCTS
--------------------------------------------------
CREATE TABLE PRODUCTS
(
    PRODUCT_ID INT PRIMARY KEY,
    PRODUCT_NAME VARCHAR(100),
    CATEGORY VARCHAR(50),
    PRICE DECIMAL(10,2),
    STOCK INT
);

--------------------------------------------------
-- EMP
--------------------------------------------------
CREATE TABLE EMP
(
    EMPNO INT PRIMARY KEY,
    ENAME VARCHAR(50),
    JOB VARCHAR(50),
    MGR INT,
    HIREDATE DATE,
    SAL DECIMAL(10,2),
    COMM DECIMAL(10,2),
    DEPTNO INT
);

--------------------------------------------------
-- DEPT
--------------------------------------------------
CREATE TABLE DEPT
(
    DEPTNO INT PRIMARY KEY,
    DNAME VARCHAR(50),
    LOC VARCHAR(50)
);

--------------------------------------------------
-- STUDENT
--------------------------------------------------
CREATE TABLE STUDENT
(
    STUDENT_ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    GENDER CHAR(1),
    AGE INT,
    CITY VARCHAR(50)
);

--------------------------------------------------
-- COURSE
--------------------------------------------------
CREATE TABLE COURSE
(
    COURSE_ID INT PRIMARY KEY,
    COURSE_NAME VARCHAR(100),
    DURATION VARCHAR(30),
    FEES DECIMAL(10,2)
);

--------------------------------------------------
-- ENROLLMENT
--------------------------------------------------
CREATE TABLE ENROLLMENT
(
    ENROLLMENT_ID INT PRIMARY KEY,
    STUDENT_ID INT,
    COURSE_ID INT,
    ENROLL_DATE DATE
);

--------------------------------------------------
-- SALES
--------------------------------------------------
CREATE TABLE SALES
(
    SALE_ID INT PRIMARY KEY,
    PRODUCT_ID INT,
    QUANTITY INT,
    SALE_DATE DATE,
    TOTAL_AMOUNT DECIMAL(10,2)
);

--------------------------------------------------
-- INVENTORY
--------------------------------------------------
CREATE TABLE INVENTORY
(
    INVENTORY_ID INT PRIMARY KEY,
    PRODUCT_ID INT,
    STOCK INT,
    LAST_UPDATED DATE
);

--------------------------------------------------
-- SUPPLIER
--------------------------------------------------
CREATE TABLE SUPPLIER
(
    SUPPLIER_ID INT PRIMARY KEY,
    SUPPLIER_NAME VARCHAR(100),
    CITY VARCHAR(50),
    PHONE VARCHAR(15)
);

--------------------------------------------------
-- LIBRARY
--------------------------------------------------
CREATE TABLE LIBRARY
(
    BOOK_ID INT PRIMARY KEY,
    BOOK_NAME VARCHAR(100),
    AUTHOR VARCHAR(100),
    PUBLISHER VARCHAR(100),
    PRICE DECIMAL(10,2)
);

--------------------------------------------------
-- ACCOUNT
--------------------------------------------------
CREATE TABLE ACCOUNT
(
    ACCOUNT_NO INT PRIMARY KEY,
    CUSTOMER_NAME VARCHAR(100),
    ACCOUNT_TYPE VARCHAR(30),
    BALANCE DECIMAL(12,2)
);

--------------------------------------------------
-- EMPLOYEE_PAYROLL
--------------------------------------------------
CREATE TABLE EMPLOYEE_PAYROLL
(
    EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(100),
    BASIC_SALARY DECIMAL(10,2),
    HRA DECIMAL(10,2),
    BONUS DECIMAL(10,2)
);

--------------------------------------------------
-- HOSPITAL
--------------------------------------------------
CREATE TABLE HOSPITAL
(
    HOSPITAL_ID INT PRIMARY KEY,
    HOSPITAL_NAME VARCHAR(100),
    CITY VARCHAR(50),
    CONTACT_NO VARCHAR(15)
);

--------------------------------------------------
-- PATIENT
--------------------------------------------------
CREATE TABLE PATIENT
(
    PATIENT_ID INT PRIMARY KEY,
    PATIENT_NAME VARCHAR(100),
    AGE INT,
    GENDER CHAR(1),
    DISEASE VARCHAR(100)
);