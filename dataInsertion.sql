Use OnTheGo;

INSERT INTO employee (empid, empname, role, salary, empphone, DateOfJoining, DateOfBirth) VALUES
(1, 'Alice Johnson', 'Manager', 75000, 1234567890, '2020-01-15', '1985-06-25'),
(2, 'Bob Smith', 'Sales Associate', 50000, 2345678901, '2021-03-20', '1990-02-14'),
(3, 'Charlie Brown', 'Cashier', 40000, 3456789012, '2022-06-10', '1995-11-30'),
(4, 'Diana Prince', 'Sales Associate', 48000, 4567890123, '2023-04-01', '1992-08-16');

INSERT INTO Customer (CustID, CustName, CustEmail, CustPhone, IsMember, Points) VALUES
(1, 'Eve Adams', 'eve.adams@example.com', 5678901234, TRUE, 150),
(2, 'Frank Castle', 'frank.castle@example.com', 6789012345, FALSE, 0),
(3, 'Grace Lee', 'grace.lee@example.com', 7890123456, TRUE, 200),
(4, 'Henry Ford', 'henry.ford@example.com', 8901234567, TRUE, 50);

INSERT INTO product (productid, name, price, category, stockquantity) VALUES
(1, 'Laptop', 1200, 'Electronics', 30),
(2, 'Smartphone', 800, 'Electronics', 50),
(3, 'Desk Chair', 150, 'Furniture', 100),
(4, 'Notebook', 5, 'Stationery', 200);

INSERT INTO Sales (SaleID, CustID, EmpID, SaleDate, TotalAmount, PaymentMethod, PointsUsed) VALUES
(1, 1, 2, '2023-10-01 10:30:00', 1250, 'Credit Card', 50),
(2, 3, 1, '2023-10-05 14:00:00', 800, 'Cash', 20),
(3, 2, 4, '2023-10-10 16:45:00', 150, 'Debit Card', 0);

INSERT INTO Items (SaleID, ProductID, Quantity, Subtotal) VALUES
(1, 1, 1, 1200),
(1, 4, 10, 50),
(2, 2, 1, 800),
(3, 3, 1, 150);

