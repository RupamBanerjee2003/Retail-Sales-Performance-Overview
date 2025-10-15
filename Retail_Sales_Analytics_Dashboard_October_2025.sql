Question - 1
a) Total Revenue by Region
============================
SELECT r.RegionName, SUM(s.TotalAmount) AS TotalRevenue
FROM Sales s
JOIN Regions r ON s.RegionID = r.RegionID
GROUP BY r.RegionName;
============================
Question - 2
b) Top 5 Selling Products
============================
SELECT p.ProductName, SUM(s.Quantity) AS TotalUnits
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalUnits DESC
LIMIT 5;
=============================
Question - 3
Profit by Category
=============================
SELECT p.Category,
       SUM((p.UnitPrice - p.CostPrice) * s.Quantity) AS TotalProfit
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.Category;
=============================
Question - 4
Monthly Sales Trend
=============================
SELECT FORMAT(SaleDate, 'yyyy-MM') AS Month, SUM(TotalAmount) AS MonthlySales
FROM Sales
GROUP BY FORMAT(SaleDate, 'yyyy-MM')
ORDER BY Month;
==============================
Question - 5
Highest Revenue-Generating Products
==============================
SELECT p.ProductName, SUM(s.TotalAmount) AS Total_Revenue
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY Total_Revenue DESC
LIMIT 5;
===============================
Question -6
Product with Highest Profit Margin
================================
SELECT p.ProductName,
       ROUND(((p.UnitPrice - p.CostPrice)/p.CostPrice)*100,2) AS Profit_Margin_Percentage
FROM Products p
ORDER BY Profit_Margin_Percentage DESC
LIMIT 5;
=================================
Question - 7
Number of Customers per Region
=================================
SELECT r.RegionName, COUNT(c.CustomerID) AS Total_Customers
FROM Customers c
JOIN Regions r ON c.RegionID = r.RegionID
GROUP BY r.RegionName;
==================================
Question -8 
Customer Gender Distribution
==================================
SELECT Gender, COUNT(*) AS Total_Customers
FROM Customers
GROUP BY Gender;
===================================
Question - 9
Top 10 Customers by Spending
===================================
SELECT c.CustomerName, SUM(s.TotalAmount) AS Total_Spent
FROM Sales s
JOIN Customers c ON s.CustomerID = c.CustomerID
GROUP BY c.CustomerName
ORDER BY Total_Spent DESC
LIMIT 10;
====================================
Question - 10
Average Customer Age by Region
====================================
SELECT r.RegionName, ROUND(AVG(c.Age), 2) AS Avg_Age
FROM Customers c
JOIN Regions r ON c.RegionID = r.RegionID
GROUP BY r.RegionName;



