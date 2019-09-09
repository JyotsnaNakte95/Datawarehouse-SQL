Use TPCCustLost;

SELECT `Supplier Name`, sum(Amount) as TotalCost
FROM TPCCustLost.Supplier_Dimension
Join TPCCustLost.Financial_Analysis_Fact using(`Supplier SK`)
Group by `Supplier Name`
Order by TotalCost desc;