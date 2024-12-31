IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCustomer')
BEGIN
    CREATE TABLE [dbo].[DimCustomer]
    (
        [CustomerKey] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [CustomerID] [varchar](5) NOT NULL,
        [CompanyName] [varchar](40) NULL,
        [FullName] [varchar](30) NULL,
        [Title] [varchar](30) NULL,
        [Address] [varchar](60) NULL,
        [PostalCode] [varchar](10) NULL,
        [Country] [varchar](50) NULL,
        [CountryCode] [char](2) NULL,
        [Phone] [varchar](24) NULL,
        [Fax] [varchar](24) NULL,
        [City] [varchar](20) NULL,
        [RegionDescription] [char](50) NULL,
        [EffectiveDate] [date] NULL,
        [ExpirationDate] [date] NULL,
        [IsCurrent] [bit] NULL
    )

    CREATE NONCLUSTERED INDEX [NonClusteredIndex-DimCustomer] ON [dbo].[DimCustomer]
    (
        [CustomerID] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END
