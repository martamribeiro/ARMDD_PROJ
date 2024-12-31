IF NOT EXISTS (SELECT name FROM sys.tables WHERE name='Customers_UK')
	CREATE TABLE [dbo].[Customers_UK]
	(
		[CustomerID] [int],
		[CompanyName] [varchar](40),
		[ContactName] [varchar](30),
		[ContactTitleID] [int],
		[Address] [varchar](60),
		[CityID] [int],
		[RegionID] [int],
		[PostalCode] [varchar](10),
		[CountryCode] [char](2),
		[Phone] [varchar](24),
		[Fax] [varchar](24),
		[CreateDate] [date],
		[LastUpdateDate] [date]
	)
ELSE
	TRUNCATE TABLE Customers_UK