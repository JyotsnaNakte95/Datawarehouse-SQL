Use TPCCustLost;

SELECT `Business Unit Name`, sum(Amount) as SalesbyBU
FROM TPCCustLost.Financial_Analysis_Fact 
JOIN Product_Dimension using(`Product SK`)
GROUP BY `Business Unit Name`
ORDER BY SalesbyBU desc;