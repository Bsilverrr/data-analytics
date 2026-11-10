USE northwind;

-- 4a) The table that holds the items Northwind sells is called products.
-- 4b) The table that holds the types/categories of those items is called categories.

-- 5) Retrieve all columns from the employees table
SELECT * FROM employees;
-- 5a) The employee whose name makes it look like she's a bird is Margaret Peacock.

-- 6) Retrieve all columns from the products table
SELECT * FROM products;
-- 6a) This query returns 77 records. To retrieve only 10, change the
--     "Limit to 1000 rows" dropdown in the query pane toolbar to "Limit to 10 rows".
-- 6b) BONUS: you can also limit rows inside the query itself with the LIMIT clause,
--     for example SELECT * FROM products LIMIT 10; which returns only the first 10 rows.
--     Source: MySQL 8.0 Reference Manual, SELECT statement
--     (https://dev.mysql.com/doc/refman/8.0/en/select.html)

-- 7) Retrieve all columns from the categories table
SELECT * FROM categories;
-- 7c) The category id of Seafood is 8.

-- 8) Top 50 records from orders
SELECT OrderID, OrderDate, ShipName, ShipCountry
FROM orders
LIMIT 50;