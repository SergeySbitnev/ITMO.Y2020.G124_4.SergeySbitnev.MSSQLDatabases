SELECT *
FROM Sales.SalesOrderHeader;
GO
/*31 465 ���*/

SELECT SalesOrderID, OrderDate, SalesPersonID
FROM Sales.SalesOrderHeader;
GO
/*31 465 ���*/

SELECT SalesOrderID, OrderDate, SalesPersonID
FROM Sales.SalesOrderHeader
WHERE SalesPersonID = 279;
GO
/*429 ���*/

SELECT SalesOrderID, OrderDate, SalesPersonID
FROM Sales.SalesOrderHeader
WHERE SalesPersonID = 279 OR SalesPersonID = 282;
GO
/*700 ���*/

SELECT SalesOrderID, OrderDate
FROM Sales.SalesOrderHeader
WHERE SalesOrderID BETWEEN 57000 AND 58000;
GO
/*1 001 ���*/

SELECT SalesOrderID, OrderDate
FROM Sales.SalesOrderHeader
WHERE SalesPersonID = 279 AND YEAR(OrderDate) = 2014;
GO
/*54 ���*/
