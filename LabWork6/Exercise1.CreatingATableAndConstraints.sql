USE OrdersDatabase;
GO

-- Таблица Sales.LineItems создана
CREATE TABLE Sales.LineItems
(OrderID INT NOT NULL
,ProductID INT NOT NULL
,UnitPrice MONEY NOT NULL
,Quantity SMALLINT NOT NULL
CONSTRAINT PK_LineItems PRIMARY KEY (OrderID,ProductID)
CONSTRAINT FK_LineItems_Orders FOREIGN KEY (OrderID)
REFERENCES Sales.Orders (OrderID));
GO

-- Добавили ограничение DEFAULT
ALTER TABLE Sales.Orders
ADD CONSTRAINT DF_OrderDate DEFAULT GETDATE() FOR OrderDate;
GO

-- Проверка ограничения
INSERT INTO Sales.Orders
VALUES(110, 3, DEFAULT);
GO

-- Вывод таблицы
SELECT * FROM Sales.Orders
WHERE OrderID = 110;
GO