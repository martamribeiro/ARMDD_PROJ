IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimShipTo')
BEGIN
    CREATE TABLE [dbo].[DimShipTo]
    (
        [ShipToKey] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [ShipToID] [int] NOT NULL,
        [ShipToName] [varchar](30) NULL,
        [ShipToAddress] [varchar](30) NULL,
        [ShipCity] [varchar](20) NULL,
        [ShipRegionDescription] [char](50) NULL,
		[ShipPostalCode] [varchar](10) NULL,
		[ShipCountryCode] [char](2) NULL,
		[ShipCountry] [varchar](50) NULL,
        [EffectiveDate] [date] NULL,
        [ExpirationDate] [date] NULL,
        [IsCurrent] [bit] NULL
    )

    CREATE NONCLUSTERED INDEX [NonClusteredIndex-DimShipTo] ON [dbo].[DimShipTo]
    (
        [ShipToID] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END
