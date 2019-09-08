LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/SalesDateDimension.csv'
INTO TABLE TPCCustShrunk.Sales_Date_Dimension FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/OrderDateDimension.csv'
INTO TABLE TPCCustShrunk.Order_Date_Dimension FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/JunkDimension.csv'
INTO TABLE TPCCustShrunk.Order_Indicator_Dimension FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/ProductDimension.csv'
INTO TABLE TPCCustShrunk.Product_Dimension FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/SupplierDimension.csv'
INTO TABLE TPCCustShrunk.Supplier_Dimension FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;


LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/CustomerShrunkDimension.csv'
INTO TABLE TPCCustShrunk.Customer_State_Dimension FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;


LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/CustShrunkDataMartTPCWfact.csv'
INTO TABLE TPCCustShrunk.Financial_Analysis_Fact FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;


LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/CustShrunkDatamartPECfact.csv'
INTO TABLE TPCCustShrunk.Financial_Analysis_Fact FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE '/Users/vaibhavnagda/Documents/Sem4/iste724/Project/FinalDimensions/CustShrunkDataMartTPCEfact.csv'
INTO TABLE TPCCustShrunk.Financial_Analysis_Fact FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
Ignore 1 Lines;



