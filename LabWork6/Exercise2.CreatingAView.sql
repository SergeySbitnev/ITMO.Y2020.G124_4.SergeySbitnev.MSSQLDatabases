USE OrdersDatabase;
GO
-- Вывел результирубщую таблицу, в поле CustomerName объеденил поля FirstName и LastName
-- А в поле Order Total вывел сумму всех заказов
SELECT (FirstName + ' ' + LastName) AS [Customer Name] 
,O.OrderID, OrderDate
,SUM(UnitPrice*Quantity) AS [Order Total] 
FROM Person.Customers as C
JOIN Sales.Orders as O 
ON C.CustomerID = O.CustomerID
JOIN Sales.LineItems as L
ON O.OrderID = L.OrderID
GROUP BY O.OrderID, Firstname, Lastname, OrderDate;
GO

-- Команда выполнена успешно
-- Представление создано
CREATE VIEW VW_CustomerOrders
AS
SELECT (FirstName + ' ' + LastName) AS [Customer Name] 
,O.OrderID, OrderDate
,SUM(UnitPrice*Quantity) AS [Order Total] 
FROM Person.Customers as C
JOIN Sales.Orders as O 
ON C.CustomerID = O.CustomerID
JOIN Sales.LineItems as L
ON O.OrderID = L.OrderID
GROUP BY O.OrderID, Firstname, Lastname, OrderDate;
GO

-- Проверка создание представления. ОК
SELECT * FROM VW_CustomerOrders;
GO