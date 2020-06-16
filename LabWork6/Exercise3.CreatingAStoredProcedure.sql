USE OrdersDatabase;
GO

-- Команда выполнена успешно, хранимая процедура добавлена
CREATE PROCEDURE USP_InsertOrders
@OrderID int, @CustomerID int 
AS
INSERT INTO Sales.Orders (OrderID, CustomerID)
VALUES
(@OrderID, @CustomerID);
GO

-- Добавляем строку хранимой процедурой
EXEC USP_InsertOrders 150,2;
GO

-- Проверка, строка добавлена
SELECT * FROM Sales.Orders 
WHERE OrderID = 150

-- Добавляем еще одну)
EXEC USP_InsertOrders 160,1;
GO

-- Проверка, строка добавлена
SELECT * FROM Sales.Orders 