IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCustomer')
BEGIN
    CREATE TABLE [dbo].[DimCustomer]
    (
        [CustomerKey] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [CustomerID] [varchar](10) NOT NULL,
        [CompanyName] [varchar](50) NULL,
        [FullName] [varchar](50) NULL,
        [Title] [varchar](50) NULL,
        [Address] [varchar](60) NULL,
        [PostalCode] [varchar](50) NULL,
        [Country] [varchar](50) NULL,
        [CountryCode] [char](2) NULL,
        [Phone] [varchar](50) NULL,
        [Fax] [varchar](50) NULL,
        [City] [varchar](50) NULL,
        [RegionDescription] [varchar](50) NULL,
        [EffectiveDate] [datetime] NULL,
        [ExpirationDate] [datetime] NULL,
        [IsCurrent] [bit] NULL
    )

    CREATE NONCLUSTERED INDEX [NonClusteredIndex-DimCustomer] ON [dbo].[DimCustomer]
    (
        [CustomerID] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END
