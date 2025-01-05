IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimSupplier')
BEGIN
    CREATE TABLE [dbo].[DimSupplier]
    (
        [supplierKey] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [supplierID] INT NOT NULL,
        [supplierCompanyName] VARCHAR(40) NULL,
        [supplierContactName] VARCHAR(30) NULL,
        [supplierContactTitle] VARCHAR(30) NULL,
        [supplierAddress] VARCHAR(60) NULL,
        [supplierCity] VARCHAR(20) NULL,
        [supplierRegionDescription] VARCHAR(50) NULL,
        [supplierPostalCode] VARCHAR(10) NULL,
        [supplierCountryCode] CHAR(2) NULL,
        [supplierPhone] VARCHAR(24) NULL,
        [supplierFax] VARCHAR(24) NULL,
        [effectiveDate] DATE NULL,
        [expirationDate] DATE NULL,
        [isCurrent] BIT NULL
    )

    CREATE NONCLUSTERED INDEX [NonClusteredIndex-DimSupplier] ON [dbo].[DimSupplier]
    (
        [supplierID] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END
