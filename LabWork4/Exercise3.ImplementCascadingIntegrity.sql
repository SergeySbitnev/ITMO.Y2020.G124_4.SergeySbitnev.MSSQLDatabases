USE OrdersDatabase;
GO

-- ������ ���������� ������� ��-�� ����������� �������� �����
DELETE Customers
WHERE CustomerID = 2;
GO

ALTER TABLE CustomerDetails
DROP CONSTRAINT FK_CustomerDetails_Customers;
GO
ALTER TABLE CustomerDetails
ADD CONSTRAINT FK_CustomerDetails_Customers FOREIGN KEY (CustomerID)
REFERENCES Customers (CustomerID) ON DELETE CASCADE;
GO

-- ������ ���������� ������� ��-�� ����������� �������� ����� � ������� Orders
DELETE Customers
WHERE CustomerID = 2;
GO

ALTER TABLE Orders
ADD CONSTRAINT DEF_CustomerID 
DEFAULT 0 FOR CustomerID;
GO

INSERT INTO Customers
VALUES(0, 'Not Applicable', 'Not Applicable');
GO

ALTER TABLE Orders
DROP CONSTRAINT FK_Orders_Customers;
GO
ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerID)
REFERENCES Customers (CustomerID) ON DELETE SET DEFAULT;
GO

-- ����� ������� Orders, ������ ������� � ID 2 ���������� �� 0
SELECT * FROM Orders;
GO

-- ����� ������� CustomerDetails, ������ � ID 2 ��������
SELECT * FROM CustomerDetails;
GO