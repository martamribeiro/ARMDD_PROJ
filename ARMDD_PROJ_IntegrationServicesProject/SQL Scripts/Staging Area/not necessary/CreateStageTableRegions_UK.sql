IF NOT EXISTS (SELECT name FROM sys.tables WHERE name='Regions_UK')
	CREATE TABLE [dbo].[Regions_UK]
	(
		[RegionID] [int],
		[RegionDescription] [char](50),
		[CreateDate] [date],
		[LastUpdateDate] [date]
	)
ELSE
	TRUNCATE TABLE Regions_UK