USE RootedEarthDB;

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
INSERT INTO Customers (FirstName, LastName, Email, Phone, City, PostalCode, LoyaltyMember, PointsBalance) VALUES
('Alicia','Brown','alicia.brown@email.com','6475553001','Toronto','M5V1A1','Yes',120),
('Brandon','Lee','brandon.lee@email.com','6475553002','Mississauga','L5B2T3','Yes',85),
('Cynthia','Morgan','cynthia.morgan@email.com','6475553003','Brampton','L6T4K5','Yes',60),
('Elena','Price','elena.price@email.com','6475553004','Toronto','M4P2X8','Yes',95),
('Farah','Ali','farah.ali@email.com','6475553005','Vaughan','L4K3C2','Yes',200),
('Grace','Wilson','grace.wilson@email.com','6475553006','Ajax','L1S2H1','Yes',40),
('Hector','Ramirez','hector.ramirez@email.com','6475553007','Oakville','L6H5R3','No',0),
('Isabella','King','isabella.king@email.com','6475553008','Burlington','L7N2B9','No',0),
('Pablo','Ramirez','pablo.ramirez@email.com','6475553009','Hamilton','L8P1A1','No',0),
('Tina','Green','tina.green@email.com','6475553010','Markham','L3R5N3','Yes',50),
('Liam','Stone','liam.stone@email.com','6475553011','Toronto','M6H2Y1','Yes',30),
('Nina','Lopez','nina.lopez@email.com','6475553012','Mississauga','L5N3T2','No',0),
('Sam','Khan','sam.khan@email.com','6475553013','Brampton','L6R1Z4','Yes',75),
('Olga','Petrov','olga.petrov@email.com','6475553014','Vaughan','L4J8C5','No',0),
('Jake','Miles','jake.miles@email.com','6475553015','Hamilton','L8N3W2','Yes',110),
('Marcia','Taylor','marcia.taylor@email.com','6475553016','Toronto','M4B1B3','Yes',90),
('Dwayne','Clarke','dwayne.clarke@email.com','6475553017','Brampton','L6P3S2','No',0),
('Vanessa','Mills','vanessa.mills@email.com','6475553018','Ajax','L1T2K7','Yes',140),
('Jordan','Parker','jordan.parker@email.com','6475553019','Mississauga','L4Z1X2','No',0),
('Keisha','Grant','keisha.grant@email.com','6475553020','Markham','L6C2V1','Yes',65),
('Andre','Lewis','andre.lewis@email.com','6475553021','Toronto','M3C1P1','Yes',80),
('Sabrina','Cole','sabrina.cole@email.com','6475553022','Oakville','L6M1K4','No',0),
('Trevor','Reid','trevor.reid@email.com','6475553023','Hamilton','L8V4G1','Yes',55),
('Nadia','James','nadia.james@email.com','6475553024','Vaughan','L4L7S2','Yes',130),
('Renee','Davis','renee.davis@email.com','6475553025','Toronto','M5A2B6','Yes',105),
('Omar','Grant','omar.grant@email.com','6475553026','Burlington','L7M3H1','No',0),
('Asha','Wilson','asha.wilson@email.com','6475553027','Ajax','L1Z1L2','Yes',98),
('Colin','Bennett','colin.bennett@email.com','6475553028','Mississauga','L5R4C4','No',0),
('Priya','Singh','priya.singh@email.com','6475553029','Markham','L3P7M8','Yes',175),
('Tasha','Henry','tasha.henry@email.com','6475553030','Toronto','M6G2N2','Yes',44),
('Sean','Morgan','sean.morgan@email.com','6475553031','Brampton','L6Y5R5','No',0),
('Maya','Forbes','maya.forbes@email.com','6475553032','Hamilton','L8S2N4','Yes',160),
('Jermaine','Brooks','jermaine.brooks@email.com','6475553033','Toronto','M1P4A2','Yes',22),
('Alisha','Campbell','alisha.campbell@email.com','6475553034','Mississauga','L5C1T7','Yes',118),
('Derrick','White','derrick.white@email.com','6475553035','Oakville','L6J2W8','No',0),
('Monique','Bailey','monique.bailey@email.com','6475553036','Vaughan','L4H1X9','Yes',84),
('Carmen','Joseph','carmen.joseph@email.com','6475553037','Ajax','L1S6R3','Yes',71),
('Ryan','Mitchell','ryan.mitchell@email.com','6475553038','Burlington','L7R3P8','No',0),
('Kerry','Matthews','kerry.matthews@email.com','6475553039','Toronto','M4C1Y7','Yes',142),
('Latoya','Powell','latoya.powell@email.com','6475553040','Markham','L3S4K2','Yes',67),
('Nolan','Young','nolan.young@email.com','6475553041','Brampton','L6X2A9','No',0),
('Sheena','Russell','sheena.russell@email.com','6475553042','Mississauga','L5M6V4','Yes',93),
('Devon','Hall','devon.hall@email.com','6475553043','Toronto','M6A3R1','Yes',29),
('Khadija','Hussain','khadija.hussain@email.com','6475553044','Vaughan','L4K5N2','Yes',101),
('Patrice','Nelson','patrice.nelson@email.com','6475553045','Hamilton','L8L6E4','No',0),
('Tariq','Ahmed','tariq.ahmed@email.com','6475553046','Ajax','L1T4X1','Yes',74),
('Janelle','Ross','janelle.ross@email.com','6475553047','Oakville','L6H6T5','Yes',88),
('Rohan','Miller','rohan.miller@email.com','6475553048','Toronto','M5R2N7','No',0),
('Amina','Said','amina.said@email.com','6475553049','Mississauga','L4Y3M3','Yes',53),
('Shanice','Edwards','shanice.edwards@email.com','6475553050','Brampton','L6S3T4','Yes',112),
('Leon','Watson','leon.watson@email.com','6475553051','Toronto','M4H1A9','No',0),
('Bianca','Evans','bianca.evans@email.com','6475553052','Markham','L6E1B8','Yes',136),
('Chantel','Morris','chantel.morris@email.com','6475553053','Burlington','L7L5V9','Yes',47),
('Wesley','Barnes','wesley.barnes@email.com','6475553054','Ajax','L1Z0A6','No',0),
('Naomi','Walker','naomi.walker@email.com','6475553055','Vaughan','L4J9K1','Yes',124),
('Damian','Scott','damian.scott@email.com','6475553056','Toronto','M2N7L5','Yes',58),
('Melanie','Carter','melanie.carter@email.com','6475553057','Mississauga','L5V1P9','Yes',97),
('Dion','Phillips','dion.phillips@email.com','6475553058','Hamilton','L8R2L3','No',0),
('Arielle','Bryant','arielle.bryant@email.com','6475553059','Oakville','L6K2G7','Yes',149),
('Troy','Fraser','troy.fraser@email.com','6475553060','Toronto','M1R4P2','No',0),
('Kimberly','Baker','kimberly.baker@email.com','6475553061','Brampton','L6W4S7','Yes',91),
('Jerome','Gordon','jerome.gordon@email.com','6475553062','Ajax','L1S7M4','Yes',39),
('Rebekah','Cruz','rebekah.cruz@email.com','6475553063','Markham','L3T6Y2','No',0),
('Talia','Wright','talia.wright@email.com','6475553064','Toronto','M5N1P4','Yes',116),
('Fabian','Cooke','fabian.cooke@email.com','6475553065','Mississauga','L5J4N7','Yes',63),
('Janine','Harris','janine.harris@email.com','6475553066','Burlington','L7S1W3','Yes',84),
('Carl','Douglas','carl.douglas@email.com','6475553067','Hamilton','L8M2V8','No',0),
('Celeste','Brown','celeste.brown@email.com','6475553068','Toronto','M4M2K9','Yes',132),
('Zara','King','zara.king@email.com','6475553069','Vaughan','L4L1R4','Yes',52),
('Michael','Francis','michael.francis@email.com','6475553070','Oakville','L6M4B1','No',0),
('Aaliyah','Whyte','aaliyah.whyte@email.com','6475553071','Markham','L6B0T2','Yes',109),
('Rico','Campbell','rico.campbell@email.com','6475553072','Ajax','L1Z1N4','No',0),
('Haley','Murphy','haley.murphy@email.com','6475553073','Toronto','M6P3C7','Yes',43),
('Corey','Allen','corey.allen@email.com','6475553074','Mississauga','L5A4E5','Yes',72),
('Vanessa','Richards','vanessa.richards@email.com','6475553075','Brampton','L6X0C8','No',0),
('Tristan','Hill','tristan.hill@email.com','6475553076','Toronto','M3H5T2','Yes',98),
('Akeem','Small','akeem.small@email.com','6475553077','Hamilton','L8K4R7','Yes',54),
('Danielle','Stewart','danielle.stewart@email.com','6475553078','Vaughan','L4K2P3','Yes',126),
('Shari','Thomas','shari.thomas@email.com','6475553079','Ajax','L1T0A3','No',0),
('Marcus','McLean','marcus.mclean@email.com','6475553080','Oakville','L6H7B6','Yes',90),
('Kendra','Pope','kendra.pope@email.com','6475553081','Toronto','M1T2N2','Yes',34),
('Jody','Turner','jody.turner@email.com','6475553082','Mississauga','L4W3K1','No',0),
('Nicole','Williams','nicole.williams@email.com','6475553083','Markham','L3S2M9','Yes',140),
('Orville','James','orville.james@email.com','6475553084','Burlington','L7P4A8','Yes',48),
('Pauline','Roberts','pauline.roberts@email.com','6475553085','Toronto','M5B2H7','No',0),
('Kamal','Chambers','kamal.chambers@email.com','6475553086','Brampton','L6R3W1','Yes',68),
('Sonya','Grant','sonya.grant@email.com','6475553087','Hamilton','L8W3M9','Yes',151),
('Tyrese','Knight','tyrese.knight@email.com','6475553088','Ajax','L1S5H8','No',0),
('Racquel','Murray','racquel.murray@email.com','6475553089','Toronto','M4J2T6','Yes',61),
('Dalia','Johnson','dalia.johnson@email.com','6475553090','Mississauga','L5G3J6','Yes',95),
('Ethan','Simms','ethan.simms@email.com','6475553091','Oakville','L6L2M4','No',0),
('Tameka','Bell','tameka.bell@email.com','6475553092','Markham','L3R9H1','Yes',115),
('Renee','Nurse','renee.nurse@email.com','6475553093','Toronto','M2J4C6','Yes',49),
('Jovan','Daley','jovan.daley@email.com','6475553094','Vaughan','L4H4T4','No',0),
('Alana','Moore','alana.moore@email.com','6475553095','Burlington','L7M1N7','Yes',122),
('Desmond','Stephens','desmond.stephens@email.com','6475553096','Toronto','M6C1X8','Yes',37),
('Marisa','Black','marisa.black@email.com','6475553097','Ajax','L1T3K5','No',0),
('Kori','Foster','kori.foster@email.com','6475553098','Hamilton','L8P4K2','Yes',94),
('Amari','Hylton','amari.hylton@email.com','6475553099','Toronto','M5T1R8','Yes',57),
('Ruth','Atkins','ruth.atkins@email.com','6475553100','Mississauga','L5K2P9','No',0),
('Nadine','Brown','nadine.brown@email.com','6475553101','Markham','L3P3Y4','Yes',83),
('Joel','Palmer','joel.palmer@email.com','6475553102','Brampton','L6Y0P4','Yes',28),
('Tamara','Lewis','tamara.lewis@email.com','6475553103','Toronto','M1B5A1','No',0),
('Darnell','Blake','darnell.blake@email.com','6475553104','Oakville','L6M5S3','Yes',76),
('Jasmine','Grant','jasmine.grant2@email.com','6475553105','Hamilton','L8H6P1','Yes',133),
('Khalil','Rose','khalil.rose@email.com','6475553106','Ajax','L1Z2A7','No',0),
('Mikaela','Shaw','mikaela.shaw@email.com','6475553107','Toronto','M4W1K8','Yes',92),
('Shavonne','James','shavonne.james@email.com','6475553108','Mississauga','L5B4M2','Yes',46);

