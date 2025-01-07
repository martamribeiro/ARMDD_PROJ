IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimProduct')
BEGIN
    CREATE TABLE [dbo].[DimProduct]
    (
        [productKey] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [productID] INT NOT NULL,
        [productName] [varchar](50) NULL,
        [categoryName] [varchar](100) NULL,
        [categoryDescription] [varchar](255) NULL,
        [quantityPerUnit] [varchar](50) NULL,
        [unitPrice_UK] DECIMAL(19, 4) NULL,
        [unitPrice_USA] DECIMAL(19, 4) NULL,
        [unitsInStock_UK] INT NULL,
        [unitsInStock_USA] INT NULL,
        [unitsOnOrder] SMALLINT NULL,
        [reorderLevel] SMALLINT NULL,
        [discontinued] BIT NULL,
        [supplierKey] INT NULL,
        [effectiveDate] DATETIME NULL,
        [expirationDate] DATETIME NULL,
        [isCurrent] [nvarchar](3) NULL
    )

    CREATE NONCLUSTERED INDEX [NonClusteredIndex-DimProduct] ON [dbo].[DimProduct]
    (
        [productID] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END
