USE OrdersDatabase;
GO

-- ������� ������� ���������
ALTER TABLE Orders
ADD CONSTRAINT FK_Order_Customers FOREIGN KEY (CustomerID)
REFERENCES Customers (CustomerID);
GO

-- ����� ��������� � �������
INSERT INTO Orders
VALUES (105,2, GETDATE());
GO

-- ������, ��� ������� � ID 5
INSERT INTO Orders
VALUES (106,5, GETDATE());
GO

-- ������� ������� ���������
ALTER TABLE CustomerDetails
ADD CONSTRAINT FK_CustomerDetails_Customers FOREIGN KEY (CustomerID)
REFERENCES Customers (CustomerID);
GO

-- ������, ��� ������� � ID 5
INSERT INTO CustomerDetails
VALUES (5,'9832 Mt. Dias Blv.', 'Chicago','97321', '08/09/1970');
GO

-- ������� ������� ���������
ALTER TABLE LineItems
ADD CONSTRAINT FK_LineItems_Orders FOREIGN KEY (OrderID)
REFERENCES Orders (OrderID);
GO

-- ������� � ������� LineItems ������ �������
INSERT INTO LineItems
VALUES (101,33,30.00,1);
GO

-- ������, ��� ������ � ID 106
INSERT INTO LineItems
VALUES (106,44,30.00,1);
GO

-- ������� ������� ���������
ALTER TABLE LineItems
ADD CONSTRAINT FK_LineItems_Products FOREIGN KEY (ProductID)
REFERENCES Products (ProductID);
GO

-- ������� � ������� LineItems ������ �������
INSERT INTO LineItems
VALUES (102,22,15.00,1);
GO

-- ������, ��� �������� � ID 66
INSERT INTO LineItems
VALUES (104,66,30.00,1);
GO