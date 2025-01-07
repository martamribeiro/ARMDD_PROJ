IF NOT EXISTS (SELECT name FROM sys.tables WHERE name='Suppliers_USA')
	CREATE TABLE [dbo].[Suppliers_USA]
	(
		[SupplierID] [int],
		[CompanyName] [varchar](50),
		[ContactName] [varchar](50),
		[ContactTitle] [varchar](50),
		[Address] [varchar](50),
		[City] [varchar](50),
		[RegionID] [int],
		[PostalCode] [varchar](50),
		[Country] [varchar](50),
		[Phone] [varchar](50),
		[Fax] [varchar](50)
	)
ELSE
	TRUNCATE TABLE Suppliers_USA