USE RootedEarthDB;

-- =========================================
-- NOTE:
-- This project required five sample queries BUT
-- I added additional queries to explore deeper business insights beyond the required scope.
-- These queries were designed from my own perspective as a business owner/CEO to better understand revenue, product performance, customer trends, returns, and location performance.
-- =========================================

-- =========================================
-- 1. BASIC SELECT
-- Show all products with price and stock
-- Business Value: Provides a quick overview of inventory and pricing for decision-making
-- =========================================
SELECT 
    ProductID,
    ProductName,
    UnitPrice,
    StockQuantity
FROM Products;

-- =========================================
-- 2. JOIN QUERY
-- Show each order with customer, employee, location, and total
-- Business Value: Gives a complete view of each transaction, including who purchased, who handled it, and where it occurred
-- =========================================
SELECT 
    O.OrderID,
    CONCAT(C.FirstName, ' ', C.LastName) AS CustomerName,
    CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
    L.LocationName,
    O.OrderDate,
    O.TotalAmount
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
JOIN Employees E ON O.EmployeeID = E.EmployeeID
JOIN Locations L ON O.LocationID = L.LocationID;

-- =========================================
-- 3. AGGREGATE FUNCTION
-- Count how many products are in each category
-- Business Value: Helps understand product distribution and category depth
-- =========================================
SELECT 
    C.CategoryName,
    COUNT(P.ProductID) AS NumberOfProducts
FROM Categories C
JOIN Products P ON C.CategoryID = P.CategoryID
GROUP BY C.CategoryName;

-- =========================================
-- 4. WHERE CLAUSE
-- Show products priced above $20
-- Business Value: Identifies higher-priced products for premium pricing analysis
-- =========================================
SELECT 
    ProductName,
    UnitPrice
FROM Products
WHERE UnitPrice > 20.00;

-- =========================================
-- 5. HAVING CLAUSE
-- Show departments with more than 10 products
-- Business Value: Identifies departments with large product offerings for inventory and focus analysis
-- =========================================
SELECT 
    D.DepartmentName,
    COUNT(P.ProductID) AS ProductCount
FROM Departments D
JOIN Products P ON D.DepartmentID = P.DepartmentID
GROUP BY D.DepartmentName
HAVING COUNT(P.ProductID) > 10;

-- =========================================
-- 6. NESTED SUBQUERY
-- Find the most expensive product(s)
-- Business Value: Identifies premium products for pricing strategy and positioning
-- =========================================
SELECT 
    ProductName,
    UnitPrice
FROM Products
WHERE UnitPrice = (
    SELECT MAX(UnitPrice)
    FROM Products
);

-- =========================================
-- 7. TOTAL REVENUE
-- Calculate total revenue from all sales
-- Business Value: Shows overall financial performance of the business
-- =========================================
SELECT 
    ROUND(SUM(Quantity * SalePrice), 2) AS TotalRevenue
FROM OrderDetails;

-- =========================================
-- 8. MONTHLY REVENUE
-- Show revenue by month
-- Business Value: Tracks monthly performance and identifies trends over time
-- =========================================
SELECT 
    DATE_FORMAT(O.OrderDate, '%Y-%m') AS RevenueMonth,
    ROUND(SUM(OD.Quantity * OD.SalePrice), 2) AS MonthlyRevenue
FROM Orders O
JOIN OrderDetails OD ON O.OrderID = OD.OrderID
GROUP BY DATE_FORMAT(O.OrderDate, '%Y-%m')
ORDER BY RevenueMonth;

-- =========================================
-- 9. WEEKLY REVENUE
-- Show revenue by year and week
-- Business Value: Helps monitor short-term performance and weekly trends
-- =========================================
SELECT 
    YEAR(O.OrderDate) AS RevenueYear,
    WEEK(O.OrderDate) AS RevenueWeek,
    ROUND(SUM(OD.Quantity * OD.SalePrice), 2) AS WeeklyRevenue
FROM Orders O
JOIN OrderDetails OD ON O.OrderID = OD.OrderID
GROUP BY YEAR(O.OrderDate), WEEK(O.OrderDate)
ORDER BY RevenueYear, RevenueWeek;

-- =========================================
-- 10. YEARLY REVENUE
-- Show revenue by year
-- Business Value: Provides long-term financial insights and overall business growth
-- =========================================
SELECT 
    YEAR(O.OrderDate) AS RevenueYear,
    ROUND(SUM(OD.Quantity * OD.SalePrice), 2) AS YearlyRevenue
FROM Orders O
JOIN OrderDetails OD ON O.OrderID = OD.OrderID
GROUP BY YEAR(O.OrderDate)
ORDER BY RevenueYear;

-- =========================================
-- 11. BEST-SELLING PRODUCTS
-- Show products with the highest quantity sold
-- Business Value: Identifies top-performing products for restocking and marketing focus
-- =========================================
SELECT 
    P.ProductName,
    SUM(OD.Quantity) AS TotalUnitsSold
FROM Products P
JOIN OrderDetails OD ON P.ProductID = OD.ProductID
GROUP BY P.ProductName
ORDER BY TotalUnitsSold DESC;

-- =========================================
-- 12. LEAST-SELLING PRODUCTS
-- Show products with the lowest quantity sold
-- Business Value: Helps identify underperforming products for potential removal or promotion
-- =========================================
SELECT 
    P.ProductName,
    SUM(OD.Quantity) AS TotalUnitsSold
FROM Products P
JOIN OrderDetails OD ON P.ProductID = OD.ProductID
GROUP BY P.ProductName
ORDER BY TotalUnitsSold ASC;

-- =========================================
-- 13. REVENUE BY PRODUCT
-- Show how much revenue each product generated
-- Business Value: Highlights which products generate the most income
-- =========================================
SELECT 
    P.ProductName,
    ROUND(SUM(OD.Quantity * OD.SalePrice), 2) AS ProductRevenue
FROM Products P
JOIN OrderDetails OD ON P.ProductID = OD.ProductID
GROUP BY P.ProductName
ORDER BY ProductRevenue DESC;

-- =========================================
-- 14. TOTAL LOSSES FROM RETURNS
-- Calculate total refund amount from returns
-- Business Value: Shows financial losses due to returns
-- =========================================
SELECT 
    ROUND(SUM(RefundAmount), 2) AS TotalReturnLosses
FROM Returns;

-- =========================================
-- 15. MOST RETURNED PRODUCTS
-- Show which products were returned the most
-- Business Value: Identifies problematic products or quality issues
-- =========================================
SELECT 
    P.ProductName,
    SUM(R.ReturnQuantity) AS TotalReturned
FROM Returns R
JOIN OrderDetails OD ON R.OrderDetailID = OD.OrderDetailID
JOIN Products P ON OD.ProductID = P.ProductID
GROUP BY P.ProductName
ORDER BY TotalReturned DESC;

-- =========================================
-- 16. CUSTOMER LOCATION ANALYSIS
-- Count how many customers come from each city
-- Business Value: Helps understand customer distribution for marketing and expansion
-- =========================================
SELECT 
    City,
    COUNT(CustomerID) AS NumberOfCustomers
FROM Customers
GROUP BY City
ORDER BY NumberOfCustomers DESC;

-- =========================================
-- 17. LOCATION REVENUE
-- Show revenue generated by each store location
-- Business Value: Compares performance across different store locations
-- =========================================
SELECT 
    L.LocationName,
    ROUND(SUM(O.TotalAmount), 2) AS LocationRevenue
FROM Orders O
JOIN Locations L ON O.LocationID = L.LocationID
GROUP BY L.LocationName
ORDER BY LocationRevenue DESC;
