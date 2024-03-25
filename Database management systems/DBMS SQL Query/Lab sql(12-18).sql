-- Create Database
create DATABASE NSTU_16th_batch;
USE NSTU_16th_batch;
use ICE_9th_batch;
-- Create Table
create table STUDENT_INFO(
name varchar(50),
roll int(30),
session varchar(30),
course varchar(30),
marks varchar(20)
);
-- Insert Value 
INSERT INTO STUDENT_INFO(name,roll,session,course,marks) VALUES('Shifa',39,'2020-21','DC',76);
INSERT INTO STUDENT_INFO(name,roll,session,course,marks) VALUES('Jemi',44,'2020-21','ITF',80);
INSERT INTO STUDENT_INFO(name,roll,session,course,marks) VALUES('Jarir',01,'2020-21','DC',90);
INSERT INTO STUDENT_INFO(name,roll,session,course,marks) VALUES('Jarir',50,'2020-21','IPE',86);
INSERT INTO STUDENT_INFO(name,roll,session,course,marks) VALUES('Jarir',03,'2020-21','DBMS',85);

select * from STUDENT_INFO;
-- aggregate function
-- MAX,MIN,AVG
select Max(marks) from STUDENT_INFO;
select Min(marks) from STUDENT_INFO;
select Avg(marks) from STUDENT_INFO;
-- POWER
select power(marks,2)from STUDENT_INFO;
-- numeric
select sqrt(marks) from STUDENT_INFO;
-- string 
select lower(name) from STUDENT_INFO;
select upper(name) from STUDENT_INFO;
-- dual
select 2*2 from dual;
select 2*2,5+8 from dual;
-- alaising
select 2*2 as result from dual;
select 2*2 as result,2+1 Credit from dual;
-- like
select * from STUDENT_INFO where name like '%a';
select * from STUDENT_INFO where name like 'j%';
select * from STUDENT_INFO where name like '%e%';
select * from STUDENT_INFO where name like '_a%';
select * from STUDENT_INFO where name like '__i%';
select * from STUDENT_INFO where name like '_e%';
-- in and not in
select * from STUDENT_INFO where name in('jarir');
select * from STUDENT_INFO where roll in(39,40);
select * from STUDENT_INFO where name not in('jarir');
select * from STUDENT_INFO where roll not in(39);