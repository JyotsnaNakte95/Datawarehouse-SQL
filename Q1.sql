SELECT count(*) as NumberofOrders
FROM TPCDataMart.Financial_Analysis_Fact
JOIN TPCDataMart.Customer_Dimension using(`Customer SK`)
WHERE `Number of days` > 10
and Source = 'PEC';