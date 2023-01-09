CREATE DATABASE Movies
CREATE TABLE [Directors](
	[Id] INT PRIMARY KEY IDENTITY,
	[DirectorName] NVARCHAR(50) NOT NULL,
	[Notes] NVARCHAR(200)
)
CREATE TABLE [Genres](
	[Id] INT PRIMARY KEY IDENTITY,
	[GenreName] NVARCHAR(50) NOT NULL,
	[Notes] NVARCHAR(150)
)
CREATE TABLE [Categories](
	[Id] INT PRIMARY KEY IDENTITY,
	[CategoryName] NVARCHAR(50) NOT NULL,
	[Notes] NVARCHAR(70)
)
CREATE TABLE [Movies](
	[Id] INT PRIMARY KEY IDENTITY,
	[Title] NVARCHAR(50) NOT NULL,
	[DirectorId] INT NOT NULL,
	[CopyrightYear] INT,
	[Length]TIME,
	[GenreId] INT NOT NULL,
	[CategoryId] INT NOT NULL,
	[Rating] DECIMAL(3,2),
	[Notes] NVARCHAR(200)
)
INSERT INTO [Directors]([DirectorName])
	VALUES
('PETER'),
('IVAN'),
('GEORGE'),
('BRAD'),
('TOM')

INSERT INTO [Genres]([GenreName])
	VALUES
('Comedy'),
('Horror'),
('Sky-fi'),
('Fantasy'),
('Documentary')
INSERT INTO [Categories]([CategoryName])
	VALUES
('SPORT'),
('SCIENCE'),
('NATURE'),
('EXTREME'),
('HISTORY')
INSERT INTO [Movies]([Title],[DirectorId],[GenreId],[CategoryId],[Rating])
	VALUES
('STAR-WARS',3,4,2,4.5),
('STAR',3,4,2,5.0),
('IT',1,1,4,2.0),
('FISHER',5,5,4,5.5),
('EUROSPORT',3,5,1,1.6)

