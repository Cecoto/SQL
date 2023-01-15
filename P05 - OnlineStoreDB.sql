CREATE TABLE [Cities](
	[CityID] INT PRIMARY KEY IDENTITY NOT NULL,
	[Name] NVARCHAR(70) NOT NULL
)
CREATE TABLE Customers(
	[CustomerID] INT  PRIMARY KEY IDENTITY NOT NULL,
	[Name] NVARCHAR(70) NOT NULL,
	[Birthday] DATE NOT NULL,
	[CityID] INT FOREIGN KEY REFERENCES [Cities]([CityID]) NOT NULL
)
CREATE TABLE Orders(
	[OrderID] INT PRIMARY KEY IDENTITY NOT NULL,
	[CustomerID] INT FOREIGN KEY REFERENCES [Customers]([CustomerID]) NOT NULL
)
CREATE TABLE ItemTypes(
	[ItemTypeID] INT PRIMARY KEY IDENTITY NOT NULL,
	[Name] NVARCHAR(80) NOT NULL 
)
CREATE TABLE Items(
	[ItemID] INT PRIMARY KEY IDENTITY NOT NULL,
	[Name] NVARCHAR(70) NOT NULL,
	[ItemTypeID] INT FOREIGN KEY REFERENCES[ItemTypes]([ItemTypeID])
)
CREATE TABLE OrderItems(
	[OrderID] INT FOREIGN KEY REFERENCES [Orders]([OrderID]),
	[ItemID] INT FOREIGN KEY REFERENCES [Items]([ItemID]),
	PRIMARY KEY([OrderID],[ItemID])
)