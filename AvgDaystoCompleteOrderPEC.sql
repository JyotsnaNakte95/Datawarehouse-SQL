SELECT avg(`Number of days`) as AvgDaysPEC 
FROM TPCDataMart.Financial_Analysis_Fact 
WHERE Source = 'PEC';