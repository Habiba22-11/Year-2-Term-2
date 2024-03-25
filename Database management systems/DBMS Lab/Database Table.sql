-- Create Database
create DATABASE ICE_9th_batch_NSTU_16th_batch;

USE ICE_9th_batch_NSTU_16th_batch;

-- Create Table
create table STUDENTS_INFORMATION(
name varchar(50),
roll int(30),
session varchar(30),
course varchar(30));
-- Insert Value 
INSERT INTO STUDENT_INFORMATION(name,roll,session,course) VALUES('Shifa',39,'2020-21','DC');
INSERT INTO STUDENT_INFORMATION(name,roll,session,course) VALUES('Jemi',40,'2020-21','ITF');
INSERT INTO STUDENT_INFORMATION(name,roll,session,course) VALUES('Jarir',01,'2020-21','DC');
INSERT INTO STUDENT_INFORMATION(name,roll,session,course) VALUES('Jarir',02,'2020-21','IPE');
INSERT INTO STUDENT_INFORMATION(name,roll,session,course) VALUES('Jarir',03,'2020-21','DBMS');

-- Show Data From Table 
select * From STUDENT_INFORMATION;
select * from STUDENT_INFORMATION where roll = 01;
select * from STUDENT_INFORMATION where name='Shifa';
select * from STUDENT_INFORMATION where session='2020-21';
