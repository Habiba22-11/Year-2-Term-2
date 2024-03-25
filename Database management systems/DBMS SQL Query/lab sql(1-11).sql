-- Create Database
create DATABASE ICE_9th_batch;
USE ICE_9th_batch;

-- Create Table
create table STUDENT_DATA(
name varchar(50),
roll int(30),
session varchar(30),
course varchar(30)
);
-- Insert Value 
INSERT INTO STUDENT_DATA(name,roll,session,course) VALUES('Shifa',39,'2020-21','DC');
INSERT INTO STUDENT_DATA(name,roll,session,course) VALUES('Jemi',40,'2020-21','ITF');
INSERT INTO STUDENT_DATA(name,roll,session,course) VALUES('Jarir',01,'2020-21','DC');
INSERT INTO STUDENT_DATA(name,roll,session,course) VALUES('Jarir',02,'2020-21','IPE');
INSERT INTO STUDENT_DATA(name,roll,session,course) VALUES('Jarir',03,'2020-21','DBMS');

-- Show Data From Table 
select * From STUDENT_DATA;
select * from STUDENT_DATA where roll =01;
select * from STUDENT_DATA where name='Shifa';
select * from STUDENT_DATA where session='2020-21';

select Distinct name from STUDENT_DATA;
select roll from STUDENT_DATA order by roll asc;
select roll from STUDENT_DATA order by roll desc;
select roll from STUDENT_DATA where roll=03;
select * from STUDENT_DATA where name='Jarir' AND roll=03 ;
select * from STUDENT_DATA where name='Jarir' or roll=03 ;
alter table STUDENT_DATA  ADD column dept varchar(30);
alter table STUDENT_DATA Drop column dept;
alter table STUDENT_DATA Rename column roll to id;
alter table STUDENT_DATA Modify roll float(30);
UPDATE STUDENT_DATA SET id= 10 WHERE id=1;
delete from STUDENT_DATA where name='Shifa';
-- Destroy Table 
DROP TABLE STUDENT_DATA  ;

-- Drop Database
DROP DATABASE ICE_9th_batch;