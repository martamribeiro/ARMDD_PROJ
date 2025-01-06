IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimEmployee')
BEGIN
    CREATE TABLE [dbo].[DimEmployee]
    (
        [EmployeeKey] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [EmployeeID] [int] NOT NULL,
        [FullName] [varchar](30) NULL,
        [Title] [varchar](30) NULL,
        [TitleOfCourtesy] [varchar](25) NULL,
        [BirthDateKey] [int] NULL,
		[HireDateKey] [int] NULL,
		[Address] [varchar](60) NULL,
        [PostalCode] [varchar](10) NULL,
        [HomePhone] [varchar](24) NULL,
		[Extension] [varchar](4) NULL,
        [City] [varchar](20) NULL,
        [RegionDescription] [char](50) NULL,
		[ReportsToKey] [int] NULL,
		[EffectiveDate] [datetime] NULL,
        [ExpirationDate] [datetime] NULL,
        [IsCurrent] [bit] NULL
    )

    CREATE NONCLUSTERED INDEX [NonClusteredIndex-DimEmployee] ON [dbo].[DimEmployee]
    (
        [EmployeeID] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END
