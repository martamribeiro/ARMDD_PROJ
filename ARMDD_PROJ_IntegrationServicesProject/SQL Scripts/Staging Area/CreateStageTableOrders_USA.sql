IF NOT EXISTS (SELECT name FROM sys.tables WHERE name='Orders_USA')
	CREATE TABLE [dbo].[Orders_USA]
	(
		[OrderID] [int],
		[CustomerID] [varchar](50) null,
		[EmployeeID] [varchar](50) null,
		[OrderDate] [varchar](50) null,
		[RequiredDate] [varchar](50) null,
		[ShippedDate] [varchar](50) null,
		[ShipperID] [int] null,
		[Freight] [varchar](50) null,
		[ShipName] [varchar](50) null,
		[ShipAddress] [varchar](50) null,
		[ShipCity] [varchar](50) null,
		[ShipRegion] [varchar](50) null,
		[ShipPostalCode] [varchar](50) null,
		[ShipCountry] [varchar](50) null
	)
ELSE
	TRUNCATE TABLE Orders_USA