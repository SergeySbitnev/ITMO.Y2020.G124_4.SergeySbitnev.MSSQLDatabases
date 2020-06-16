USE OrdersDatabase;
GO

-- Команда успешно завершена
ALTER TABLE Orders
ADD CONSTRAINT FK_Order_Customers FOREIGN KEY (CustomerID)
REFERENCES Customers (CustomerID);
GO

-- Заказ добавился в таблицу
INSERT INTO Orders
VALUES (105,2, GETDATE());
GO

-- Ошибка, нет клиента с ID 5
INSERT INTO Orders
VALUES (106,5, GETDATE());
GO

-- Команда успешно завершена
ALTER TABLE CustomerDetails
ADD CONSTRAINT FK_CustomerDetails_Customers FOREIGN KEY (CustomerID)
REFERENCES Customers (CustomerID);
GO

-- Ошибка, нет клиента с ID 5
INSERT INTO CustomerDetails
VALUES (5,'9832 Mt. Dias Blv.', 'Chicago','97321', '08/09/1970');
GO

-- Команда успешно завершена
ALTER TABLE LineItems
ADD CONSTRAINT FK_LineItems_Orders FOREIGN KEY (OrderID)
REFERENCES Orders (OrderID);
GO

-- Вставка в таблицу LineItems прошла успешно
INSERT INTO LineItems
VALUES (101,33,30.00,1);
GO

-- Ошибка, нет заказа с ID 106
INSERT INTO LineItems
VALUES (106,44,30.00,1);
GO

-- Команда успешно завершена
ALTER TABLE LineItems
ADD CONSTRAINT FK_LineItems_Products FOREIGN KEY (ProductID)
REFERENCES Products (ProductID);
GO

-- Вставка в таблицу LineItems прошла успешно
INSERT INTO LineItems
VALUES (102,22,15.00,1);
GO

-- Ошибка, нет продукта с ID 66
INSERT INTO LineItems
VALUES (104,66,30.00,1);
GO