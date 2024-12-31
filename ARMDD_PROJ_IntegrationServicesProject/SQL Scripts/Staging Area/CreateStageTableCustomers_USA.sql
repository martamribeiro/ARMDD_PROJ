IF NOT EXISTS (SELECT name FROM sys.tables WHERE name='Customers_USA')
	CREATE TABLE [dbo].[Customers_USA]
	(
		[CustomerID] [varchar](10),
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
	TRUNCATE TABLE Customers_USA