-- =========================================
-- EMPLOYEES
-- =========================================
INSERT INTO Employees (FirstName, LastName, Role, LocationID, HireDate, Phone) VALUES
('Maya','Thomas','Naturopathic Herbalist',1,'2024-01-15','416-555-4101'),
('Daniel','Brooks','Herbal Pharmacist',2,'2024-02-10','416-555-4102'),
('Olivia','James','Assistant',3,'2024-03-05','416-555-4103'),
('Ethan','Carter','Sales Associate',4,'2024-01-22','416-555-4104'),
('Sophia','Mitchell','Sales Associate',5,'2024-04-12','416-555-4105'),
('Lucas','Hall','Naturopathic Herbalist',6,'2024-02-18','416-555-4106'),
('Ava','Turner','Herbal Pharmacist',7,'2024-03-30','416-555-4107'),
('Noah','Parker','Assistant',8,'2024-05-08','416-555-4108'),
('Mia','Evans','Sales Associate',9,'2024-06-14','416-555-4109'),
('Liam','Scott','Sales Associate',10,'2024-07-01','416-555-4110');

-- =========================================
-- PRODUCTS
-- =========================================
INSERT INTO Products (ProductName, CategoryID, DepartmentID, SupplierID, UnitPrice, StockQuantity, CreatedDate) VALUES
('Chamomile Tea',1,7,1,10.99,80,'2025-01-01'),
('Lemon Balm Tea',1,7,2,11.49,76,'2025-01-02'),
('Hibiscus Tea',1,10,3,9.99,92,'2025-01-03'),
('Ginger Tea Blend',1,6,4,12.99,88,'2025-01-04'),
('Moringa Tea',1,9,5,13.50,74,'2025-01-05'),
('Soursop Leaf Tea',1,10,6,14.25,69,'2025-01-06'),
('Women Wellness Tea',1,1,7,15.25,65,'2025-01-07'),
('Men Vitality Tea',1,2,8,15.75,61,'2025-01-08'),
('Kids Calm Tea',1,3,9,10.50,70,'2025-01-09'),
('Cerasee Detox Tea',1,6,6,13.99,72,'2025-01-10'),
('Guinea Hen Weed Tea',1,5,6,14.99,58,'2025-01-11'),
('Sleep Ease Tea',1,7,10,12.75,84,'2025-01-12'),

