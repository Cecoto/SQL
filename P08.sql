CREATE TABLE [Users](
	[Id] INT PRIMARY KEY IDENTITY,
	[Username] VARCHAR(30)NOT NULL,
	[Password] VARCHAR(26) NOT NULL,
	[ProfilePicture] VARBINARY(MAX),
	CHECK(DATALENGTH([ProfilePicture]) <= 900000),
	[LastLoginTime] TIME,
	[IsDeleted] VARCHAR(5) NOT NULL
	CHECK([IsDeleted] = 'true'	OR [IsDeleted] = 'false')
)
ALTER TABLE [Users]
ALTER COLUMN[IsDeleted] VARCHAR(5)
INSERT INTO [Users] ([Username],[Password],[LastLoginTime])
	VALUES
	('Ivan',123456,'12:15:55'),
	('Stefan',1236,'12:15:55'),
	('Hristo',1123,'12:15:55'),
	('Dimitar',6656754,'12:15:55'),
	('Sasho',123456,'12:15:55')
	
