IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimShipper')
    BEGIN
    CREATE TABLE [dbo].[DimShipper]
    (
        [shipperKey] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
        [shipperID] INT NOT NULL, 
        [companyName] VARCHAR(40) NOT NULL, 
        [phone] VARCHAR(24) NULL, 
        [effectiveDate] DATETIME NOT NULL, 
        [expirationDate] DATETIME NULL, 
        [isCurrent] BIT NOT NULL 
    )

    CREATE NONCLUSTERED INDEX [NonClusteredIndex-DimShipper] ON [dbo].[DimShipper]
    (
    [shipperID] ASC
    ) WITH (
    PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    END
