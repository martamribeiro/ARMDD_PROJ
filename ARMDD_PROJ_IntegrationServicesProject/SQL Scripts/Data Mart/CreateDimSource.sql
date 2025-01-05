IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimSource')
BEGIN
    CREATE TABLE [dbo].[DimSource]
    (
        [SourceKey] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [SourceCode] [varchar](20) NOT NULL
    )

    CREATE NONCLUSTERED INDEX [NonClusteredIndex-DimSource] ON [dbo].[DimSource]
    (
        [SourceKey] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END
