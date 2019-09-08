Use TPCDataMart;

Select `Ordering Method` as OrderMethod, 
			count(`InvoiceID_DD`) as Number
FROM TPCDataMart.Financial_Analysis_Fact 
Join TPCDataMart.Order_Indicator_Dimension using(`Order Indicator SK`)
where Source = 'PEC' 
group by `Ordering Method`
order by Number;
