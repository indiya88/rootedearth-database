use rootedearthdb;

-- =========================================
-- LOCATIONS
-- =========================================
INSERT INTO Locations (LocationName, Address, City, Phone) VALUES
('Rooted Earth Downtown','101 Queen St W','Toronto','416-745-4545'),
('Rooted Earth Lakeside','55 Lakeshore Rd','Mississauga','905-277-7777'),
('Rooted Earth West End','88 Main St','Brampton','905-455-5555'),
('Rooted Earth Midtown','210 Eglinton Ave','Toronto','416-555-1004'),
('Rooted Earth Northside','14 Finch Ave','Vaughan','905-555-1005'),
('Rooted Earth East Market','77 King St E','Ajax','905-555-1006'),
('Rooted Earth Garden Square','33 Maple Ave','Oakville','905-555-1007'),
('Rooted Earth Meadowview','92 Dundas St','Burlington','905-555-1008'),
('Rooted Earth Riverside','18 River Rd','Hamilton','905-555-1009'),
('Rooted Earth Wellness Hub','250 Centre St','Markham','905-555-1010');

-- =========================================
-- SUPPLIERS
-- =========================================
INSERT INTO Suppliers (SupplierName, ContactName, Phone, Country) VALUES
('Evergreen Botanicals','Lena Morris','4165552001','Canada'),
('Sacred Roots Supply','David Chen','4165552002','Canada'),
('Pure Leaf Naturals','Jasmine Patel','4165552003','USA'),
('Northern Herb Co.','Ethan Roy','4165552004','Canada'),
('Sunrise Plant Remedies','Ava Green','4165552005','USA'),
('Wild Forest Herbs','Maya Singh','4165552006','Jamaica'),
('Healing Earth Imports','Noah Clarke','4165552007','UK'),
('Botanical Pathways','Olivia Reed','4165552008','Germany'),
('Cedar Wellness Goods','Lucas White','4165552009','Canada'),
('Golden Root Traders','Sophia Adams','4165552010','Australia');

-- =========================================
-- CATEGORIES
-- =========================================
INSERT INTO Categories (CategoryName) VALUES
('Herbal Tea'),
('Capsules'),
('Tinctures'),
('Essential Oils'),
('Dried Herbs'),
('Powders'),
('Syrups'),
('Balms'),
('Supplements'),
('Tonics');

-- =========================================
-- DEPARTMENTS
-- =========================================
INSERT INTO Departments (DepartmentName) VALUES
('Women Health'),
('Men Health'),
('Children Health'),
('Animal Health'),
('Immune Support'),
('Digestive Health'),
('Stress & Sleep'),
('Skin Care'),
('Energy & Vitality'),
('General Wellness');

