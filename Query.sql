Use TPCCustShrunk;


SELECT `Supplier State`,  `Supplier Name`, `Customer State`, sum(Amount) as Sales
FROM Financial_Analysis_Fact
JOIN Supplier_Dimension using(`Supplier SK`)
JOIN Customer_State_Dimension using(`Customer State SK`)
GROUP BY 1, 2, 3 with rollup;



