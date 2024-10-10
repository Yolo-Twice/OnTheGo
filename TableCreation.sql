drop DATABASE IF EXISTS OnTheGo;
create database OnTheGo;
use OnTheGo;

create table employee(
    empid int primary key,
    empname varchar(30),
    role varchar(15),
    salary int,
    empphone int,
    DateOfJoining date,
    DateOfBirth date
); --create table employee
create table Customer(CustID int PRIMARY KEY,
    CustName VARCHAR(25),
    CustEmail VARCHAR(25),
    CustPhone int,
    IsMember BOOLEAN,
    Points int
); --Create table Customer

create table product (
    productid int primary key,
    name varchar(50),
    price int,
    category varchar(15),
    stockquantity int
); -- Create Table Product

create table Sales(
    SaleID int PRIMARY KEY,
    CustID int,
    EmpID int,
    SaleDate DATETIME,
    TotalAmount int,
    PaymentMethod VARCHAR(10),
    PointsUsed FLOAT,
    Foreign Key (CustID) REFERENCES Customer(CustID),
    Foreign Key (EmpID) REFERENCES Employee(EmpID) 
); --Create table Sales


