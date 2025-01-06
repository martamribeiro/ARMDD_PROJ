IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'CountryCodes')
	CREATE TABLE [dbo].[CountryCodes]
	(
		[CountryName] [varchar](50),
		[CountryCode] [nchar](2)
	)
ELSE
	TRUNCATE TABLE CountryCodes