-- =========================================
-- CUSTOMERS
-- =========================================
INSERT INTO Customers (FirstName, LastName, Email, Phone, City, PostalCode, LoyaltyMember, PointsBalance)
WITH RECURSIVE seq AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1
    FROM seq
    WHERE n < 420
)
SELECT
    ELT(1 + ((n - 1) % 30),
        'Alicia','Brandon','Cynthia','Elena','Farah','Grace','Hector','Isabella','Pablo','Tina',
        'Liam','Nina','Sam','Olga','Jake','Marcia','Dwayne','Vanessa','Jordan','Keisha',
        'Andre','Sabrina','Trevor','Nadia','Maya','Jermaine','Alisha','Monique','Carmen','Ryan'
    ) AS FirstName,

    ELT(1 + (FLOOR((n - 1) / 30) % 30),
        'Brown','Lee','Morgan','Price','Ali','Wilson','Ramirez','King','Green','Stone',
        'Lopez','Khan','Petrov','Miles','Taylor','Clarke','Mills','Parker','Grant','Lewis',
        'Cole','Reid','James','Davis','Campbell','Bailey','Mitchell','Powell','Russell','Hall'
    ) AS LastName,

    LOWER(CONCAT(
        REPLACE(ELT(1 + ((n - 1) % 30),
            'Alicia','Brandon','Cynthia','Elena','Farah','Grace','Hector','Isabella','Pablo','Tina',
            'Liam','Nina','Sam','Olga','Jake','Marcia','Dwayne','Vanessa','Jordan','Keisha',
            'Andre','Sabrina','Trevor','Nadia','Maya','Jermaine','Alisha','Monique','Carmen','Ryan'
        ), ' ', ''),
        '.',
        REPLACE(ELT(1 + (FLOOR((n - 1) / 30) % 30),
            'Brown','Lee','Morgan','Price','Ali','Wilson','Ramirez','King','Green','Stone',
            'Lopez','Khan','Petrov','Miles','Taylor','Clarke','Mills','Parker','Grant','Lewis',
            'Cole','Reid','James','Davis','Campbell','Bailey','Mitchell','Powell','Russell','Hall'
        ), ' ', ''),
        n,
        '@email.com'
    )) AS Email,

    CONCAT('647555', LPAD(n, 4, '0')) AS Phone,

    CASE
        WHEN n <= 95 THEN 'Toronto'
        WHEN n <= 155 THEN 'Mississauga'
        WHEN n <= 205 THEN 'Brampton'
        WHEN n <= 245 THEN 'Markham'
        WHEN n <= 280 THEN 'Vaughan'
        WHEN n <= 315 THEN 'Hamilton'
        WHEN n <= 345 THEN 'Ajax'
        WHEN n <= 380 THEN 'Oakville'
        ELSE 'Burlington'
    END AS City,

    CASE
        WHEN n <= 95  THEN CONCAT('M', (n % 9) + 1, CHAR(65 + (n % 26)), (n % 10), CHAR(65 + ((n * 3) % 26)), (n * 2) % 10)
        WHEN n <= 155 THEN CONCAT('L', (n % 9) + 1, CHAR(65 + (n % 26)), (n % 10), CHAR(65 + ((n * 3) % 26)), (n * 2) % 10)
        WHEN n <= 205 THEN CONCAT('L', (n % 9) + 1, CHAR(65 + (n % 26)), (n % 10), CHAR(65 + ((n * 3) % 26)), (n * 2) % 10)
        WHEN n <= 245 THEN CONCAT('L', (n % 9) + 1, CHAR(65 + (n % 26)), (n % 10), CHAR(65 + ((n * 3) % 26)), (n * 2) % 10)
        WHEN n <= 280 THEN CONCAT('L', (n % 9) + 1, CHAR(65 + (n % 26)), (n % 10), CHAR(65 + ((n * 3) % 26)), (n * 2) % 10)
        WHEN n <= 315 THEN CONCAT('L', (n % 9) + 1, CHAR(65 + (n % 26)), (n % 10), CHAR(65 + ((n * 3) % 26)), (n * 2) % 10)
        WHEN n <= 345 THEN CONCAT('L', (n % 9) + 1, CHAR(65 + (n % 26)), (n % 10), CHAR(65 + ((n * 3) % 26)), (n * 2) % 10)
        WHEN n <= 380 THEN CONCAT('L', (n % 9) + 1, CHAR(65 + (n % 26)), (n % 10), CHAR(65 + ((n * 3) % 26)), (n * 2) % 10)
        ELSE CONCAT('L', (n % 9) + 1, CHAR(65 + (n % 26)), (n % 10), CHAR(65 + ((n * 3) % 26)), (n * 2) % 10)
    END AS PostalCode,

    CASE
        WHEN n % 4 IN (0,1,2) THEN 'Yes'
        ELSE 'No'
    END AS LoyaltyMember,

    CASE
        WHEN n % 4 IN (0,1,2) THEN ((n * 17) % 201)
        ELSE 0
    END AS PointsBalance
FROM seq;

-- =========================================
-- EMPLOYEES
-- 10 pharmacists, 10 assistants, 4 rotating doctors
-- =========================================
INSERT INTO Employees (FirstName, LastName, Role, LocationID, HireDate, Phone) VALUES
('Maya','Thomas','Herbal Pharmacist',1,'2024-01-15','416-555-4101'),
('Daniel','Brooks','Herbal Pharmacist',2,'2024-01-18','416-555-4102'),
('Olivia','James','Herbal Pharmacist',3,'2024-01-20','416-555-4103'),
('Ethan','Carter','Herbal Pharmacist',4,'2024-01-22','416-555-4104'),
('Sophia','Mitchell','Herbal Pharmacist',5,'2024-01-24','416-555-4105'),
('Lucas','Hall','Herbal Pharmacist',6,'2024-01-26','416-555-4106'),
('Ava','Turner','Herbal Pharmacist',7,'2024-01-28','416-555-4107'),
('Noah','Parker','Herbal Pharmacist',8,'2024-01-30','416-555-4108'),
('Mia','Evans','Herbal Pharmacist',9,'2024-02-01','416-555-4109'),
('Liam','Scott','Herbal Pharmacist',10,'2024-02-03','416-555-4110'),

