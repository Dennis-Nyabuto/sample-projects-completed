-- basic query as part of SQL fundermental course, including offset FETCH Filters

SELECT 
SalesOrderNumber As InvoiceNumber,
OrderDate,
SUM(SalesAmount) AS InvoiceSubTotal,
sum(TaxAmt) AS TaxAmount,
SUM(OrderQuantity) AS TotalQuantity,
SUM(SalesAmount) + sum(TaxAmt) AS InvoiceTotal

FROM FactInternetSales
WHERE SalesTerritoryKey =6


GROUP BY SalesOrderNumber, OrderDate
HAVING SUM(SalesAmount) > 1000

ORDER BY InvoiceSubTotal DESC

OFFSET 2 ROWS FETCH NEXT 10 ROWS ONLY