('Ashwagandha Capsules',2,9,2,18.99,75,'2025-02-01'),
('Elderberry Capsules',2,5,1,19.99,72,'2025-02-02'),
('Sea Moss Capsules',2,10,6,21.50,68,'2025-02-03'),
('Turmeric Capsules',2,6,4,17.99,82,'2025-02-04'),
('Men Daily Capsules',2,2,8,20.25,54,'2025-02-05'),
('Women Balance Capsules',2,1,7,21.99,50,'2025-02-06'),
('Kids Immune Chews',2,3,9,16.50,79,'2025-02-07'),
('Pet Joint Capsules',2,4,5,22.75,47,'2025-02-08'),
('Iron Boost Capsules',2,1,3,19.50,59,'2025-02-09'),
('Magnesium Calm Capsules',2,7,2,18.25,73,'2025-02-10'),
('Moringa Capsules',2,9,6,17.50,66,'2025-02-11'),
('Digestive Enzyme Capsules',2,6,10,20.99,62,'2025-02-12'),

('Valerian Tincture',3,7,1,21.99,48,'2025-03-01'),
('Milk Thistle Tincture',3,6,2,20.99,51,'2025-03-02'),
('Ginger Tincture',3,6,3,18.75,63,'2025-03-03'),
('Nettle Tincture',3,10,4,19.25,57,'2025-03-04'),
('Dandelion Tincture',3,6,5,18.50,60,'2025-03-05'),
('Soursop Tincture',3,10,6,23.50,45,'2025-03-06'),
('Cerasee Tincture',3,6,6,22.25,43,'2025-03-07'),
('Pet Calm Drops',3,4,9,19.99,41,'2025-03-08'),
('Kids Cough Drops',3,3,10,17.75,55,'2025-03-09'),
('Women Tonic Drops',3,1,7,21.75,44,'2025-03-10'),
('Men Energy Drops',3,2,8,22.50,42,'2025-03-11'),
('Guinea Hen Weed Extract',3,5,6,24.25,39,'2025-03-12'),