('Janelle','Ross','Assistant',1,'2024-02-10','416-555-4201'),
('Rohan','Miller','Assistant',2,'2024-02-12','416-555-4202'),
('Amina','Said','Assistant',3,'2024-02-14','416-555-4203'),
('Shanice','Edwards','Assistant',4,'2024-02-16','416-555-4204'),
('Leon','Watson','Assistant',5,'2024-02-18','416-555-4205'),
('Bianca','Evans','Assistant',6,'2024-02-20','416-555-4206'),
('Chantel','Morris','Assistant',7,'2024-02-22','416-555-4207'),
('Wesley','Barnes','Assistant',8,'2024-02-24','416-555-4208'),
('Naomi','Walker','Assistant',9,'2024-02-26','416-555-4209'),
('Damian','Scott','Assistant',10,'2024-02-28','416-555-4210'),

('Drake','Bennett','Herbal Doctor',1,'2024-03-05','416-555-4301'),
('Selena','Morris','Herbal Doctor',3,'2024-03-07','416-555-4302'),
('Tariq','Ahmed','Herbal Doctor',6,'2024-03-09','416-555-4303'),
('Monique','Bailey','Herbal Doctor',9,'2024-03-11','416-555-4304');

-- =========================================
-- PRODUCTS
-- =========================================
INSERT INTO Products (ProductName, CategoryID, DepartmentID, SupplierID, UnitPrice, StockQuantity, CreatedDate) VALUES
('Chamomile Tea',1,7,1,10.99,1600,'2025-01-01'),
('Lemon Balm Tea',1,7,2,11.49,1550,'2025-01-02'),
('Hibiscus Tea',1,10,3,9.99,1700,'2025-01-03'),
('Ginger Tea Blend',1,6,4,12.99,1650,'2025-01-04'),
('Moringa Tea',1,9,5,13.50,1500,'2025-01-05'),
('Soursop Leaf Tea',1,10,6,14.25,1450,'2025-01-06'),
('Women Wellness Tea',1,1,7,15.25,1400,'2025-01-07'),
('Men Vitality Tea',1,2,8,15.75,1400,'2025-01-08'),
('Kids Calm Tea',1,3,9,10.50,1500,'2025-01-09'),
('Cerasee Detox Tea',1,6,6,13.99,1450,'2025-01-10'),
('Guinea Hen Weed Tea',1,5,6,14.99,1350,'2025-01-11'),
('Sleep Ease Tea',1,7,10,12.75,1550,'2025-01-12'),

('Ashwagandha Capsules',2,9,2,18.99,1350,'2025-02-01'),
('Elderberry Capsules',2,5,1,19.99,1350,'2025-02-02'),
('Sea Moss Capsules',2,10,6,21.50,1200,'2025-02-03'),
('Turmeric Capsules',2,6,4,17.99,1350,'2025-02-04'),
('Men Daily Capsules',2,2,8,20.25,1200,'2025-02-05'),
('Women Balance Capsules',2,1,7,21.99,1150,'2025-02-06'),
('Kids Immune Chews',2,3,9,16.50,1400,'2025-02-07'),
('Pet Joint Capsules',2,4,5,22.75,1100,'2025-02-08'),
('Iron Boost Capsules',2,1,3,19.50,1250,'2025-02-09'),
('Magnesium Calm Capsules',2,7,2,18.25,1350,'2025-02-10'),
('Moringa Capsules',2,9,6,17.50,1300,'2025-02-11'),
('Digestive Enzyme Capsules',2,6,10,20.99,1200,'2025-02-12'),

('Valerian Tincture',3,7,1,21.99,1050,'2025-03-01'),
('Milk Thistle Tincture',3,6,2,20.99,1100,'2025-03-02'),
('Ginger Tincture',3,6,3,18.75,1200,'2025-03-03'),
('Nettle Tincture',3,10,4,19.25,1150,'2025-03-04'),
('Dandelion Tincture',3,6,5,18.50,1200,'2025-03-05'),
('Soursop Tincture',3,10,6,23.50,950,'2025-03-06'),
('Cerasee Tincture',3,6,6,22.25,950,'2025-03-07'),
('Pet Calm Drops',3,4,9,19.99,1000,'2025-03-08'),
('Kids Cough Drops',3,3,10,17.75,1100,'2025-03-09'),
('Women Tonic Drops',3,1,7,21.75,950,'2025-03-10'),
('Men Energy Drops',3,2,8,22.50,950,'2025-03-11'),
('Guinea Hen Weed Extract',3,5,6,24.25,900,'2025-03-12'),

