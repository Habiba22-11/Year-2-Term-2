-- Create Database
create DATABASE shifa;
USE shifa;

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
INSERT INTO STUDENT_DATA(name,roll,session,course) VALUES('Jerin',02,'2020-21','IPE');
INSERT INTO STUDENT_DATA(name,roll,session,course) VALUES('Jafrin',03,'2020-21','DBMS');

-- Show Data From Table 
select * From STUDENT_DATA;

-- view
create view stu_info as select name,roll,course from STUDENT_DATA;
create view stu_info2 as select roll,session from STUDENT_DATA;
select * from stu_info;
select * from stu_info2;

-- view operation join
select stu_info.name,stu_info.roll,stu_info.course,stu_info2.roll,stu_info2.session from stu_info join stu_info2 on stu_info.roll=stu_info2.roll;

-- view operation update
UPDATE stu_info SET roll= 10 WHERE roll=01;
select * from stu_info;

-- view operation delete
delete from stu_info where name='Shifa';
select * from stu_info;


-- trigger
-- Create Table
create table table3(
name varchar(50),
roll int(30),
session varchar(30),
course varchar(30)
);


-- insert
create trigger table5_insert before insert on STUDENT_DATA for each row insert into table3 values(new.name,new.roll,new.session,new.course);
select * From STUDENT_DATA;
select * from table3;

INSERT INTO STUDENT_DATA(name,roll,session,course) VALUES('Nujha',30,'2020-21','MATH');
INSERT INTO STUDENT_DATA(name,roll,session,course) VALUES('Jadwa',20,'2020-21','DM');
select * From STUDENT_DATA;
select * from table3;


-- update
create trigger table5_update after update on STUDENT_DATA for each row insert into table3 values(new.name,new.roll,new.session,new.course);
select * From STUDENT_DATA;
select * from table3;


UPDATE STUDENT_DATA SET roll= 25 WHERE roll=30;
select * From STUDENT_DATA;
select * from table3;


-- delete
create trigger table5_delete after delete on STUDENT_DATA for each row insert into table3 values(old.name,old.roll,old.session,old.course);
select * From STUDENT_DATA;
select * from table3;


delete from STUDENT_DATA where name='Shifa';
select * From STUDENT_DATA;
select * from table3;
