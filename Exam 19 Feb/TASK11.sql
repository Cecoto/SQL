CREATE FUNCTION udf_CreatorWithBoardgames(@name NVARCHAR(200))
	RETURNS INT
	AS
	BEGIN
	DECLARE @result INT

	SET @result = (
	SELECT
	COUNT(*)
	FROM Creators AS c
	JOIN CreatorsBoardgames AS cb ON c.id= cb.CreatorId
	WHERE c.FirstName = @name)

	RETURN @result
	END

	
