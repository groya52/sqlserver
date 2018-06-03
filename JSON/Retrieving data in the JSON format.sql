SELECT ProductID
      ,Name
FROM   Production.Product
ORDER  BY Name FOR JSON AUTO;

GO

SELECT ProductID
      ,Name
FROM   Production.Product
ORDER  BY Name FOR JSON PATH;

GO

-- ���������� ��������� ����.
SELECT ProductID
      ,Name
FROM   Production.Product
ORDER  BY Name FOR JSON PATH, ROOT('Products');

GO

-- ��������� �������� (SellStartDate, SellEndDate) ������ �������� SellDate.
SELECT ProductID
      ,Name
	  ,SellStartDate AS 'SellDate.DateStart'
	  ,SellEndDate AS 'SellDate.DateEnd'
FROM   Production.Product
ORDER  BY Name FOR JSON PATH;

GO

-- ��������� ������� ��������.
SELECT ProductID
      ,Name
	  ,SellStartDate AS 'SellDate.DateStart'
	  ,SellEndDate AS 'SellDate.DateEnd'
FROM   Production.Product
ORDER  BY Name FOR JSON PATH, INCLUDE_NULL_VALUES;

GO

-- ������������� ��� ��������� ������.
SELECT ProductID
      ,Name
FROM   Production.Product
WHERE  ProductID = 1
ORDER  BY Name FOR JSON PATH, WITHOUT_ARRAY_WRAPPER;

GO
