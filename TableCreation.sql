drop DATABASE IF EXISTS OnTheGo;
create database OnTheGo;
use OnTheGo;

create table employee(
    empid int primary key AUTO_INCREMENT,
    empname varchar(30),
    role varchar(30),
    salary int,
    empphone BIGint,
    DateOfJoining date,
    DateOfBirth date
);
create table Customer(CustID int PRIMARY KEY AUTO_INCREMENT,
    CustName VARCHAR(25),
    CustEmail VARCHAR(50),
    CustPhone bigint,
    IsMember BOOLEAN,
    Points int
);

create table product (
    productid int primary key AUTO_INCREMENT,
    name varchar(50),
    price int,
    category varchar(15),
    stockquantity int
);

create table Sales(
    SaleID int PRIMARY KEY AUTO_INCREMENT,
    CustID int,
    EmpID int,
    SaleDate DATETIME,
    TotalAmount int,
    PaymentMethod VARCHAR(20),
    PointsUsed FLOAT,
    Foreign Key (CustID) REFERENCES Customer(CustID),
    Foreign Key (EmpID) REFERENCES Employee(EmpID) 
);

create table Items(
    SaleID int,
    ProductID int,
    Quantity int,
    Subtotal int,
    Foreign Key (SaleID) REFERENCES Sales(SaleID),
    Foreign Key (ProductID) REFERENCES Product(ProductID)
);