('Peppermint Oil',4,7,1,14.99,73,'2025-04-01'),
('Tea Tree Oil',4,8,2,16.25,67,'2025-04-02'),
('Eucalyptus Oil',4,5,3,15.80,72,'2025-04-03'),
('Lavender Oil',4,7,4,15.99,70,'2025-04-04'),
('Frankincense Oil',4,10,5,24.99,34,'2025-04-05'),
('Lemon Oil',4,10,6,13.75,69,'2025-04-06'),
('Rosemary Oil',4,9,7,14.50,65,'2025-04-07'),
('Clove Oil',4,5,8,15.25,60,'2025-04-08'),
('Oregano Oil',4,5,9,24.99,36,'2025-04-09'),
('Bergamot Oil',4,7,10,18.99,49,'2025-04-10'),
('Cedarwood Oil',4,7,1,17.40,52,'2025-04-11'),
('Skin Relief Oil',4,8,2,19.50,46,'2025-04-12'),

('Soursop Leaves',5,10,6,12.99,90,'2025-05-01'),
('Cerasee Leaves',5,6,6,11.99,95,'2025-05-02'),
('Duck Flower',5,6,6,13.99,66,'2025-05-03'),
('Guinea Hen Weed Leaves',5,5,6,14.99,62,'2025-05-04'),
('Fever Grass',5,10,6,9.99,98,'2025-05-05'),
('Moringa Leaves',5,9,6,10.99,88,'2025-05-06'),
('Nettle Leaf',5,10,3,8.99,102,'2025-05-07'),
('Valerian Root',5,7,2,12.99,79,'2025-05-08'),
('Dandelion Root',5,6,4,9.99,93,'2025-05-09'),
('Burdock Root',5,6,5,10.75,87,'2025-05-10'),
('Chamomile Flowers',5,7,1,11.25,84,'2025-05-11'),
('Red Clover',5,1,7,10.20,89,'2025-05-12'),

