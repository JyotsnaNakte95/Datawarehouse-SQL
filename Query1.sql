SELECT customer.NAME,customer.ADDR1,customer.ADDR2,customer.CITY,customer.STATE,customer.ZIP,
invoice_details.invoiceID,invoice_details.amt,invoice_details.qty,
invoice.SALESDATE,
product.DESCRIPTION from 
customer,invoice_details,invoice,product where 
customer.CUSTOMERID = invoice.CUSTID AND
invoice_details.invoiceID=invoice.INVOICEID AND
invoice_details.prodID=product.PRODID AND
customer.NAME="United Healthcare Corporation";
