show databases;
create database lims;
use lims;
show tables;
create table people(
peid int PRIMARY KEY ,
pename varchar(20) UNIQUE NOT NULL,
pemail varchar(20) UNIQUE NOT NULL,
pepenalty int,
penumber int UNIQUE NOT NULL);

create table Author(
Authorid int PRIMARY KEY,
Authorname varchar(20) UNIQUE NOT NULL);

create table specifictype(
tid int PRIMARY KEY,
tname varchar(20) UNIQUE NOT NULL);

create table Book(
bookid int PRIMARY KEY,
bookname varchar(20) UNIQUE NOT NULL,
Authorid int ,
tid int,
FOREIGN KEY (Authorid) REFERENCES Author(Authorid),
FOREIGN KEY (tid) REFERENCES specifictype(tid));

Create table Exchange (
Exchangeid INT PRIMARY KEY,
peid INT,
bookid INT,
issueddate DATE,
returndate DATE,
FOREIGN KEY (peid) REFERENCES people(peid),
FOREIGN KEY (bookid) REFERENCES Book(bookid)
);