('Turmeric Powder',6,6,6,11.25,86,'2025-06-01'),
('Moringa Powder',6,9,1,13.99,73,'2025-06-02'),
('Maca Powder',6,9,2,15.50,68,'2025-06-03'),
('Spirulina Powder',6,9,3,16.75,64,'2025-06-04'),
('Chlorella Powder',6,10,4,17.25,61,'2025-06-05'),
('Ashwagandha Powder',6,7,5,14.80,70,'2025-06-06'),
('Beet Root Powder',6,1,6,12.50,82,'2025-06-07'),
('Baobab Powder',6,10,7,18.40,55,'2025-06-08'),
('Amla Powder',6,10,8,13.60,74,'2025-06-09'),
('Matcha Green Powder',6,9,9,22.50,44,'2025-06-10'),
('Cerasee Powder Blend',6,6,6,16.20,58,'2025-06-11'),
('Gut Cleanse Powder',6,6,10,18.99,53,'2025-06-12'),

('Elderberry Syrup',7,5,1,19.99,67,'2025-07-01'),
('Kids Herbal Syrup',7,3,2,14.50,75,'2025-07-02'),
('Mullein Syrup',7,5,3,16.99,72,'2025-07-03'),
('Cherry Bark Syrup',7,5,4,17.50,69,'2025-07-04'),
('Ginger Honey Syrup',7,6,5,15.75,70,'2025-07-05'),
('Thyme Cough Syrup',7,5,6,17.99,68,'2025-07-06'),
('Lemon Ginger Syrup',7,6,7,16.50,73,'2025-07-07'),
('Immune Boost Syrup',7,5,8,19.20,65,'2025-07-08'),
('Women Iron Syrup',7,1,9,18.75,58,'2025-07-09'),
('Men Vitality Syrup',7,2,10,19.50,56,'2025-07-10'),
('Pet Wellness Syrup',7,4,5,17.25,49,'2025-07-11'),
('Soursop Leaf Syrup',7,10,6,18.60,54,'2025-07-12'),

