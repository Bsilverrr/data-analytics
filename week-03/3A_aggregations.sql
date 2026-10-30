USE northwind;
-- 1. Write a query to find the price of the cheapest item that Northwind sells.
SELECT MIN(UnitPrice) AS CheapestPrice
FROM products;
SELECT ProductName, UnitPrice
FROM products
WHERE UnitPrice = 2.50;
-- 2. Write a query to find the average price of all items that Northwind sells.
SELECT AVG(UnitPrice) AS AveragePrice
FROM products;
SELECT ROUND(AVG(UnitPrice), 2) AS AveragePrice
FROM products;
-- 3. Write a query to find the price of the most expensive item that Northwind sells.
SELECT MAX(UnitPrice) AS MostExpensive
FROM products;
SELECT p.ProductName, p.UnitPrice, s.CompanyName
FROM products p
JOIN suppliers s ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice = 263.50;
-- 4. Write a query to find total monthly payroll (the sum of all the employees monthly salaries).
SELECT SUM(Salary) AS TotalMonthlyPayroll
FROM employees;
-- 5. Write a query to identify the highest salary and the lowest salary amounts which any employee makes.
SELECT MAX(Salary) AS HighestSalary, MIN(Salary) AS LowestSalary
FROM employees;
-- 6. Write a query to find the name and supplier ID of each supplier and the number of items they supply.
SELECT s.CompanyName, s.SupplierID, COUNT(p.ProductID) AS ItemsSupplied
FROM suppliers s
JOIN products p ON s.SupplierID = p.SupplierID
GROUP BY s.SupplierID, s.CompanyName;
-- 7. Write a query to find the list of all category names and the average price for items in each category.
SELECT c.CategoryName, ROUND(AVG(p.UnitPrice), 2) AS AveragePrice
FROM categories c
JOIN products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;
-- 8. Write a query to find, for all suppliers that provide at least 5 items to Northwind, what is the name of each supplier and the number of items they supply.
SELECT s.CompanyName, COUNT(p.ProductID) AS ItemsSupplied
FROM suppliers s
JOIN products p ON s.SupplierID = p.SupplierID
GROUP BY s.CompanyName
HAVING ItemsSupplied >= 5;
-- 9. Write a query to list products currently in inventory by the product id,
--    product name, and inventory value (calculated by multiplying unit price by
--    the number of units on hand). Sort the results in descending order by value.
--    If two or more have the same value, order by product name. If a product is
--    not in stock, leave it off the list.
SELECT ProductID, ProductName, UnitPrice * UnitsInStock AS InventoryValue
FROM products
WHERE UnitsInStock > 0
ORDER BY InventoryValue DESC, ProductName;