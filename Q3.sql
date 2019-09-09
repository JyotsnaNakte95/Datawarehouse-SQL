Use TPCDataMart;

select ans.OrderMethod, ans.Rank
	from 
	( 
	Select le.OrderMethod,count(ri.Numb) as Rank
	from 
		(
			SELECT `Ordering Method` as OrderMethod, 
						count(`InvoiceID_DD`) as Numb
			FROM TPCDataMart.Financial_Analysis_Fact 
			JOIN TPCDataMart.Order_Indicator_Dimension using(`Order Indicator SK`)
			WHERE Source = 'PEC' 
			GROUP BY 1
		)le
	JOIN
		(
			SELECT `Ordering Method` as OrderMethod, 
						count(`InvoiceID_DD`) as Numb
			FROM TPCDataMart.Financial_Analysis_Fact 
			JOIN TPCDataMart.Order_Indicator_Dimension using(`Order Indicator SK`)
			WHERE Source = 'PEC' 
			GROUP BY 1
		)ri 
	using(OrderMethod)
	where le.Numb <= ri.Numb
	group by 1
	)ans;