('Peppermint Oil',4,7,1,14.99,1300,'2025-04-01'),
('Tea Tree Oil',4,8,2,16.25,1250,'2025-04-02'),
('Eucalyptus Oil',4,5,3,15.80,1300,'2025-04-03'),
('Lavender Oil',4,7,4,15.99,1300,'2025-04-04'),
('Frankincense Oil',4,10,5,24.99,850,'2025-04-05'),
('Lemon Oil',4,10,6,13.75,1300,'2025-04-06'),
('Rosemary Oil',4,9,7,14.50,1250,'2025-04-07'),
('Clove Oil',4,5,8,15.25,1200,'2025-04-08'),
('Oregano Oil',4,5,9,24.99,850,'2025-04-09'),
('Bergamot Oil',4,7,10,18.99,1100,'2025-04-10'),
('Cedarwood Oil',4,7,1,17.40,1150,'2025-04-11'),
('Skin Relief Oil',4,8,2,19.50,1050,'2025-04-12'),

('Soursop Leaves',5,10,6,12.99,1600,'2025-05-01'),
('Cerasee Leaves',5,6,6,11.99,1650,'2025-05-02'),
('Duck Flower',5,6,6,13.99,1450,'2025-05-03'),
('Guinea Hen Weed Leaves',5,5,6,14.99,1400,'2025-05-04'),
('Fever Grass',5,10,6,9.99,1700,'2025-05-05'),
('Moringa Leaves',5,9,6,10.99,1600,'2025-05-06'),
('Nettle Leaf',5,10,3,8.99,1750,'2025-05-07'),
('Valerian Root',5,7,2,12.99,1450,'2025-05-08'),
('Dandelion Root',5,6,4,9.99,1650,'2025-05-09'),
('Burdock Root',5,6,5,10.75,1550,'2025-05-10'),
('Chamomile Flowers',5,7,1,11.25,1550,'2025-05-11'),
('Red Clover',5,1,7,10.20,1550,'2025-05-12'),

('Turmeric Powder',6,6,6,11.25,1550,'2025-06-01'),
('Moringa Powder',6,9,1,13.99,1450,'2025-06-02'),
('Maca Powder',6,9,2,15.50,1350,'2025-06-03'),
('Spirulina Powder',6,9,3,16.75,1300,'2025-06-04'),
('Chlorella Powder',6,10,4,17.25,1250,'2025-06-05'),
('Ashwagandha Powder',6,7,5,14.80,1400,'2025-06-06'),
('Beet Root Powder',6,1,6,12.50,1500,'2025-06-07'),
('Baobab Powder',6,10,7,18.40,1200,'2025-06-08'),
('Amla Powder',6,10,8,13.60,1450,'2025-06-09'),
('Matcha Green Powder',6,9,9,22.50,1000,'2025-06-10'),
('Cerasee Powder Blend',6,6,6,16.20,1300,'2025-06-11'),
('Gut Cleanse Powder',6,6,10,18.99,1150,'2025-06-12'),

('Elderberry Syrup',7,5,1,19.99,1200,'2025-07-01'),
('Kids Herbal Syrup',7,3,2,14.50,1450,'2025-07-02'),
('Mullein Syrup',7,5,3,16.99,1300,'2025-07-03'),
('Cherry Bark Syrup',7,5,4,17.50,1250,'2025-07-04'),
('Ginger Honey Syrup',7,6,5,15.75,1300,'2025-07-05'),
('Thyme Cough Syrup',7,5,6,17.99,1250,'2025-07-06'),
('Lemon Ginger Syrup',7,6,7,16.50,1300,'2025-07-07'),
('Immune Boost Syrup',7,5,8,19.20,1150,'2025-07-08'),
('Women Iron Syrup',7,1,9,18.75,1150,'2025-07-09'),
('Men Vitality Syrup',7,2,10,19.50,1100,'2025-07-10'),
('Pet Wellness Syrup',7,4,5,17.25,1000,'2025-07-11'),
('Soursop Leaf Syrup',7,10,6,18.60,1050,'2025-07-12'),

