CREATE OR ALTER PROC usp_GetTownsStartingWith 
 @townName VARCHAR(20)
 AS
 SELECT
 t.[Name] AS Town
 FROM Towns AS t
 WHERE t.Name LIKE @townName + '%'
 EXEC usp_GetTownsStartingWith @townName = 'd'