('Calendula Balm',8,8,8,13.49,71,'2025-08-01'),
('Arnica Balm',8,8,2,14.25,66,'2025-08-02'),
('Lavender Balm',8,7,3,11.75,74,'2025-08-03'),
('Tea Tree Balm',8,8,4,13.50,69,'2025-08-04'),
('Eucalyptus Chest Balm',8,5,5,15.20,62,'2025-08-05'),
('Peppermint Muscle Balm',8,9,6,14.60,65,'2025-08-06'),
('Chamomile Baby Balm',8,3,7,12.40,70,'2025-08-07'),
('Rosemary Joint Balm',8,2,8,15.80,59,'2025-08-08'),
('Skin Heal Balm',8,8,9,16.25,57,'2025-08-09'),
('Cerasee Skin Balm',8,8,6,15.50,52,'2025-08-10'),
('Men Recovery Balm',8,2,10,16.80,48,'2025-08-11'),
('Pet Paw Balm',8,4,5,13.95,50,'2025-08-12'),

('Immune Defense Tablets',9,5,1,24.99,45,'2025-09-01'),
('Probiotic Support',9,6,2,22.50,47,'2025-09-02'),
('Iron Support Complex',9,1,3,20.99,56,'2025-09-03'),
('Calcium D3 Support',9,10,4,19.75,63,'2025-09-04'),
('Women Multinutrient',9,1,5,23.50,44,'2025-09-05'),
('Men Multinutrient',9,2,6,23.50,43,'2025-09-06'),
('Kids Vitamin Drops',9,3,7,18.40,61,'2025-09-07'),
('Sea Moss Gummies',9,10,6,21.25,58,'2025-09-08'),
('Gut Health Support',9,6,9,24.50,41,'2025-09-09'),
('Parasite Cleanse Kit',9,6,10,27.99,38,'2025-09-10'),
('Pet Daily Support',9,4,5,20.50,42,'2025-09-11'),
('Respiratory Support Blend',9,5,8,21.75,46,'2025-09-12'),

('Ginger Digestive Tonic',10,6,10,16.80,73,'2025-10-01'),
('Iron Boost Tonic',10,1,3,19.25,60,'2025-10-02'),
('Liver Cleanse Tonic',10,6,4,18.95,57,'2025-10-03'),
('Women Balance Tonic',10,1,5,21.50,49,'2025-10-04'),
('Men Power Tonic',10,2,6,22.25,45,'2025-10-05'),
('Kids Wellness Tonic',10,3,7,15.95,62,'2025-10-06'),
('Pet Herbal Tonic',10,4,5,18.75,50,'2025-10-07'),
('Cerasee Detox Tonic',10,6,6,20.50,53,'2025-10-08'),
('Duck Flower Cleanse Tonic',10,6,6,21.99,39,'2025-10-09'),
('Soursop Wellness Tonic',10,10,6,22.40,44,'2025-10-10'),
('Sleep Ease Tonic',10,7,2,18.60,58,'2025-10-11'),
('Energy Restore Tonic',10,9,1,19.99,55,'2025-10-12');

-- =========================================
-- ORDERS (2,400 total)
-- =========================================
INSERT INTO Orders (CustomerID, EmployeeID, LocationID, OrderDate, TotalAmount)
SELECT
    ((n - 1) % 108) + 1 AS CustomerID,
    ((n - 1) % 10) + 1 AS EmployeeID,
    ((n - 1) % 10) + 1 AS LocationID,
    STR_TO_DATE(
        CONCAT(
            '2026-',
            LPAD(FLOOR((n - 1) / 200) + 1, 2, '0'),
            '-',
            LPAD(((n * 7) % 28) + 1, 2, '0')
        ),
        '%Y-%m-%d'
    ) AS OrderDate,
    0.00 AS TotalAmount
FROM (
    SELECT ones.n + tens.n * 10 + hundreds.n * 100 + thousands.n * 1000 + 1 AS n
    FROM
        (SELECT 0 AS n UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
         UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) ones
    CROSS JOIN
        (SELECT 0 AS n UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
         UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) tens
    CROSS JOIN
        (SELECT 0 AS n UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
         UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) hundreds
    CROSS JOIN
        (SELECT 0 AS n UNION ALL SELECT 1 UNION ALL SELECT 2) thousands
) nums
WHERE n <= 2400
ORDER BY n;

-- =========================================
-- ORDER DETAILS (3 items per order)
-- =========================================
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, SalePrice)
SELECT
    O.OrderID,
    ((O.OrderID * 7) % 120) + 1 AS ProductID,
    2 AS Quantity,
    P.UnitPrice
