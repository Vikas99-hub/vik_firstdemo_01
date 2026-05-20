-- DATA BASE MANIPULATION COMMANDS

--  It's used to comment 

-- SQL is not a case sensitive 

-- CREATING DATABASE
CREATE DATABASE CLASS_10DB; #ctrl+enter

CREATE DATABASE EMPLOYEE_DB; 

create database  if not exists EMPLOYEE_DB_2;

CREATE DATABASE  IF NOT EXISTS UNIVERSITY_DB ;


-- LISTING THE AVAILABLE DATABASES

SHOW DATABASES;

-- DATABASE SELECTION
-- destination db - to see any changes 
-- USE EMPLOYEE1_DB;

USE CLASS_10DB;

USE EMPLOYEE_DB;
-- ; it 'sthe end of this query


-- VERIFY THE DATABASE
SELECT DATABASE();  -- shows the database that we are working on

-- Dropping  DATABASE  IN MYSQL(DROPPING)
-- 1st method
DROP DATABASE IF EXISTS EMPLOYEE_DB;
-- 2nd method 
DROP DATABASE  EMPLOYEE_DB_2;

DROP DATABASE IF EXISTS university_db;



SHOW DATABASES;

-- DATA BASE MANIPULATION COMMANDS

--  It's used to comment 

-- SQL is not a case sensitive 

-- CREATING DATABASE
CREATE DATABASE CLASS_10DB; #ctrl+enter

CREATE DATABASE EMPLOYEE_DB; 

create database  if not exists EMPLOYEE_DB_2;

CREATE DATABASE  IF NOT EXISTS UNIVERSITY_DB ;


-- LISTING THE AVAILABLE DATABASES

SHOW DATABASES;

-- DATABASE SELECTION
-- destination db - to see any changes 
-- USE EMPLOYEE1_DB;

USE CLASS_10DB;

USE EMPLOYEE_DB;
-- ; it 'sthe end of this query


-- VERIFY THE DATABASE
SELECT DATABASE();

-- Dropping  DATABASE  IN MYSQL(DROPPING)
-- 1st method
DROP DATABASE IF EXISTS EMPLOYEE_DB;
-- 2nd method 
DROP DATABASE  EMPLOYEE_DB_2;

DROP DATABASE IF EXISTS university_db;



SHOW DATABASES;

---------------------------------------------------------------------------------------------------------------------------------------------------------------
#TABLE MANIPULATION COMMANDS IN MY SQL

#CREATE TABLE ,DESCRIBE TABEL , SHOW TABLE ,
# ALTER TABLE , TURNCATE , DROP TABLE


-- another new database 
create database class_11db;

-- destination db
use class_11db;

select database();

-- salary decimal(p,d)  ,if salary is 40000.00,  p gives precision means size of salary.. here it is 7,  d gives decimal values.. here 2 decimal values
-- therefore salary decimal(7,2)

#CREATING THE TABLE 
create table emp_details(
name varchar(25),
age int ,
gender char(1),
doj date,
city  varchar(50),
salary float
);
-- structure of a table 
#describing the table
desc emp_details;

describe emp_details;

#how to add the check constraint is added in the table?
# two types  column check , table check
create table emp_details2(
emp_id varchar(20) primary key,
first_name varchar(20) not null ,
last_name varchar(20) ,
gender varchar(10),
role varchar(50),
dept varchar(50),
manager_id  varchar(100),
exp int not null check (exp > 10)
);

desc emp_details2;   -- gives structure of the table

#describe
describe emp_details2;
desc emp_details2;
-- drop the table 
DROP TABLE emp_details;

-- list of all the tables
show tables;

-- table manipulations commands 

# ALTERNATE  THE TABLE

#ADDING A COLUMN 
# RENAMING A COLUMN
#MODIFYING  COLUMN 
#DROPPING  COLUMN

desc emp_details2;

#ADDING COLUMNS TO THE TABLE
#  ADDING SINGLE COLUMN IN A TABLE , ADDING MULTIPLE COLUMNS  IN THE TABLE 

#ADDING THE SINGLE COLUMN IN THE TABLE 
 alter table class_11db.emp_details2 
 add branch varchar(50);
 
 
 -- creating a new column in the emp_details
 alter table  class_10db.emp_details
 add duration varchar(12);
 -- structure of the table
 desc emp_details2;
 
 describe emp_details2;
 
 #ADDING THE MULTIPLE COLUMNS  IN THE TABLE 
 alter table class_11db.emp_details2 
 add dept_id  varchar(10),
 add state varchar(20) ;


#MODIFYING THE COLUMN
#TWO TYPES --> MODIFYING THE SINGLE COLUMN , MODIFYING THE MULTIPLE COLUMN

#MODIFYING THE SINGLE COLUMN
alter table class_11db.emp_details2 
modify gender varchar(1) not null;

desc emp_details2;

#MODIFYING THE MULTIPLE COLUMN IN THE TABLE 
alter table class_10db.emp_details2 
modify first_name varchar(35),
modify last_name varchar(15);


#RENAMING A COLUMN
alter table class_11db.emp_details2 
change column role  job varchar(30);

-- 
desc emp_details2;

#DROP THE COLUMN IN A TABLE  
alter table emp_details2 
drop column manager_id;

desc emp_details2;

#RENAMING THE TABLE 
alter table emp_details2 
rename to emp_records;

 desc emp_records;

#GENERATED COLUMNS IN THE DATA
alter table emp_records 
add full_name varchar(100)
generated always as (concat(first_name , last_name));

desc emp_records;

# rearrangement of the columns
alter table emp_records
modify last_name varchar(15) AFTER state;

# rearrangement of the columns
-- alter table emp_records
-- modify state varchar(20) AFTER FIRST;

DESC emp_records;

#TRUNCATE TABLE 
TRUNCATE TABLE emp_records;

#DROPPING THE TABLE IN THE SQL
drop table emp_details;




desc orders;
select * from orders;


#difference between the drop and truncate

-- new table

use class_11db;

create table employees(
	id int primary key,
    name varchar(30),
    salary decimal(10,2));

insert into employees(id, name, salary)
values
(1,"vikas", 48000),
(2, "arun", 35000),
(3, "yash", 50000);

desc employees;  -- shows the str

select * from employees;

alter table employees
add column bonus int;
    
-- updating the column

set sql_safe_updates=0;

update employees
set bonus = 5000;

update employees
set bonus = 10000
where salary > 45000;  -- for a particulat column

update employees
set bonus = salary * 0.1;   -- 10% increment baseed on their salary for the entire column

select * from employees;


