--CREATING TABLE PEOPLE FOR PROBLEM 07 --
CREATE TABLE [People](
	[Id] INT PRIMARY KEY IDENTITY(1,1),
	[Name] NVARCHAR(200) NOT NULL,
	[Picture] VARBINARY(MAX),
	CHECK  (DATALENGTH([Picture]) <= 2000000),
	[Height] DECIMAL(3,2),
	[Weight] DECIMAL(5,2),
	[Gender] CHAR(1) NOT NULL,
	CHECK ([Gender] = 'm' OR [Gender] = 'f'),
	[Birthdate] DATE NOT NULL,
	[Biography] NVARCHAR(MAX)
)
INSERT INTO [People]([Name],[Height],[Weight],[Gender],[Birthdate])
	VALUES
	('Pesho',1.77,76.2,'m','1997-12-12'),
	('Gosho',NULL,NULL,'m','1997-12-15'),
	('Maria',1.77,76.2,'f','1997-01-12'),
	('Ivanka',NULL,50.50,'f','1997-05-12'),
	('Peshkata',1.70,NULL,'m','1997-06-12')

SELECT * FROM [People]