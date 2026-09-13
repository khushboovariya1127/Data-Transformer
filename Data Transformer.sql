--  customers information table 

CREATE DATABASE Customer_Information_Management ;

USE Customer_Information_Management ;

CREATE TABLE Customer_Information_Management (
CustomerID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(100),
RegistrationDate DATE
);

INSERT INTO Customer_Information_Management (CustomerID, FirstName, LastName, Email, RegistrationDate)
VALUES
(1, 'James', 'Anderson', 'james.anderson@gmail.com', '2025-01-05'),
(2, 'Emily', 'Johnson', 'emily.johnson@gmail.com', '2025-01-08'),
(3, 'Michael', 'Williams', 'michael.williams@gmail.com', '2025-01-12'),
(4, 'Olivia', 'Brown', 'olivia.brown@gmail.com', '2025-01-15'),
(5, 'William', 'Jones', 'william.jones@gmail.com', '2025-01-20'),
(6, 'Sophia', 'Miller', 'sophia.miller@gmail.com', '2025-01-24'),
(7, 'Benjamin', 'Davis', 'benjamin.davis@gmail.com', '2025-02-02'),
(8, 'Ava', 'Garcia', 'ava.garcia@gmail.com', '2025-02-06'),
(9, 'Daniel', 'Rodriguez', 'daniel.rodriguez@gmail.com', '2025-02-10'),
(10, 'Isabella', 'Martinez', 'isabella.martinez@gmail.com', '2025-02-14'),
(11, 'Matthew', 'Hernandez', 'matthew.hernandez@gmail.com', '2025-02-18'),
(12, 'Mia', 'Lopez', 'mia.lopez@gmail.com', '2025-02-22'),
(13, 'Joseph', 'Gonzalez', 'joseph.gonzalez@gmail.com', '2025-02-25'),
(14, 'Charlotte', 'Wilson', 'charlotte.wilson@gmail.com', '2025-03-01'),
(15, 'David', 'Anderson', 'david.anderson@gmail.com', '2025-03-05'),
(16, 'Amelia', 'Thomas', 'amelia.thomas@gmail.com', '2025-03-09'),
(17, 'Christopher', 'Taylor', 'christopher.taylor@gmail.com', '2025-03-12'),
(18, 'Harper', 'Moore', 'harper.moore@gmail.com', '2025-03-16'),
(19, 'Andrew', 'Jackson', 'andrew.jackson@gmail.com', '2025-03-20'),
(20, 'Evelyn', 'Martin', 'evelyn.martin@gmail.com', '2025-03-24'),
(21, 'Joshua', 'Lee', 'joshua.lee@gmail.com', '2025-03-28'),
(22, 'Abigail', 'Perez', 'abigail.perez@gmail.com', '2025-04-02'),
(23, 'Ryan', 'Thompson', 'ryan.thompson@gmail.com', '2025-04-06'),
(24, 'Elizabeth', 'White', 'elizabeth.white@gmail.com', '2025-04-10'),
(25, 'John', 'Harris', 'john.harris@gmail.com', '2025-04-14'),
(26, 'Sofia', 'Sanchez', 'sofia.sanchez@gmail.com', '2025-04-18'),
(27, 'Nicholas', 'Clark', 'nicholas.clark@gmail.com', '2025-04-22'),
(28, 'Ella', 'Ramirez', 'ella.ramirez@gmail.com', '2025-04-26'),
(29, 'Anthony', 'Lewis', 'anthony.lewis@gmail.com', '2025-05-01'),
(30, 'Grace', 'Robinson', 'grace.robinson@gmail.com', '2025-05-05'),
(31, 'Alexander', 'Walker', 'alexander.walker@gmail.com', '2025-05-09'),
(32, 'Chloe', 'Young', 'chloe.young@gmail.com', '2025-05-13'),
(33, 'Jonathan', 'Allen', 'jonathan.allen@gmail.com', '2025-05-17'),
(34, 'Lily', 'King', 'lily.king@gmail.com', '2025-05-21'),
(35, 'Samuel', 'Wright', 'samuel.wright@gmail.com', '2025-05-25'),
(36, 'Hannah', 'Scott', 'hannah.scott@gmail.com', '2025-05-29'),
(37, 'Nathan', 'Green', 'nathan.green@gmail.com', '2025-06-02'),
(38, 'Lillian', 'Baker', 'lillian.baker@gmail.com', '2025-06-06'),
(39, 'Ryan', 'Adams', 'ryan.adams@gmail.com', '2025-06-10'),
(40, 'Natalie', 'Nelson', 'natalie.nelson@gmail.com', '2025-06-14'),
(41, 'Jacob', 'Hill', 'jacob.hill@gmail.com', '2025-06-18'),
(42, 'Victoria', 'Campbell', 'victoria.campbell@gmail.com', '2025-06-22'),
(43, 'Lucas', 'Mitchell', 'lucas.mitchell@gmail.com', '2025-06-26'),
(44, 'Zoe', 'Roberts', 'zoe.roberts@gmail.com', '2025-06-30'),
(45, 'Ethan', 'Carter', 'ethan.carter@gmail.com', '2025-07-04'),
(46, 'Scarlett', 'Phillips', 'scarlett.phillips@gmail.com', '2025-07-08'),
(47, 'Alexander', 'Evans', 'alexander.evans@gmail.com', '2025-07-12'),
(48, 'Madison', 'Turner', 'madison.turner@gmail.com', '2025-07-16'),
(49, 'Henry', 'Torres', 'henry.torres@gmail.com', '2025-07-20'),
(50, 'Layla', 'Parker', 'layla.parker@gmail.com', '2025-07-24');

