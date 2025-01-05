IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCurrency')
BEGIN
    CREATE TABLE [dbo].[DimCurrency]
    (
        [CurrencyKey] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [CurrencyCode] [int] NOT NULL,
        [CurrencyName] [varchar](20) NOT NULL,
        [RateToUSD] DECIMAL(19, 4) NOT NULL,
        [symbol] [varchar](10) NOT NULL
    )

    CREATE NONCLUSTERED INDEX [NonClusteredIndex-DimCurrency] ON [dbo].[DimCurrency]
    (
        [CurrencyCode] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END
