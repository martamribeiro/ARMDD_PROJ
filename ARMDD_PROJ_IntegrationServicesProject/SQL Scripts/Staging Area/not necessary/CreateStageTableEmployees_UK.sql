IF NOT EXISTS (SELECT name FROM sys.tables WHERE name='Employees_UK')
	CREATE TABLE [dbo].[Employees_UK]
	(
		[EmployeeID] [int],
		[LastName] [varchar](20),
		[FirstName] [varchar](10),
		[TitleID] [int],
		[TitleOfCourtesy] [varchar](25),
		[BirthDate] [date],
		[HireDate] [date],
		[Address] [varchar](60),
		[CityID] [int],
		[RegionID] [int],
		[PostalCode] [varchar](10),
		[HomePhone] [varchar](24),
		[Extension] [varchar](4),
		[Photo] [varbinary](max),
		[Notes] [text],
		[ReportsTo] [int],
		[PhotoPath] [varchar](255),
		[CreateDate] [date],
		[LastUpdateDate] [date]
	)
ELSE
	TRUNCATE TABLE Employees_UK