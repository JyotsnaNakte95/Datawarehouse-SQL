Select YEAR(SALESDATE), business_unit.ABBREV, SUM(invoice_details.amt) as TotalSale From 
business_unit,prod_type,product,invoice_details,invoice Where 
business_unit.BUID=prod_type.BUID AND
prod_type.PRODTYPEID=product.PRODTYPEID AND
product.PRODID= invoice_details.prodID AND
invoice_details.invoiceID= invoice.INVOICEID Group By
YEAR(SALESDATE), business_unit.ABBREV;