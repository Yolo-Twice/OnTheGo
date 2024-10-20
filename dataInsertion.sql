Use OnTheGo;

INSERT INTO Employee (empname, role, salary, empphone, DateOfJoining, DateOfBirth)
VALUES 
('Rajesh Kumar', 'Manager', 50000, 9876543210, '2021-06-15', '1980-05-25'),
('Neha Gupta', 'Cashier', 25000, 9123456789, '2022-01-10', '1992-03-17'),
('Ravi Sharma', 'Salesperson', 30000, 9876501234, '2020-08-21', '1987-09-12'),
('Priya Verma', 'Salesperson', 28000, 9988776655, '2023-03-05', '1995-07-23'),
('Anil Singh', 'Inventory Manager', 40000, 9988771122, '2019-11-14', '1985-02-10'),
('Kiran Yadav', 'Cashier', 26000, 9112233445, '2021-07-25', '1990-08-15'),
('Shivani Mehta', 'Salesperson', 29000, 9876234567, '2022-12-11', '1993-12-05'),
('Rahul Patel', 'Stock Manager', 38000, 9876543211, '2020-02-19', '1988-04-14'),
('Aarti Desai', 'Accountant', 45000, 9123456790, '2021-10-10', '1984-10-01'),
('Vivek Mishra', 'Assistant Manager', 47000, 9876201111, '2022-06-21', '1983-11-30');


INSERT INTO Customer (CustName, CustEmail, CustPhone, IsMember, Points)
VALUES 
('Amit Joshi', 'amit.joshi@gmail.com', 9988771234, TRUE, 500),
('Sneha Kapoor', 'sneha.kapoor@yahoo.com', 9876543210, TRUE, 600),
('Vikas Thakur', 'vikas.thakur@gmail.com', 9123456789, FALSE, 0),
('Anita Deshmukh', 'anita.deshmukh@rediffmail.com', 9988776677, TRUE, 300),
('Sunil Sharma', 'sunil.sharma@hotmail.com', 9112233445, FALSE, 0),
('Pooja Nair', 'pooja.nair@gmail.com', 9876201234, TRUE, 450),
('Rohan Malhotra', 'rohan.malhotra@outlook.com', 9876544321, TRUE, 200),
('Meena Jain', 'meena.jain@gmail.com', 9988765432, FALSE, 0),
('Sameer Sinha', 'sameer.sinha@gmail.com', 9123445567, TRUE, 750),
('Gaurav Khanna', 'gaurav.khanna@gmail.com', 9876555555, TRUE, 100);

INSERT INTO Product (name, price, category, stockquantity)
VALUES 
('Laptop', 50000, 'Electronics', 10),
('Mobile Phone', 15000, 'Electronics', 25),
('Headphones', 2000, 'Accessories', 50),
('Refrigerator', 25000, 'Appliances', 8),
('Microwave Oven', 12000, 'Appliances', 12),
('Washing Machine', 18000, 'Appliances', 5),
('Television', 40000, 'Electronics', 7),
('Blender', 3000, 'Appliances', 20),
('Shoes', 2500, 'Clothing', 35),
('T-shirt', 500, 'Clothing', 100);

INSERT INTO Sales (CustID, EmpID, SaleDate, TotalAmount, PaymentMethod, PointsUsed)
VALUES 
(1, 1, '2024-10-10 14:30:00', 52000, 'Credit Card', 100),
(2, 2, '2024-10-11 15:15:00', 16500, 'Cash', 50),
(3, 3, '2024-10-12 16:45:00', 2000, 'UPI', 0),
(4, 4, '2024-10-13 12:20:00', 25500, 'Debit Card', 150),
(5, 5, '2024-10-14 13:10:00', 40000, 'Credit Card', 0),
(6, 6, '2024-10-15 11:00:00', 5000, 'UPI', 100),
(7, 7, '2024-10-16 18:25:00', 2500, 'Cash', 50),
(8, 8, '2024-10-17 14:50:00', 50000, 'Debit Card', 0),
(9, 9, '2024-10-18 17:35:00', 2500, 'Credit Card', 50),
(10, 10, '2024-10-19 19:40:00', 3000, 'UPI', 100),
(3,1,'2024-10-20 16:00:54',15000,'UPI',0);

INSERT INTO Items (SaleID, ProductID, Quantity, Subtotal)
VALUES 
(1, 1, 1, 50000),
(1, 3, 1, 2000),  
(2, 2, 1, 15000), 
(2, 3, 1, 2000),  
(3, 3, 1, 2000),
(4, 4, 1, 25000),
(4, 9, 2, 5000), 
(5, 7, 1, 40000),
(6, 8, 1, 3000), 
(6, 9, 1, 2000), 
(7, 9, 1, 2500), 
(8, 1, 1, 50000),
(9, 9, 1, 2500),  
(10, 10, 6, 3000),
(11,2,1,15000); 

