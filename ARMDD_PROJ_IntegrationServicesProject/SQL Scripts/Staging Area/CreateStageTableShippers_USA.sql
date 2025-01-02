IF NOT EXISTS (SELECT name FROM sys.tables WHERE name='Shippers_USA')
	CREATE TABLE [dbo].[Shippers_USA]
	(
		[ShipperID] [int],
		[CompanyName] [varchar](50),
		[Phone] [varchar](50)
	)
ELSE
	TRUNCATE TABLE Shippers_USA