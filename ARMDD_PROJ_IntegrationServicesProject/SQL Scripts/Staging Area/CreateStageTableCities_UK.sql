IF NOT EXISTS (SELECT name FROM sys.tables WHERE name='Cities_UK')
	CREATE TABLE [dbo].[Cities_UK]
	(
		[CityID] [int],
		[CityName] [varchar](20),
		[CreateDate] [date],
		[LastUpdateDate] [date]
	)
ELSE
	TRUNCATE TABLE Cities_UK