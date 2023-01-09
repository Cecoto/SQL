

CREATE TABLE [Categories](
	[Id] INT PRIMARY KEY IDENTITY,
	[CategoryName] NVARCHAR(50) NOT NULL,
	[DailyRate] DECIMAL(3,2),
	[WeeklyRate] DECIMAL(3,2),
	[MonthlyRate] DECIMAL(3,2) NOT NULL,
	[WeekendRate]DECIMAL(3,2)
)
CREATE TABLE[Cars](
	[Id] INT PRIMARY KEY IDENTITY,
	[PlateNumber] SMALLINT NOT NULL,
	[Manufacturer] NVARCHAR(40) NOT NULL,
	[Model] NVARCHAR(50) NOT NULL,
	[CarYear] INT NOT NULL,
	[CategoryId] INT NOT NULL,
	[Doors] SMALLINT,
	[Picture] VARBINARY(900),
	CHECK(DATALENGTH([Picture]) <= 900000),
	[Condition] NVARCHAR(40),
	[Available] VARCHAR(5) NOT NULL,
	CHECK([Available]='true' OR [Available]='false')
)
CREATE TABLE[Employees](
	[Id] INT PRIMARY KEY IDENTITY,
	[FirstName] NVARCHAR(40) NOT NULL,
	[LastName] NVARCHAR(40) NOT NULL,
	[Title] NVARCHAR(30) NOT NULL,
	[Notes] NVARCHAR(50)
)
CREATE TABLE[Customers](
	[Id] INT PRIMARY KEY IDENTITY,
	[DriverLicenceNumber] int,
	[FullName] NVARCHAR(50) NOT NULL,
	[Adress] NVARCHAR(100),
	[City] NVARCHAR(30) NOT NULL,
	[ZIPCode] INT,
	[Notes] NVARCHAR(60)
)
CREATE TABLE[RentalOrders](
	[Id] INT PRIMARY KEY IDENTITY,
	[EmplyeeId] INT NOT NULL,
	[CustomerId] INT NOT NULL,
	[CarId] INT NOT NULL,
	[TankLevel] DECIMAL(3,1)NOT NULL,
	[KilometrageStart] INT,
	[KilometrageEnd] INT,
	[TotalKilometrage] INT NOT NULL,
	[StartDate] DATE,
	[EndDate] DATE,
	[TotalDays] INT NOT NULL,
	[RateApplied] DECIMAL(3,2),
	[TaxRate] DECIMAL(3,2),
	[OrderStatus] NVARCHAR(30) NOT NULL,
	CHECK([OrderStatus] = 'Ordered' OR [OrderStatus]='Not ordered'),
	[Notes] NVARCHAR(50)
	)

ALTER TABLE [Cars]
ALTER COLUMN [PlateNumber] INT NOT NULL

INSERT INTO [Categories]([CategoryName],[MonthlyRate])
	VALUES
('SPORT',4.50),
('ADVENTURE',9.45),
('DAILY',5.76)

INSERT INTO [Cars]([PlateNumber],[Manufacturer],[Model],[CarYear],[CategoryId],[Available])
	VALUES
(12346678,'FORD','FIESTA',1999,3,'true'),
(11213123,'Ferrari','911',2009,1,'true'),
(12367433,'BMW','330i',2020,1,'false')

INSERT INTO [Employees]([FirstName],[LastName],[Title])
	VALUES
('Ivan','Ivanov','Administartor'),
('Hristo','Hristov','Security'),
('Stefka', 'Dobreva', 'QA')

INSERT INTO [Customers]([FullName],[City])
	VALUES
('Peshakta','Kubrat'),
('Dimitrichko','Sofia'),
('Stefcho','Kalofer')

INSERT INTO [RentalOrders]([EmplyeeId],[CustomerId],[CarId],[TankLevel],[TotalKilometrage],[TotalDays],[OrderStatus])
	VALUES
(1,2,3,55.5,10000,56,'Not ordered'),
(2,3,1,55.5,30123,100,'Not ordered'),
(3,1,2,55.5,5000,76,'Ordered')
		