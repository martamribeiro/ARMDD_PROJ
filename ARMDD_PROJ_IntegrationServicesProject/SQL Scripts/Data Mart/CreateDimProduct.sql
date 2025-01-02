IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimProduct')
BEGIN
    CREATE TABLE [dbo].[DimProduct]
    (
        [productKey] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [productID] INT NOT NULL,
        [productName] VARCHAR(40) NOT NULL,
        [categoryName] VARCHAR(15) NOT NULL,
        [categoryDescription] VARCHAR(255) NULL,
        [quantityPerUnit] VARCHAR(20) NULL,
        [unitPriceUSD] DECIMAL(19, 4) NULL,
        [unitPriceLB] DECIMAL(19, 4) NULL,
        [unitsInStock] SMALLINT NULL,
        [unitsOnOrder] SMALLINT NULL,
        [reorderLevel] SMALLINT NULL,
        [discontinued] BIT NULL,
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

    CREATE NONCLUSTERED INDEX [NonClusteredIndex-DimProduct] ON [dbo].[DimProduct]
    (
        [productID] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END
