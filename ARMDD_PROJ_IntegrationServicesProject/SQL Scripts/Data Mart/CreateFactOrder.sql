IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactOrder')
BEGIN
    CREATE TABLE [dbo].[FactOrder]
    (
        [orderID] INT NOT NULL,
        [orderDateKey] INT NOT NULL,
        [productKey] INT NOT NULL,
        [customerKey] INT NOT NULL,
        [employeeKey] INT NOT NULL,
        [shipDateKey] INT NULL,
        [requiredDatKey] INT NULL,
        [shipToKey] INT NULL,
        [currencyKey] INT NULL,
        [shipperKey] INT NULL,
        [sourceKey] INT NULL,
        [unitPrice] DECIMAL(19, 4)  NULL,
        [unitPriceUSD] DECIMAL(19, 4)  NULL,
        [quantity] SMALLINT  NULL,
        [discount] DECIMAL(19, 4) NULL,
        [discountUSD] DECIMAL(19, 4) NULL,
        [freight] DECIMAL(19, 4) NULL,
        [freightUSD] DECIMAL(19, 4) NULL,
        PRIMARY KEY (orderDateKey, productKey, customerKey, employeeKey)
    )

    CREATE NONCLUSTERED INDEX [NonClusteredIndex-FactOrder] ON [dbo].[FactOrder]
    (
        [orderDateKey] ASC,
        [productKey] ASC,
        [customerKey] ASC,
        [employeeKey] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END
