-- Create Database
create DATABASE DBMS_CH_7;
USE DBMS_CH_7;

-- Create Table CLIENT_MASTER 1 NO
create table CLIENT_MASTER(
CLIENTNO Varchar(6),
NAME Varchar(20),
ADDRESS1 Varchar(30),
ADDRESS2 Varchar(30),
CITY Varchar(15),
PINCODE numeric(8),
STATE Varchar(15),
BALDUE Numeric(10,2)
);