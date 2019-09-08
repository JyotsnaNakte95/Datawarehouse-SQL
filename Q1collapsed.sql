USE TPCDataMart;

select Year, Month, `Customer State`, sum(Amount) as Sales
from Financial_Analysis_Fact
join Customer_Dimension using(`Customer SK`)
join Sales_Date_Dimension using(`Sales Date SK`)
group by Year, Month, `Customer State`
order by Year, Month;