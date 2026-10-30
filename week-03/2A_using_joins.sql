USE northwind;
-- 1. Write a query to list the product id, product name, unit price and category name of every product that Northwind sells.
SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName
FROM products p
JOIN Categories c ON p.CategoryID = c.CategoryID
ORDER BY c.CategoryName, p.ProductName;
-- Write a query to list the product id, product name, unit price and supplier name of all products that cost more than $75. Order by product name.
SELECT p.ProductID, p.ProductName, p.UnitPrice, s.CompanyName
FROM products p
JOIN SUPPLIERS s ON p.supplierID = s.SupplierID
WHERE p.UnitPrice> 75
Order By p.ProductName;
-- Write a query to list the product id, product name, unit price, category name, and supplier name of every product. Order by product name.
SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName,s.CompanyName
FROM products p 
JOIN categories c ON p.CategoryID = c.CategoryID
JOIN suppliers s ON p.SupplierID = s.SupplierID
Order By p.ProductName;
-- Write a query to list the order id, ship name, ship address, and shipping company name of every order that shipped to Germany. Alias the shipping company name as ‘Shipper’. Order by shipper name, then who it shipped to.
SELECT o.OrderID, o.ShipName, o.ShipAddress,s.Companyname AS 'Shipper'
FROM orders o 
JOIN Shippers s ON s.ShipperID = o.ShipVia
WHERE o.ShipCountry = 'Germany'
Order By Shipper, o.ShipName;
-- 5. Start from the same query as above (#4), but omit OrderID and add logic to group by ship name, with a count of how many orders were shipped for that    ship name.
SELECT o.ShipName, o.ShipAddress, s.CompanyName AS 'Shipper', COUNT(*) AS OrderCount
FROM orders o
JOIN shippers s ON s.ShipperID = o.ShipVia
WHERE o.ShipCountry = 'Germany'
GROUP BY o.ShipName, o.ShipAddress, s.CompanyName
ORDER BY Shipper, o.ShipName;
-- Create a single query to list the order id, order date, ship name, ship address of all orders that included Sasquatch Ale.
SELECT o.OrderID, o.OrderDate, o.ShipName, o.ShipAddress
FROM orders o
JOIN orderdetails od ON o.OrderID = od.OrderID
JOIN products p ON od.ProductID = p.ProductID
WHERE p.ProductName = 'Sasquatch Ale';