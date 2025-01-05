IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimDate')
BEGIN
    CREATE TABLE [dbo].[DimDate]
    (
        [DateID] [int] NOT NULL PRIMARY KEY,
        [FullDate] [date] NOT NULL,
        [Year] [int] NOT NULL,
        [Semester] [int] NOT NULL,
		[Trimester] [int] NOT NULL,
		[Quarter] [int] NOT NULL,
		[Month] [int] NOT NULL,
		[MonthName] [varchar](10) NOT NULL,
		[YearWeek] [int] NOT NULL,
		[MonthWeek] [int] NOT NULL,
		[WeekDay] [int] NOT NULL,
		[WeekDayName] [varchar](10) NOT NULL,
		[Day] [int] NOT NULL,
		[YearDay] [int] NOT NULL,
		[Weekend] [varchar](3) NOT NULL,
		[LastDayOfMonth] [varchar](3) NOT NULL,
		[Season] [varchar](10) NOT NULL
    )
END