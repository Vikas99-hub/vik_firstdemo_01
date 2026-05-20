CREATE DATABASE college;
USE college;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade varchar(1),
city VARCHAR(30));

INSERT INTO student
(rollno, name, marks, grade, city)
values
(101, "anil", 78, "C", "pune"),
(102, "vikas", 100, "A", "cta"),
(103, "arun", 99, "B", "cta"),
(104, "yashas", 88, "D", "cta"),
(105, "veere", 78, "C", "bng"),
(106, "ram", 90, "C", "ayodya");

select * from student;

select distinct city from student;

select * from student where marks>80;

select * from student where marks between 80 and 90;

select * from student where city in ("cta");

select * from student limit 3;

select * from student order by marks; -- always takes ascending order

select * from student order by marks desc;

select * from student order by marks desc limit 3; -- gives top 3 students

select max(marks) from student;

select avg(marks) from student;

select sum(marks) from student;

select count(name) from student;

select city, count(name) from student group by city;
select city, avg(marks) from student group by city;


