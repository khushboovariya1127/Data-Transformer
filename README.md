# SQL Customer, Orders & Employee Management

## SQL Queries Solved

### 1. INNER JOIN

Retrieve all orders and customer details where a matching customer exists.

```sql
SELECT *
FROM Orders_Table
INNER JOIN Customer_Information_Management
ON Orders_Table.CustomerID = Customer_Information_Management.CustomerID;
```
-<img width="1012" height="636" alt="{9033A0A4-F036-4AC7-B0E5-2F62E2B0B360}" src="https://github.com/user-attachments/assets/0b3e677d-719f-45fb-ac64-1771ba107136" />


### 2. LEFT JOIN

Retrieve all customers and their corresponding orders, if any.

```sql
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
```
-<img width="834" height="650" alt="{610C3B36-E5D7-4D6D-A26E-9FE48B8FF3F2}" src="https://github.com/user-attachments/assets/6d650f15-e47e-487e-884c-1941aca7104b" />

### 3. RIGHT JOIN

Retrieve all orders and their corresponding customers, if any.

```sql
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
```
-<img width="862" height="633" alt="{874EF832-DE84-44DC-BE42-41D7369293CD}" src="https://github.com/user-attachments/assets/1c24b0f5-916b-4ded-adb3-cc3878d50086" />

### 4. FULL OUTER JOIN

Retrieve all customers and all orders regardless of matching.

```sql
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
```
-<img width="932" height="631" alt="{F2C2B492-22E8-4274-8501-D91F8A434B84}" src="https://github.com/user-attachments/assets/f047e576-1609-415c-846e-a5816c572228" />

### 5. Subquery – Orders Above Average

Find customers who have placed orders worth more than the average order amount.

```sql
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
```
-<img width="618" height="512" alt="{44F7BC57-E585-481F-A56F-43404C44EB2B}" src="https://github.com/user-attachments/assets/2b55a730-4a82-48d4-b44e-3e1f6282ebf8" />

### 6. Subquery – Employees Above Average Salary

Find employees whose salary is above the average salary.

```sql
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
```
-<img width="595" height="590" alt="{3F3575B5-F02F-4387-833B-C449D6D0D122}" src="https://github.com/user-attachments/assets/d425bca7-0b28-4a1e-823a-5e7b063019dd" />

### 7. Extract Year and Month

Extract the year and month from the order date.

```sql
SELECT 
    OrderID,
    OrderDate,
    YEAR(OrderDate) AS OrderYear,
    MONTH(OrderDate) AS OrderMonth
FROM Orders_Table;
```
-<img width="500" height="642" alt="{73C42839-78FF-4FA3-9B02-F72C94E8E3CF}" src="https://github.com/user-attachments/assets/8c2804f1-ab5d-4039-a7bd-892a433d9990" />

### 8. Calculate Difference Between Dates

Calculate the difference in days between the order date and the current date.

```sql
SELECT
    OrderID,
    OrderDate,
    CURRENT_DATE() AS CurrentDate,
    DATEDIFF(CURRENT_DATE(), OrderDate) AS DaysDifference
FROM Orders_Table;
```
-<img width="460" height="638" alt="{76D60EFC-538F-4F73-888D-58D2F52E91D7}" src="https://github.com/user-attachments/assets/be568185-6daf-4c6f-9c24-ea79e4d8c36d" />

### 9. Format Order Date

Format the order date into `DD-MMM-YYYY`.

```sql
SELECT 
    OrderID,
    OrderDate,
    DATE_FORMAT(OrderDate, '%d-%b-%Y') AS FormattedOrderDate
FROM Orders_Table;
```
-<img width="413" height="647" alt="{95B7072C-DD58-4DCF-B176-069D63221A68}" src="https://github.com/user-attachments/assets/567aed29-53d5-4204-b7b9-1b35d596845d" />

### 10. Concatenate First Name and Last Name

Combine first name and last name to create a full name.

