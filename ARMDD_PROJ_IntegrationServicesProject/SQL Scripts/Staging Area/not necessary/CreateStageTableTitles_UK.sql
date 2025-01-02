IF NOT EXISTS (SELECT name FROM sys.tables WHERE name='Titles_UK')
	CREATE TABLE [dbo].[Titles_UK]
	(
		[TitleID] [int],
		[Title] [varchar](30),
		[CreateDate] [date],
		[LastUpdateDate] [date]
	)
ELSE
	TRUNCATE TABLE Titles_UK