SELECT * FROM Customer_Information_Management;

-- 13. trim extra spaces from the email field 

SELECT 
    CustomerID,
    TRIM(Email) AS CleanEmail
FROM Customer_Information_Management;



--  orders table 

CREATE DATABASE Orders_Table;

USE Orders_Table;

CREATE TABLE Orders_Table (
OrderID VARCHAR(100),
CustomerID VARCHAR(100),
OrderDate DATE,
TotalAmount varchar(100)
);

INSERT INTO Orders_Table (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
(1, 1, '2025-01-10', 125.50),
(2, 2, '2025-01-12', 89.99),
(3, 3, '2025-01-15', 245.75),
(4, 4, '2025-01-18', 56.40),
(5, 5, '2025-01-22', 310.25),
(6, 6, '2025-01-25', 145.99),
(7, 7, '2025-02-03', 78.50),
(8, 8, '2025-02-07', 199.99),
(9, 9, '2025-02-11', 425.00),
(10, 10, '2025-02-15', 67.25),
(11, 11, '2025-02-19', 159.75),
(12, 12, '2025-02-23', 289.50),
(13, 13, '2025-02-26', 95.00),
(14, 14, '2025-03-02', 350.75),
(15, 15, '2025-03-06', 120.50),
(16, 16, '2025-03-10', 275.99),
(17, 17, '2025-03-13', 49.99),
(18, 18, '2025-03-17', 185.25),
(19, 19, '2025-03-21', 399.00),
(20, 20, '2025-03-25', 72.50),
(21, 21, '2025-03-29', 215.75),
(22, 22, '2025-04-03', 99.99),
(23, 23, '2025-04-07', 450.50),
(24, 24, '2025-04-11', 135.25),
(25, 25, '2025-04-15', 275.00),
(26, 26, '2025-04-19', 88.75),
(27, 27, '2025-04-23', 325.99),
(28, 28, '2025-04-27', 155.50),
(29, 29, '2025-05-02', 65.25),
(30, 30, '2025-05-06', 240.00),
(31, 31, '2025-05-10', 175.75),
(32, 32, '2025-05-14', 92.50),
(33, 33, '2025-05-18', 360.25),
(34, 34, '2025-05-22', 115.99),
(35, 35, '2025-05-26', 299.50),
(36, 36, '2025-05-30', 74.25),
(37, 37, '2025-06-03', 425.75),
(38, 38, '2025-06-07', 189.99),
(39, 39, '2025-06-11', 55.50),
(40, 40, '2025-06-15', 315.25),
(41, 41, '2025-06-19', 145.00),
(42, 42, '2025-06-23', 275.50),
(43, 43, '2025-06-27', 89.75),
(44, 44, '2025-07-01', 395.99),
(45, 45, '2025-07-05', 165.25),
(46, 46, '2025-07-09', 210.50),
(47, 47, '2025-07-13', 59.99),
(48, 48, '2025-07-17', 340.75),
(49, 49, '2025-07-21', 125.99),
(50, 50, '2025-07-25', 475.00);

SELECT * FROM Orders_Table;

-- 1. INNER-JOIN: retrieve all orders and customers details where order exist 

SELECT *
FROM Orders_Table
INNER JOIN Customer_Information_Management 
ON Orders_Table.CustomerID = Customer_Information_Management.CustomerID;

-- 2. LEFT-JOIN: retrieve all customers and their corresponding orders (if any)

SELECT 
    Customer_Information_Management.CustomerID,
    Customer_Information_Management.FirstName,
    Customer_Information_Management.LastName,
    Customer_Information_Management.Email,
    Orders_Table.OrderID,
    Orders_Table.OrderDate,
    Orders_Table.TotalAmount
FROM Customer_Information_Management
LEFT JOIN Orders_Table
ON Customer_Information_Management.CustomerID = Orders_Table.CustomerID;

-- 3. RIGHT-JOIN: Retrieve all orders and their corresponding customers(if any)

SELECT 
    Customer_Information_Management.CustomerID,
    Customer_Information_Management.FirstName,
    Customer_Information_Management.LastName,
    Customer_Information_Management.Email,
    Orders_Table.OrderID,
    Orders_Table.OrderDate,
    Orders_Table.TotalAmount
FROM Customer_Information_Management
RIGHT JOIN  Orders_Table
ON Customer_Information_Management.CustomerID = Orders_Table.CustomerID;


-- 4. FULL-OUTER-JOIN: Retrieve all customers and all orders regardless of matching 

SELECT 
    Customer_Information_Management.CustomerID,
    Customer_Information_Management.FirstName,
    Customer_Information_Management.LastName,
    Customer_Information_Management.Email,
    Orders_Table.OrderID,
    Orders_Table.OrderDate,
    Orders_Table.TotalAmount
FROM Customer_Information_Management
LEFT JOIN Orders_Table
ON Customer_Information_Management.CustomerID = Orders_Table.CustomerID

UNION

SELECT 
    Customer_Information_Management.CustomerID,
    Customer_Information_Management.FirstName,
    Customer_Information_Management.LastName,
    Customer_Information_Management.Email,
    Orders_Table.OrderID,
    Orders_Table.OrderDate,
    Orders_Table.TotalAmount
FROM Customer_Information_Management
RIGHT JOIN Orders_Table
ON Customer_Information_Management.CustomerID = Orders_Table.CustomerID;

-- 5. Subquery to find customers who have placed orders worth more than the average amount

SELECT 
    CustomerID,
    FirstName,
    LastName,
    Email
FROM Customer_Information_Management
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Orders_Table
    WHERE TotalAmount > (
        SELECT AVG(TotalAmount)
        FROM Orders_Table
    )
);