```sql
SELECT 
    EmployeeID,
    CONCAT(FirstName, ' ', LastName) AS FullName
FROM Employees_Table;
```
-<img width="319" height="647" alt="{76C4709A-0E15-47D5-89C1-55A9ADBF332A}" src="https://github.com/user-attachments/assets/42f4ad79-aeb2-49e1-bf74-179e156a8df8" />

### 11. Replace Part of a String

Replace a first name with another name.

```sql
SELECT 
    FirstName,
    REPLACE(FirstName, 'James', 'Jonathan') AS UpdatedName
FROM Employees_Table;
```
-<img width="287" height="106" alt="{5B0EC500-8A05-4878-904B-0441D908CF52}" src="https://github.com/user-attachments/assets/ab1c99d1-0d01-424f-a79b-a08f7984bb5a" />

### 12. Convert Names to Uppercase and Lowercase

Convert first names to uppercase and last names to lowercase.

```sql
SELECT 
    EmployeeID,
    UPPER(FirstName) AS FirstName,
    LOWER(LastName) AS LastName
FROM Employees_Table;
```
-<img width="410" height="650" alt="{A520BC44-6306-487F-A8AC-C76A8FB811D7}" src="https://github.com/user-attachments/assets/72cb3ae4-be5f-426c-aa43-9e2da2f2de6b" />

### 13. Trim Extra Spaces

Remove extra spaces from the email field.

```sql
SELECT 
    CustomerID,
    TRIM(Email) AS CleanEmail
FROM Customer_Information_Management;
```
-<img width="442" height="627" alt="{8921AE14-B7B7-4F7D-ABD4-5D1FFA273170}" src="https://github.com/user-attachments/assets/3adc2a46-4d1e-4ae9-a0bf-53285163c096" />

### 14. Running Total

Calculate the running total of `TotalAmount` for each order.

```sql
SELECT 
    OrderID,
    OrderDate,
    TotalAmount,
    SUM(TotalAmount) OVER (
        ORDER BY OrderDate, OrderID
    ) AS RunningTotal
FROM Orders_Table;
```
-<img width="584" height="636" alt="{595AEB18-DDB6-402C-B9AB-5754E43B8549}" src="https://github.com/user-attachments/assets/d6c4f2ad-eea8-42f4-a075-d3a850752c14" />

### 15. Rank Orders

Rank orders based on `TotalAmount` using the `RANK()` function.

```sql
SELECT 
    OrderID,
    CustomerID,
    OrderDate,
    TotalAmount,
    RANK() OVER (
        ORDER BY TotalAmount DESC
    ) AS OrderRank
FROM Orders_Table;
```
-<img width="527" height="639" alt="{8D8E7CFD-3D07-44BA-AC05-F572D59D14A0}" src="https://github.com/user-attachments/assets/a6fad6d2-58e1-48c1-8f9b-bcfbc779872d" />

### 16. Assign Discounts

Assign discounts based on the order's total amount.

```sql
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
```
-<img width="500" height="628" alt="{C19F6CA8-CECD-44A3-B53B-EF01CEF01513}" src="https://github.com/user-attachments/assets/1e2c8086-0b0c-4196-98f6-20feb300f7c4" />

### 17. Categorize Employee Salaries

Categorize employee salaries as High, Medium, or Low.

```sql
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
```
-<img width="566" height="645" alt="{C0651143-600D-44A7-A691-684F90C1710B}" src="https://github.com/user-attachments/assets/98dca91e-ace6-465f-b703-e6f73ee03328" />


## Topics Covered

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* FULL OUTER JOIN using `UNION`
* Subqueries
* Aggregate functions
* `AVG()`
* `YEAR()`
* `MONTH()`
* `DATEDIFF()`
* `DATE_FORMAT()`
* `CONCAT()`
* `REPLACE()`
* `UPPER()`
* `LOWER()`
* `TRIM()`
* Window functions
* `SUM() OVER()`
* `RANK()`
* `CASE`
* Conditional discount calculation
* Salary categorization
