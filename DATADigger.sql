CREATE DATABASE DataDigger2;
USE DataDigger2;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Address VARCHAR(200)
);

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Stock INT DEFAULT 0
);


CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE DEFAULT (CURRENT_DATE),
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


CREATE TABLE OrderDetails (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Subtotal DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


INSERT INTO Customers (Name, Email, Address) VALUES
('Aarav Mehta', 'aarav@example.com', 'Mumbai'),
('Priya Sharma', 'priya@example.com', 'Delhi'),
('Rahul Verma', 'rahul@example.com', 'Bangalore');


INSERT INTO Products (ProductName, Price, Stock) VALUES
('Laptop', 60000.00, 10),
('Smartphone', 25000.00, 25),
('Headphones', 2000.00, 50),
('Smartwatch', 8000.00, 15);


INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2025-11-10', 62000.00),
(2, '2025-11-11', 27000.00);


INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Subtotal) VALUES
(1, 1, 1, 60000.00),
(1, 3, 1, 2000.00),
(2, 2, 1, 25000.00),
(2, 4, 1, 2000.00);


INSERT INTO Customers (Name, Email, Address)
VALUES ('Karan Singh', 'karan@example.com', 'Chennai');


SELECT * FROM Customers;


SELECT * FROM Products WHERE Price > 5000;

SET SQL_SAFE_UPDATES = 1 ;
UPDATE Products
SET Price = 2200
WHERE ProductName = 'Headphones';


DELETE FROM Customers WHERE CustomerID = 3;


SELECT COUNT(*) AS Total_Customers FROM Customers;


SELECT AVG(Price) AS Average_Price FROM Products;


SELECT SUM(TotalAmount) AS Total_Sales FROM Orders;


SELECT ProductName, Price AS Highest_Price
FROM Products
WHERE Price = (SELECT MAX(Price) FROM Products);


SELECT 
    o.OrderID,
    c.Name AS CustomerName,
    p.ProductName,
    od.Quantity,
    od.Subtotal,
    o.OrderDate
FROM OrderDetails od
JOIN Orders o ON od.OrderID = o.OrderID
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Products p ON od.ProductID = p.ProductID;


DROP TABLE IF EXISTS OrderDetails, Orders, Products, Customers;