-- 7. Extract the year and month from the order date 

SELECT 
     OrderID,
     OrderDate,
     YEAR(OrderDate) AS OrderYear,
     MONTH(OrderDate) AS OrderMonth
FROM Orders_Table

-- 8. calculate the difference in days between two dates (order date and current date)

SELECT
    OrderID,
    OrderDate,
    CURRENT_DATE() AS CurrentDate,
    DATEDIFF(CURRENT_DATE(), OrderDate) AS DaysDifference
FROM Orders_Table;

-- 9. Format order to more readable format('DD-MMM-YYYY')

SELECT 
    OrderID,
    OrderDate,
    DATE_FORMAT(OrderDate, '%d-%b-%Y') AS FormattedOrderDate
FROM Orders_Table;

-- 14. calculate the running total of totalamount for each order

SELECT 
    OrderID,
    OrderDate,
    TotalAmount,
    SUM(TotalAmount) OVER (ORDER BY OrderDate, OrderID) AS RunningTotal
FROM Orders_Table;

-- 15. rank orders based on the totalamount using the RANK() function

SELECT 
    OrderID,
    CustomerID,
    OrderDate,
    TotalAmount,
    RANK() OVER (ORDER BY TotalAmount DESC) AS OrderRank
FROM Orders_Table;

-- 16. assign a discount based on  totalamount in orders (e.g, >1000:10%off,>500:5%off)

