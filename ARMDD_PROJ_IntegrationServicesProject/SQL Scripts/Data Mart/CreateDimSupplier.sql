IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimSupplier')
BEGIN
    CREATE TABLE [dbo].[DimSupplier]
    (
        [supplierKey] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [supplierID] INT NOT NULL,
        [supplierCompanyName] [varchar](50) NULL,
        [supplierContactName] [varchar](50) NULL,
        [supplierContactTitle] [varchar](50) NULL,
        [supplierAddress] [varchar](60) NULL,
        [supplierCity] [varchar](50) NULL,
        [supplierRegionDescription] [varchar](50) NULL,
        [supplierPostalCode] [varchar](50) NULL,
        [supplierCountryCode] [varchar](50) NULL,
        [supplierPhone] [varchar](50) NULL,
        [supplierFax] [varchar](50) NULL,
	    [EffectiveDate] [datetime] NULL,
        [ExpirationDate] [datetime] NULL,
        [IsCurrent] [nvarchar](3) NULL
    )

    CREATE NONCLUSTERED INDEX [NonClusteredIndex-DimSupplier] ON [dbo].[DimSupplier]
    (
        [supplierID] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END
