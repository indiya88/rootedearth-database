USE RootedEarthDB;

-- =========================================
-- INDEXES FOR FASTER JOINS AND SEARCHES
-- =========================================

-- Employees
CREATE INDEX idx_employees_locationid
ON Employees(LocationID);

-- Products
CREATE INDEX idx_products_categoryid
ON Products(CategoryID);

CREATE INDEX idx_products_departmentid
ON Products(DepartmentID);

CREATE INDEX idx_products_supplierid
ON Products(SupplierID);

-- Orders
CREATE INDEX idx_orders_customerid
ON Orders(CustomerID);

CREATE INDEX idx_orders_employeeid
ON Orders(EmployeeID);

CREATE INDEX idx_orders_locationid
ON Orders(LocationID);

CREATE INDEX idx_orders_orderdate
ON Orders(OrderDate);

-- OrderDetails
CREATE INDEX idx_orderdetails_orderid
ON OrderDetails(OrderID);

CREATE INDEX idx_orderdetails_productid
ON OrderDetails(ProductID);

-- Returns
CREATE INDEX idx_returns_orderdetailid
ON Returns(OrderDetailID);

-- Customers
CREATE INDEX idx_customers_city
ON Customers(City);