SELECT 
    OrderID,
    CustomerID,
    TotalAmount,
    CASE
        WHEN TotalAmount > 350 THEN '10% OFF'
        WHEN TotalAmount > 200 THEN '5% OFF'
        ELSE 'No Discount'
    END AS Discount
FROM Orders_Table;

-- employees table 

CREATE DATABASE Employees_Table;

USE Employees_Table;

CREATE TABLE Employees_Table (
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(100),
LastName VARCHAR(100),
Department VARCHAR(100),
HireDate DATE,
Salary DECIMAL(10,2)
);

INSERT INTO Employees_Table (EmployeeID, FirstName, LastName, Department, HireDate, Salary) VALUES
(1, 'James', 'Anderson', 'Sales', '2020-01-15', 58000.00),
(2, 'Emily', 'Johnson', 'Marketing', '2021-03-22', 62000.00),
(3, 'Michael', 'Williams', 'IT', '2019-07-10', 78000.00),
(4, 'Olivia', 'Brown', 'Human Resources', '2022-02-18', 65000.00),
(5, 'William', 'Jones', 'Finance', '2018-11-05', 82000.00),
(6, 'Sophia', 'Miller', 'Sales', '2023-01-09', 54000.00),
(7, 'Benjamin', 'Davis', 'IT', '2020-06-14', 75000.00),
(8, 'Ava', 'Garcia', 'Marketing', '2021-09-27', 61000.00),
(9, 'Daniel', 'Rodriguez', 'Finance', '2019-04-12', 85000.00),
(10, 'Isabella', 'Martinez', 'Sales', '2022-08-01', 57000.00),
(11, 'Matthew', 'Hernandez', 'IT', '2018-05-21', 91000.00),
(12, 'Mia', 'Lopez', 'Human Resources', '2023-04-17', 59000.00),
(13, 'Joseph', 'Gonzalez', 'Finance', '2020-10-30', 79000.00),
(14, 'Charlotte', 'Wilson', 'Marketing', '2019-12-02', 68000.00),
(15, 'David', 'Anderson', 'Sales', '2021-06-19', 63000.00),
(16, 'Amelia', 'Thomas', 'IT', '2022-03-11', 72000.00),
(17, 'Christopher', 'Taylor', 'Finance', '2017-09-25', 95000.00),
(18, 'Harper', 'Moore', 'Human Resources', '2020-08-07', 67000.00),
(19, 'Andrew', 'Jackson', 'Sales', '2019-02-14', 60000.00),
(20, 'Evelyn', 'Martin', 'Marketing', '2023-05-08', 56000.00),
(21, 'Joshua', 'Lee', 'IT', '2018-12-17', 88000.00),
(22, 'Abigail', 'Perez', 'Finance', '2021-01-25', 76000.00),
(23, 'Ryan', 'Thompson', 'Sales', '2020-04-06', 59000.00),
(24, 'Elizabeth', 'White', 'Marketing', '2019-06-28', 70000.00),
(25, 'John', 'Harris', 'IT', '2017-03-13', 97000.00),
(26, 'Sofia', 'Sanchez', 'Human Resources', '2022-11-21', 64000.00),
(27, 'Nicholas', 'Clark', 'Finance', '2020-09-16', 83000.00),
(28, 'Ella', 'Ramirez', 'Sales', '2021-07-05', 55000.00),
(29, 'Anthony', 'Lewis', 'IT', '2019-10-23', 81000.00),
(30, 'Grace', 'Robinson', 'Marketing', '2022-01-12', 60000.00),
(31, 'Alexander', 'Walker', 'Finance', '2018-08-20', 89000.00),
(32, 'Chloe', 'Young', 'Human Resources', '2023-02-06', 58000.00),
(33, 'Jonathan', 'Allen', 'Sales', '2020-05-18', 62000.00),
(34, 'Lily', 'King', 'IT', '2021-11-09', 74000.00),
(35, 'Samuel', 'Wright', 'Finance', '2019-01-29', 86000.00),
(36, 'Hannah', 'Scott', 'Marketing', '2020-07-13', 66000.00),
(37, 'Nathan', 'Green', 'Sales', '2022-06-24', 57000.00),
(38, 'Lillian', 'Baker', 'Human Resources', '2021-04-15', 63000.00),
(39, 'Jacob', 'Adams', 'IT', '2018-10-08', 92000.00),
(40, 'Natalie', 'Nelson', 'Finance', '2023-03-20', 71000.00),
(41, 'Lucas', 'Hill', 'Sales', '2019-08-26', 61000.00),
(42, 'Victoria', 'Campbell', 'Marketing', '2020-12-14', 69000.00),
(43, 'Ethan', 'Mitchell', 'IT', '2022-09-19', 76000.00),
(44, 'Zoe', 'Roberts', 'Human Resources', '2018-06-11', 72000.00),
(45, 'Henry', 'Carter', 'Finance', '2021-10-04', 84000.00),
(46, 'Madison', 'Phillips', 'Sales', '2023-06-12', 53000.00),
(47, 'Jackson', 'Evans', 'IT', '2020-02-24', 80000.00),
(48, 'Scarlett', 'Turner', 'Marketing', '2019-11-18', 73000.00),
(49, 'Henry', 'Torres', 'Finance', '2022-05-30', 77000.00),
(50, 'Layla', 'Parker', 'Sales', '2021-08-16', 60000.00); 

