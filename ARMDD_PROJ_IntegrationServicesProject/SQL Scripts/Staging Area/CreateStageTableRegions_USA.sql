IF NOT EXISTS (SELECT name FROM sys.tables WHERE name='Regions_USA')
	CREATE TABLE [dbo].[Regions_USA]
	(
		[RegionID] [int],
		[RegionDescription] [varchar](50)
	)
ELSE
	TRUNCATE TABLE Regions_USA