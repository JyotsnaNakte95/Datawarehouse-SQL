LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/SalesDateDimension.csv'
INTO TABLE TPCDataMart.Sales_Date_Dimension FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/OrderDateDimension.csv'
INTO TABLE TPCDataMart.Order_Date_Dimension FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/CustomerDimension.csv'
INTO TABLE TPCDataMart.Customer_Dimension FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/JunkDimension.csv'
INTO TABLE TPCDataMart.Order_Indicator_Dimension FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/ProductDimension.csv'
INTO TABLE TPCDataMart.Product_Dimension FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/SupplierDimension.csv'
INTO TABLE TPCDataMart.Supplier_Dimension FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/TPCDataMartTPCWfact.csv'
INTO TABLE TPCDataMart.Financial_Analysis_Fact FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/TPCDataMartPECFact.csv'
INTO TABLE TPCDataMart.Financial_Analysis_Fact FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/TPCDataMartTPCEfact.csv'
INTO TABLE TPCDataMart.Financial_Analysis_Fact FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;


