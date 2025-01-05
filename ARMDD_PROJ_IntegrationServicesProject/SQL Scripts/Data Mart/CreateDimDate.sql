IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimDate')	
	CREATE TABLE [dbo].[DimDate](
		[DateKey] [int] IDENTITY(1,1) NOT NULL,
		[FullDate] [datetime] NOT NULL,
		[Year] [int] NOT NULL,
		[Semester] [tinyint] NOT NULL,
		[Trimester] [tinyint] NOT NULL,
		[Quarter] [tinyint] NOT NULL,
		[Month] [tinyint] NOT NULL,
		[MonthName] [varchar](10) NOT NULL,
		[YearWeek] [tinyint] NOT NULL,
		[MonthWeek] [tinyint] NOT NULL,
		[WeekDay] [tinyint] NOT NULL,
		[WeekDayName] [varchar](10) NOT NULL,
		[Day] [tinyint] NOT NULL,
		[YearDay] [int] NOT NULL,
		[Weekend] [varchar](3) NOT NULL,
		[LastDayOfMonth] [varchar](3) NOT NULL,
		[Season] [varchar](10) NOT NULL
		
	 CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
	(
		[DateKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]
