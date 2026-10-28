USE northwind;

-- 1. Write a query to list the product id, product name, and unit price of every
--    product that Northwind sells.
SELECT ProductID, ProductName, UnitPrice
FROM products;

-- 2. Write a query to identify the products where the unit price is $7.50 or less.
SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE UnitPrice <= 7.50;

-- 3. What are the products that we carry where we have no units on hand, but 1 or
--    more units are on backorder?
SELECT ProductID, ProductName, UnitsInStock, UnitsOnOrder
FROM products
WHERE UnitsInStock = 0 AND UnitsOnOrder > 0;

-- 4. Examine the products table. How does it identify the type (category) of each
--    item sold? Where can you find a list of all categories?
--    products has a CategoryID column that points to the categories table.

SELECT CategoryID, CategoryName FROM categories;

--    Seafood is 8, so this gives all the seafood we carry:
SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE CategoryID = 8;

-- 5. Examine the products table again. How do you know what supplier each product
--    comes from? Where can you find info on suppliers?
--    products has a SupplierID column that points to the suppliers table.

SELECT SupplierID, CompanyName FROM suppliers WHERE CompanyName = 'Tokyo Traders';

--    Tokyo Traders is 4:
SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE SupplierID = 4;

-- 6. How many employees work at northwind?
SELECT * FROM employees;
--    9 rows returned, so 9 employees.

--    What employees have "manager" somewhere in their job title?
SELECT EmployeeID, FirstName, LastName, Title
FROM employees
WHERE Title LIKE '%Manager%';