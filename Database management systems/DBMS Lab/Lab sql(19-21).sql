-- Create Database
create DATABASE ICE;
USE ICE;

-- Create Table
create table table1(
name varchar(50),
roll int(30)
);

-- Insert Value 
INSERT INTO  table1 (name,roll) VALUES('Shifa',1);
INSERT INTO  table1(name,roll) VALUES('Jadwa',2);

-- Show Data From Table 
select * From  table1;

-- Create Table
create table table2(
roll int(30),
CGPA float(20)
);
-- Insert Value 
INSERT INTO table2(roll,CGPA) VALUES(1,3.95);
INSERT INTO table2(roll,CGPA) VALUES(2,3.75);

select * from table2;

-- join
select table1.name,table1.roll,table2.CGPA from table1 join table2 on table1.roll=table2.roll;
-- cross join
select table1.name,table1.roll,table2.CGPA from table1 cross join table2 on table1.roll=table2.roll;
select table1.name,table1.roll,table2.roll,table2.CGPA from table1 cross join table2;

-- Create Table
create table table3(
roll2 int(30),
CGPA float(20)
);
-- Insert Value 
INSERT INTO table3(roll2,CGPA) VALUES(1,3.95);
INSERT INTO table3(roll2,CGPA) VALUES(3,2.75);

select * from table3;

-- left outer join
select table1.name,table1.roll,table3.roll2,table3.CGPA from table1 left join table3 on table1.roll=table3.roll2;

-- right outer join
select table1.name,table1.roll,table3.roll2,table3.CGPA from table1 right join table3 on table1.roll=table3.roll2;

select table1.name,table1.roll,table3.roll2,table3.CGPA from table1 full join table3 on table1.roll=table3.roll2;


-- full outer join
select table1.name,table1.roll,table3.roll2,table3.CGPA from table1 left join table3 on table1.roll=table3.roll2 
union
select table1.name,table1.roll,table3.roll2,table3.CGPA from table1 right join table3 on table1.roll=table3.roll2;


select table1.name,table1.roll,table3.roll2,table3.CGPA from table1 full join table3 on table1.roll=table3.roll2;

-- Create Table
create table table4(
roll int(30),
CGPA float(20)
);
-- Insert Value 
INSERT INTO table4(roll,CGPA) VALUES(1,3.95);
INSERT INTO table4(roll,CGPA) VALUES(2,3.75);
INSERT INTO table4(roll,CGPA) VALUES(3,3.50);
INSERT INTO table4(roll,CGPA) VALUES(4,3.75);
INSERT INTO table4(roll,CGPA) VALUES(5,3.75);
INSERT INTO table4(roll,CGPA) VALUES(6,3.50);
-- show table
select * from table4;

-- between
select * from table4 where CGPA between 3.67 and 4.00;

-- group by 
select cgpa, count(CGPA) from table4 group by cgpa;
select cgpa,count(CGPA) as total from table4  group by cgpa having total>1;
-- select cgpa from table4 group by cgpa order by cgpa asc;
select cgpa,count(CGPA) from table4 group by cgpa order by cgpa asc;
select cgpa ,count(CGPA) from table4 where roll<=4 group by cgpa order by (CGPA)asc;
select cgpa ,count(CGPA) as total from table4 where roll<=4 group by cgpa having total>1 order by (CGPA)asc ;