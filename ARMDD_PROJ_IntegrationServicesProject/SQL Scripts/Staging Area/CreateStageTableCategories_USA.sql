IF NOT EXISTS (SELECT name FROM sys.tables WHERE name='Categories_USA')
	CREATE TABLE [dbo].[Categories_USA]
	(
		[CategoryID] [int],
		[CategoryName] [varchar](100),
		[Description] [varchar](100)
	)
ELSE
	TRUNCATE TABLE Categories_USA
