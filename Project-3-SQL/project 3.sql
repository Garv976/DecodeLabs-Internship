CREATE DATABASE IF NOT EXISTS DataAnalytics;
USE DataAnalytics;
SHOW TABLES;
select * from orders;
-- Display selected columns
SELECT OrderID, Product, Quantity, TotalPrice
FROM orders;
-- orders with total price greater than 100
SELECT *
FROM orders
WHERE TotalPrice > 1000;
-- delivered orders
SELECT *
FROM orders
WHERE OrderStatus = 'Delivered';
-- orders paid using credit card
SELECT *
FROM orders
WHERE PaymentMethod = 'Credit Card';
-- highest value orders
SELECT *
FROM orders
ORDER BY TotalPrice DESC;
-- lowest value orders
SELECT *
FROM orders
ORDER BY TotalPrice ASC;
--  number of orders by product
SELECT Product,
COUNT(*) AS TotalOrders
FROM orders
GROUP BY Product;

-- total sales by product
SELECT Product,
SUM(TotalPrice) AS TotalSales
FROM orders
GROUP BY Product;
-- orders by payment metod
SELECT PaymentMethod,
COUNT(*) AS TotalOrders
FROM orders
GROUP BY PaymentMethod;

-- total orders using count function
SELECT COUNT(*) AS TotalOrders
FROM orders;

-- total revenue
SELECT SUM(TotalPrice) AS TotalRevenue
FROM orders;

-- average order value
SELECT AVG(TotalPrice) AS AverageOrderValue
FROM orders;

-- top 5 highest value orders
SELECT *
FROM orders
ORDER BY TotalPrice DESC
LIMIT 5;


-- The SQL queries successfully extracted meaningful insights from the dataset. Data was filtered, sorted, grouped, and analyzed 