('Calendula Balm',8,8,8,13.49,1300,'2025-08-01'),
('Arnica Balm',8,8,2,14.25,1250,'2025-08-02'),
('Lavender Balm',8,7,3,11.75,1450,'2025-08-03'),
('Tea Tree Balm',8,8,4,13.50,1300,'2025-08-04'),
('Eucalyptus Chest Balm',8,5,5,15.20,1200,'2025-08-05'),
('Peppermint Muscle Balm',8,9,6,14.60,1250,'2025-08-06'),
('Chamomile Baby Balm',8,3,7,12.40,1400,'2025-08-07'),
('Rosemary Joint Balm',8,2,8,15.80,1150,'2025-08-08'),
('Skin Heal Balm',8,8,9,16.25,1100,'2025-08-09'),
('Cerasee Skin Balm',8,8,6,15.50,1050,'2025-08-10'),
('Men Recovery Balm',8,2,10,16.80,1000,'2025-08-11'),
('Pet Paw Balm',8,4,5,13.95,1000,'2025-08-12'),

('Immune Defense Tablets',9,5,1,24.99,900,'2025-09-01'),
('Probiotic Support',9,6,2,22.50,950,'2025-09-02'),
('Iron Support Complex',9,1,3,20.99,1050,'2025-09-03'),
('Calcium D3 Support',9,10,4,19.75,1150,'2025-09-04'),
('Women Multinutrient',9,1,5,23.50,900,'2025-09-05'),
('Men Multinutrient',9,2,6,23.50,900,'2025-09-06'),
('Kids Vitamin Drops',9,3,7,18.40,1100,'2025-09-07'),
('Sea Moss Gummies',9,10,6,21.25,1000,'2025-09-08'),
('Gut Health Support',9,6,9,24.50,850,'2025-09-09'),
('Parasite Cleanse Kit',9,6,10,27.99,800,'2025-09-10'),
('Pet Daily Support',9,4,5,20.50,900,'2025-09-11'),
('Respiratory Support Blend',9,5,8,21.75,900,'2025-09-12'),

('Ginger Digestive Tonic',10,6,10,16.80,1200,'2025-10-01'),
('Iron Boost Tonic',10,1,3,19.25,1100,'2025-10-02'),
('Liver Cleanse Tonic',10,6,4,18.95,1100,'2025-10-03'),
('Women Balance Tonic',10,1,5,21.50,950,'2025-10-04'),
('Men Power Tonic',10,2,6,22.25,900,'2025-10-05'),
('Kids Wellness Tonic',10,3,7,15.95,1200,'2025-10-06'),
('Pet Herbal Tonic',10,4,5,18.75,1000,'2025-10-07'),
('Cerasee Detox Tonic',10,6,6,20.50,950,'2025-10-08'),
('Duck Flower Cleanse Tonic',10,6,6,21.99,900,'2025-10-09'),
('Soursop Wellness Tonic',10,10,6,22.40,900,'2025-10-10'),
('Sleep Ease Tonic',10,7,2,18.60,1050,'2025-10-11'),
('Energy Restore Tonic',10,9,1,19.99,1000,'2025-10-12');


-- =========================================
-- HELPER TABLES
-- =========================================
DROP TEMPORARY TABLE IF EXISTS Seq200;
CREATE TEMPORARY TABLE Seq200 (n INT PRIMARY KEY);

INSERT INTO Seq200 (n)
SELECT a.n + b.n * 10 + c.n * 100 + 1
FROM
    (SELECT 0 AS n UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
     UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) a
CROSS JOIN
    (SELECT 0 AS n UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
     UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) b
CROSS JOIN
    (SELECT 0 AS n UNION ALL SELECT 1) c
WHERE a.n + b.n * 10 + c.n * 100 + 1 <= 200;

DROP TEMPORARY TABLE IF EXISTS StorePlan;
CREATE TEMPORARY TABLE StorePlan (
    LocationID INT PRIMARY KEY,
    Tier VARCHAR(10),
    BaseOrders DECIMAL(10,2)
);

