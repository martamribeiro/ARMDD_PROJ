IF NOT EXISTS (SELECT name FROM sys.tables WHERE name='ShipTo_UK')
	CREATE TABLE [dbo].[ShipTo_UK]
	(
		[ShipToID] [int],
		[ShipToName] [varchar](30),
		[ShipToAddress] [varchar](30),
		[ShipCityID] [int],
		[ShipRegionID] [int],
		[ShipPostalCode] [varchar](10),
		[ShipCountryCode] [char](2),
		[CreateDate] [date],
		[LastUpdateDate] [date]
	)
ELSE
	TRUNCATE TABLE ShipTo_UK