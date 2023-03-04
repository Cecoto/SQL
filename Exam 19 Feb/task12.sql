CREATE PROC usp_SearchByCategory(@category NVARCHAR(200))
	AS
SELECT
b.[Name],
b.YearPublished,
b.Rating,
c.[Name] AS CategoryName,
p.[Name] AS PublisherName,
CONCAT(pr.PlayersMin,' people') AS MinPlayers,
CONCAT(pr.PlayersMax,' people') AS MaxPlayers
FROM Boardgames AS b 
JOIN Categories AS c ON b.CategoryId = C.Id
JOIN PlayersRanges AS pr ON b.PlayersRangeId = pr.Id
JOIN Publishers AS p ON b.PublisherId = p.Id
WHERE c.[Name] = @category
ORDER BY PublisherName ASC,b.YearPublished DESC

EXEC usp_SearchByCategory 'Wargames'

