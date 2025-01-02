IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimDate')
BEGIN
    CREATE TABLE [dbo].[DimDate]
    (
        [DateID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [FullDate] [date] NOT NULL,
        [Year] [int] NULL,
        [Semester] [int] NULL,
		[Quarter] [int] NULL,
		[FourMonths] [int] NULL,
		[Month] [int] NULL,
		[MonthName] [varchar](10) NULL,
		[Week] [int] NULL,
		[WeekNumberOfMonth] [int] NULL,
		[DayNumberOfYear] [int] NULL,
		[DayNumberOfMonth] [int] NULL,
		[DayNumberOfWeek] [int] NULL,
		[Weekday] [varchar](10) NULL,
		[Weekend] [bit] NULL,
		[LastDayOfMonth] [bit] NULL,
		[Season] [varchar](10) NULL
    )

    CREATE NONCLUSTERED INDEX [NonClusteredIndex-DimDate] ON [dbo].[DimDate]
    (
        [FullDate] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END
