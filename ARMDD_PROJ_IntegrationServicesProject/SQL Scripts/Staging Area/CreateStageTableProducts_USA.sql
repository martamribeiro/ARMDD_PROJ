IF NOT EXISTS (SELECT name FROM sys.tables WHERE name='Products_USA')
	CREATE TABLE [dbo].[Products_USA]
	(
		[ProductID] [int],
		[ProductName] [varchar](50),
		[SupplierID] [int],
		[CategoryID] [int],
		[QuantityPerUnit] [varchar](50),
		[UnitPrice] [varchar](50),
		[UnitsInStock] [varchar](50),
		[UnitsOnOrder] [varchar](50),
		[ReorderLevel] [varchar](50),
		[Discontinued] [varchar](50)
	)
ELSE
	TRUNCATE TABLE Products_USA