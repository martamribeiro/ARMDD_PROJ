IF NOT EXISTS (SELECT name FROM sys.tables WHERE name='Employees_USA')
	CREATE TABLE [dbo].[Employees_USA]
	(
		[EmployeeID] [int],
		[Name] [varchar](50),
		[Title] [varchar](50),
		[BirthDate] [date],
		[HireDate] [date],
		[Address] [varchar](50),
		[City] [varchar](50),
		[RegionID] [int],
		[PostalCode] [varchar](50),
		[HomePhone] [varchar](50),
		[Extension] [int],
		[Obs] [varchar](255),
		[ReportsTo] [int]
	)
ELSE
	TRUNCATE TABLE Employees_USA