INSERT INTO StorePlan (LocationID, Tier, BaseOrders) VALUES
(1,'HIGH',96),
(2,'HIGH',100),
(4,'HIGH',94),
(5,'HIGH',98),
(10,'HIGH',102),
(3,'MID',52),
(6,'MID',55),
(7,'MID',50),
(8,'LOW',28),
(9,'LOW',25);

DROP TEMPORARY TABLE IF EXISTS YearPlan;
CREATE TEMPORARY TABLE YearPlan (
    OrderYear INT PRIMARY KEY,
    YearFactor DECIMAL(10,2)
);

INSERT INTO YearPlan (OrderYear, YearFactor) VALUES
(2024,0.95),
(2025,1.00),
(2026,1.08);

DROP TEMPORARY TABLE IF EXISTS MonthPlan;
CREATE TEMPORARY TABLE MonthPlan (
    OrderMonth INT PRIMARY KEY,
    MonthFactor DECIMAL(10,2)
);

INSERT INTO MonthPlan (OrderMonth, MonthFactor) VALUES
(1,0.88),
(2,0.90),
(3,1.00),
(4,1.00),
(5,1.05),
(6,1.08),
(7,1.10),
(8,1.15),
(9,1.00),
(10,1.02),
(11,1.08),
(12,1.18);

DROP TEMPORARY TABLE IF EXISTS MonthlyQuota;
CREATE TEMPORARY TABLE MonthlyQuota AS
SELECT
    Y.OrderYear,
    M.OrderMonth,
    S.LocationID,
    S.Tier,
    ROUND(S.BaseOrders * Y.YearFactor * M.MonthFactor, 0) AS OrdersInMonth
FROM YearPlan Y
CROSS JOIN MonthPlan M
JOIN StorePlan S;

-- =========================================
-- ORDERS
-- Employee assignment logic:
-- 45% pharmacist of that location
-- 35% assistant of that location
-- 20% rotating doctor
-- =========================================
INSERT INTO Orders (CustomerID, EmployeeID, LocationID, OrderDate, TotalAmount)
SELECT
    ((Q.LocationID * 31 + Q.OrderMonth * 17 + Q.OrderYear + S.n * 13) % 420) + 1 AS CustomerID,
    CASE
        WHEN (S.n % 10) < 5 THEN Q.LocationID
        WHEN (S.n % 10) < 8 THEN Q.LocationID + 10
        ELSE 21 + ((Q.LocationID + Q.OrderMonth + S.n) % 4)
    END AS EmployeeID,
    Q.LocationID,
    STR_TO_DATE(
        CONCAT(
            Q.OrderYear, '-',
            LPAD(Q.OrderMonth, 2, '0'), '-',
            LPAD(((S.n * 7 + Q.LocationID * 3) % 28) + 1, 2, '0')
        ),
        '%Y-%m-%d'
    ),
    0.00
FROM MonthlyQuota Q
JOIN Seq200 S
    ON S.n <= Q.OrdersInMonth
ORDER BY Q.OrderYear, Q.OrderMonth, Q.LocationID, S.n;

-- =========================================
-- ORDER LINE PLAN
-- Most orders: 2-4 items
-- Some small baskets, some larger baskets
-- =========================================
DROP TEMPORARY TABLE IF EXISTS OrderLinePlan;
CREATE TEMPORARY TABLE OrderLinePlan AS
SELECT
    O.OrderID,
    O.LocationID,
    CASE
        WHEN O.OrderID % 29 = 0 THEN 6
        WHEN O.OrderID % 11 = 0 THEN 5
        WHEN O.OrderID % 5 = 0 THEN 2
        WHEN O.OrderID % 3 = 0 THEN 3
        ELSE 4
    END AS LineCount
FROM Orders O;

-- =========================================
-- PRODUCT POOLS
-- Elite = biggest sellers
-- High  = strong sellers
-- Mid   = regular sellers
-- Low   = long-tail / niche
-- =========================================
DROP TEMPORARY TABLE IF EXISTS TierElite;
CREATE TEMPORARY TABLE TierElite (
    rn INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT NOT NULL
);

INSERT INTO TierElite (ProductID)
SELECT ProductID
FROM Products
WHERE ProductName IN (
    'Moringa Tea',
    'Sea Moss Capsules',
    'Chlorella Powder'
)
ORDER BY ProductID;

DROP TEMPORARY TABLE IF EXISTS TierHigh;
CREATE TEMPORARY TABLE TierHigh (
    rn INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT NOT NULL
);

