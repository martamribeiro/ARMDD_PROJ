IF NOT EXISTS (SELECT name FROM sys.tables WHERE name='OrderDetails_USA')
	CREATE TABLE [dbo].[OrderDetails_USA]
	(
		[OrderID] [int],
		[ProductID] [int],
		[UnitPrice] [varchar](50),
		[Quantity] [int],
		[Discount] [varchar](50)
	)
ELSE
	TRUNCATE TABLE OrderDetails_USA