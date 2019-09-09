
CREATE VIEW CustomerInfoProds AS (

  SELECT distinct c.`Customer Name`, c.`Customer City`, p.`Product Description`
  FROM Customer_Dimension c
   JOIN Financial_Analysis_Fact f
  ON
    c.`Customer SK`= f.`Customer SK`
   JOIN
    Product_Dimension p
  ON 
    f.`Product SK`=p.`Product SK`
     Where c.`Customer State` like '%NY%'
);
