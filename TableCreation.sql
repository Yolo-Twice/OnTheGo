create database OnTheGo
create table Customer(
    CustID int PRIMARY KEY,
    CustName VARCHAR(25),
    CustEmail VARCHAR(25), 
    CustPhone int, 
    IsMember BOOLEAN, 
    Points int
    ); --Creates the customer table


create table product (
    productid int primary key,
    name varchar(50),
    price int,
    category varchar(15),
    stockquantity int
); --create table product
