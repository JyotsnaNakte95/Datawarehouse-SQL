SELECT `Ordering Method` as OrderMethod, 
						count(`InvoiceID_DD`) as Numb
FROM TPCDataMart.Financial_Analysis_Fact 
JOIN TPCDataMart.Order_Indicator_Dimension using(`Order Indicator SK`)
WHERE Source = 'PEC' 
GROUP BY 1
ORDER BY Numb desc;