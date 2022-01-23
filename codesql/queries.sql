SELECT CASE
WHEN count(salesOrderId) >= 3000 THEN count(salesOrderId)
END FROM Sales_SalesOrderDetail;




SELECT pp.name, pp.DaysToManufacture FROM Production_Product AS pp 
LEFT JOIN Sales_SalesOrderDetail AS sod ON pp.productId = sod.productId
LEFT JOIN Sales_SpecialOfferProduct AS sop ON sop.productId = pp.productId
GROUP BY pp.name, pp.DaysToManufacture
ORDER BY sum(sod.OrderQty) DESC
LIMIT 3;




SELECT p.FirstName, count(soh.SalesOrderId) AS Qtd_vendas FROM person_person AS p
LEFT JOIN sales_Customer AS c ON personid = c.PersonId
LEFT JOIN Sales_SalesOrderHeader AS soh ON c.CustomerId = soh.CustomerId
GROUP BY p.FirstName
ORDER BY count(soh.SalesOrderId) DESC;




SELECT pp.ProductId, sum(sod.OrderQty), soh.orderDate AS Total_produtos FROM Production_product AS pp
LEFT JOIN Sales_salesOrderDetail AS sod ON pp.productId = sod.productId
LEFT JOIN Sales_SalesOrderHeader AS soh ON soh.SalesOrderId = sod.SalesOrderId
GROUP BY soh.orderDate, pp.ProductId
ORDER BY sum(sod.OrderQty) DESC;




SELECT salesorderid, orderdate, totaldue FROM sales_salesorderheader
WHERE extract('month' FROM orderdate) = 9 AND extract('year' FROM orderdate) = 2011 AND totaldue::money::numeric::float8 > 1000.00
ORDER BY totaldue DESC;