INSERT INTO TierHigh (ProductID)
SELECT ProductID
FROM Products
WHERE ProductName IN (
    'Sea Moss Gummies',
    'Moringa Leaves',
    'Soursop Wellness Tonic',
    'Elderberry Syrup',
    'Men Recovery Balm'
)
ORDER BY ProductID;

DROP TEMPORARY TABLE IF EXISTS TierMid;
CREATE TEMPORARY TABLE TierMid (
    rn INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT NOT NULL
);

INSERT INTO TierMid (ProductID)
SELECT ProductID
FROM Products
WHERE ProductName IN (
    'Soursop Leaves',
    'Elderberry Capsules',
    'Moringa Powder',
    'Soursop Leaf Tea',
    'Immune Boost Syrup',
    'Turmeric Powder',
    'Chamomile Tea',
    'Cerasee Detox Tea',
    'Moringa Capsules',
    'Soursop Tincture'
)
ORDER BY ProductID;

DROP TEMPORARY TABLE IF EXISTS TierLow;
CREATE TEMPORARY TABLE TierLow (
    rn INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT NOT NULL
);

INSERT INTO TierLow (ProductID)
SELECT ProductID
FROM Products
WHERE ProductID NOT IN (
    SELECT ProductID FROM TierElite
    UNION
    SELECT ProductID FROM TierHigh
    UNION
    SELECT ProductID FROM TierMid
)
ORDER BY ProductID;

DROP TEMPORARY TABLE IF EXISTS TierCounts;
CREATE TEMPORARY TABLE TierCounts AS
SELECT
    (SELECT COUNT(*) FROM TierElite) AS EliteCount,
    (SELECT COUNT(*) FROM TierHigh)  AS HighCount,
    (SELECT COUNT(*) FROM TierMid)   AS MidCount,
    (SELECT COUNT(*) FROM TierLow)   AS LowCount;

DROP TEMPORARY TABLE IF EXISTS OrderLineSeed;
CREATE TEMPORARY TABLE OrderLineSeed AS
SELECT
    OLP.OrderID,
    OLP.LocationID,
    S.n AS LineNo,
    ((OLP.OrderID * 17) + (OLP.LocationID * 13) + (S.n * 7)) % 100 AS BucketCode,
    ((OLP.OrderID * 5) + (S.n * 11) + OLP.LocationID) AS Seed1,
    ((OLP.OrderID * 7) + (S.n * 13) + OLP.LocationID) AS Seed2,
    ((OLP.OrderID * 11) + (S.n * 17) + OLP.LocationID) AS Seed3,
    ((OLP.OrderID * 13) + (S.n * 19) + OLP.LocationID) AS Seed4
FROM OrderLinePlan OLP
JOIN Seq200 S
  ON S.n <= OLP.LineCount;

-- =========================================
-- ORDER DETAILS
-- =========================================
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, SalePrice)
SELECT
    S.OrderID,
    COALESCE(E.ProductID, H.ProductID, M.ProductID, L.ProductID) AS ProductID,
    CASE
        WHEN (S.OrderID + S.LineNo) % 37 = 0 THEN 7
        WHEN (S.OrderID + S.LineNo) % 19 = 0 THEN 5
        WHEN (S.OrderID + S.LineNo) % 9 = 0 THEN 4
        WHEN (S.OrderID + S.LineNo) % 4 = 0 THEN 3
        WHEN S.LocationID IN (1,2,4,5,10) THEN 2
        ELSE 1
    END AS Quantity,
    P.UnitPrice
FROM OrderLineSeed S
CROSS JOIN TierCounts C
LEFT JOIN TierElite E
    ON S.BucketCode < 30
   AND E.rn = (S.Seed1 % C.EliteCount) + 1
LEFT JOIN TierHigh H
    ON S.BucketCode >= 30 AND S.BucketCode < 52
   AND H.rn = (S.Seed2 % C.HighCount) + 1
LEFT JOIN TierMid M
    ON S.BucketCode >= 52 AND S.BucketCode < 75
   AND M.rn = (S.Seed3 % C.MidCount) + 1
LEFT JOIN TierLow L
    ON S.BucketCode >= 75
   AND L.rn = (S.Seed4 % C.LowCount) + 1
JOIN Products P
    ON P.ProductID = COALESCE(E.ProductID, H.ProductID, M.ProductID, L.ProductID);