FROM Orders O
JOIN Products P
    ON P.ProductID = ((O.OrderID * 7) % 120) + 1;

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, SalePrice)
SELECT
    O.OrderID,
    CASE
        WHEN (((O.OrderID * 13) + 17) % 120) + 1 = (((O.OrderID * 7) % 120) + 1)
        THEN ((((O.OrderID * 13) + 18) % 120) + 1)
        ELSE (((O.OrderID * 13) + 17) % 120) + 1
    END AS ProductID,
    1 AS Quantity,
    P.UnitPrice
FROM Orders O
JOIN Products P
    ON P.ProductID = CASE
        WHEN (((O.OrderID * 13) + 17) % 120) + 1 = (((O.OrderID * 7) % 120) + 1)
        THEN ((((O.OrderID * 13) + 18) % 120) + 1)
        ELSE (((O.OrderID * 13) + 17) % 120) + 1
    END;

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, SalePrice)
SELECT
    O.OrderID,
    CASE
        WHEN (((O.OrderID * 19) + 29) % 120) + 1 IN (
            ((O.OrderID * 7) % 120) + 1,
            CASE
                WHEN (((O.OrderID * 13) + 17) % 120) + 1 = (((O.OrderID * 7) % 120) + 1)
                THEN ((((O.OrderID * 13) + 18) % 120) + 1)
                ELSE (((O.OrderID * 13) + 17) % 120) + 1
            END
        )
        THEN ((((O.OrderID * 19) + 31) % 120) + 1)
        ELSE (((O.OrderID * 19) + 29) % 120) + 1
    END AS ProductID,
    CASE
        WHEN O.OrderID % 3 = 0 THEN 2
        ELSE 1
    END AS Quantity,
    P.UnitPrice
FROM Orders O
JOIN Products P
    ON P.ProductID = CASE
        WHEN (((O.OrderID * 19) + 29) % 120) + 1 IN (
            ((O.OrderID * 7) % 120) + 1,
            CASE
                WHEN (((O.OrderID * 13) + 17) % 120) + 1 = (((O.OrderID * 7) % 120) + 1)
                THEN ((((O.OrderID * 13) + 18) % 120) + 1)
                ELSE (((O.OrderID * 13) + 17) % 120) + 1
            END
        )
        THEN ((((O.OrderID * 19) + 31) % 120) + 1)
        ELSE (((O.OrderID * 19) + 29) % 120) + 1
    END;

-- =========================================
-- RETURNS
-- =========================================
INSERT INTO Returns (OrderDetailID, ReturnDate, ReturnQuantity, ReturnReason, RefundAmount)
SELECT
    OD.OrderDetailID,
    DATE_ADD(O.OrderDate, INTERVAL 7 DAY) AS ReturnDate,
    1 AS ReturnQuantity,
    CASE
        WHEN OD.OrderDetailID % 4 = 0 THEN 'Customer changed mind'
        WHEN OD.OrderDetailID % 4 = 1 THEN 'Did not work'
        WHEN OD.OrderDetailID % 4 = 2 THEN 'Wrong product'
        ELSE 'Damaged item'
    END AS ReturnReason,
    OD.SalePrice AS RefundAmount
FROM OrderDetails OD
JOIN Orders O
    ON OD.OrderID = O.OrderID
WHERE OD.OrderDetailID % 50 = 0;

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
-- STOCK UPDATE
-- =========================================
UPDATE Products P
JOIN (
    SELECT ProductID, SUM(Quantity) AS SoldQty
    FROM OrderDetails
    GROUP BY ProductID
) S
    ON P.ProductID = S.ProductID
SET P.StockQuantity = GREATEST(P.StockQuantity - S.SoldQty, 0)
WHERE P.ProductID > 0;

UPDATE Products P
JOIN (
    SELECT OD.ProductID, SUM(R.ReturnQuantity) AS ReturnedQty
    FROM Returns R
    JOIN OrderDetails OD
        ON R.OrderDetailID = OD.OrderDetailID
    GROUP BY OD.ProductID
) RT
    ON P.ProductID = RT.ProductID
SET P.StockQuantity = P.StockQuantity + RT.ReturnedQty
WHERE P.ProductID > 0;