SELECT * FROM Employees_Table;

-- 6. subquery to find employees salaries above the average salary 

SELECT 
  EmployeeID,
  FirstName,
  LastName,
  Department,
  Salary
FROM Employees_Table
WHERE EmployeeID IN (
    SELECT EmployeeID 
    FROM Employees_Table
    WHERE Salary > (
        SELECT AVG(Salary)
        FROM Employees_Table
     )
);


-- 10. concatenate firstname and lastname  to form a fullname 

SELECT 
	EmployeeID,
    CONCAT(FirstName, ' ', LastName) AS FullName 
FROM Employees_Table;

-- 11. Replace part of string (e.g replace john with 'jonathan')

SELECT 
    FirstName,
    REPLACE(FirstName, 'James', 'Jonathan') AS UpdatedName
FROM Employees_Table;

-- 12. convert firstname to uppercase and lastname to lowercase

SELECT 
    EmployeeID,
    UPPER(FirstName) AS FirstName,
    LOWER(LastName) AS LastName
FROM Employees_Table;

-- 17. categorize employees salaries as high, mediuum, low.

SELECT 
    EmployeeID,
    FirstName,
    LastName,
    Salary,
    CASE
        WHEN Salary > 80000 THEN 'High'
        WHEN Salary >= 60000 THEN 'Medium'
        ELSE 'Low'
    END AS SalaryCategory
FROM Employees_Table;














