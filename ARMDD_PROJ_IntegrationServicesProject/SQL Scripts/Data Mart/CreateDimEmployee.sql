IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimEmployee')
BEGIN
    CREATE TABLE [dbo].[DimEmployee]
    (
        [EmployeeKey] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [EmployeeID] [int] NOT NULL,
        [FullName] [varchar](50) NULL,
        [Title] [varchar](50) NULL,
        [TitleOfCourtesy] [varchar](25) NULL,
        [BirthDateKey] [int] NULL,
		[HireDateKey] [int] NULL,
		[Address] [varchar](60) NULL,
        [PostalCode] [varchar](50) NULL,
        [HomePhone] [varchar](50) NULL,
		[Extension] [varchar](4) NULL,
        [City] [varchar](50) NULL,
        [RegionDescription] [varchar](50) NULL,
		[ReportsToKey] [int] NULL,
		[EffectiveDate] [datetime] NULL,
        [ExpirationDate] [datetime] NULL,
        [IsCurrent] [varchar](3) NULL
    )

    CREATE NONCLUSTERED INDEX [NonClusteredIndex-DimEmployee] ON [dbo].[DimEmployee]
    (
        [EmployeeID] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END