-- Remove duplicate product lines inside the same order
-- DELETE OD1
-- FROM OrderDetails OD1
-- JOIN OrderDetails OD2
-- ON OD1.OrderID = OD2.OrderID
-- AND OD1.ProductID = OD2.ProductID
-- AND OD1.OrderDetailID > OD2.OrderDetailID;

-- =========================================
-- RETURNS
-- =========================================
INSERT INTO Returns (OrderDetailID, ReturnDate, ReturnQuantity, ReturnReason, RefundAmount)
SELECT
    OD.OrderDetailID,
    DATE_ADD(O.OrderDate, INTERVAL ((OD.OrderDetailID % 12) + 3) DAY),
    CASE
        WHEN OD.Quantity >= 5 AND OD.OrderDetailID % 4 = 0 THEN 2
        ELSE 1
    END AS ReturnQuantity,
    CASE
        WHEN OD.OrderDetailID % 5 = 0 THEN 'Customer changed mind'
        WHEN OD.OrderDetailID % 5 = 1 THEN 'Did not work'
        WHEN OD.OrderDetailID % 5 = 2 THEN 'Wrong product'
        WHEN OD.OrderDetailID % 5 = 3 THEN 'Damaged item'
        ELSE 'Sensitivity / reaction'
    END AS ReturnReason,
    CASE
        WHEN OD.Quantity >= 5 AND OD.OrderDetailID % 4 = 0 THEN ROUND(OD.SalePrice * 2, 2)
        ELSE OD.SalePrice
    END AS RefundAmount
FROM OrderDetails OD
JOIN Orders O
  ON O.OrderID = OD.OrderID
WHERE OD.OrderDetailID % 43 = 0;

-- =========================================
-- UPDATE ORDER TOTALS
-- =========================================
UPDATE Orders O
JOIN (
    SELECT
        OrderID,
        ROUND(SUM(Quantity * SalePrice), 2) AS NewTotal
    FROM OrderDetails
    GROUP BY OrderID
) X
  ON O.OrderID = X.OrderID
SET O.TotalAmount = X.NewTotal;

-- =========================================
-- STOCK UPDATE: SUBTRACT SOLD
-- =========================================
UPDATE Products P
JOIN (
    SELECT ProductID, SUM(Quantity) AS SoldQty
    FROM OrderDetails
    GROUP BY ProductID
) S
ON P.ProductID = S.ProductID
SET P.StockQuantity = GREATEST(P.StockQuantity - S.SoldQty, 0);

-- =========================================
-- STOCK UPDATE: ADD BACK RETURNS
-- =========================================
UPDATE Products P
JOIN (
    SELECT OD.ProductID, SUM(R.ReturnQuantity) AS ReturnedQty
    FROM Returns R
    JOIN OrderDetails OD
        ON R.OrderDetailID = OD.OrderDetailID
    GROUP BY OD.ProductID
) X
ON P.ProductID = X.ProductID
SET P.StockQuantity = P.StockQuantity + X.ReturnedQty;

-- =========================================
-- VIEWS
-- =========================================
-- SALES SUMMARY (Orders + Customers + Location)

CREATE OR REPLACE VIEW sales_summary_view AS
SELECT 
    O.OrderID,
    O.OrderDate,
    C.FirstName,
    C.LastName,
    L.LocationName,
    O.TotalAmount
FROM Orders O, Customers C, Locations L
WHERE O.CustomerID = C.CustomerID
AND O.LocationID = L.LocationID;

-- =================================================
-- PRODUCT PERFORMANCE (Total units sold per product)
-- =================================================
CREATE OR REPLACE VIEW product_performance_view AS
SELECT 
    P.ProductID,
    P.ProductName,
    SUM(OD.Quantity) AS TotalUnitsSold,
    SUM(OD.Quantity * OD.SalePrice) AS TotalRevenue
FROM Products P, OrderDetails OD
WHERE P.ProductID = OD.ProductID
GROUP BY P.ProductID, P.ProductName;

-- ==============================================
-- MONTHLY REVENUE TREND
-- ==============================================
CREATE OR REPLACE VIEW monthly_revenue_view AS
SELECT 
    YEAR(OrderDate) AS OrderYear,
    MONTH(OrderDate) AS OrderMonth,
    ROUND(SUM(TotalAmount), 2) AS MonthlyRevenue
FROM Orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate);




