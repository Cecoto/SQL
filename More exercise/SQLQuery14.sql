CREATE FUNCTION udf_ClientWithCigars(@name NVARCHAR(200))
	RETURNS INT
	AS
	BEGIN 
	DECLARE @result INT
	SET @result = 
	(SELECT
	COUNT(*)
	FROM Clients AS c
	JOIN ClientsCigars AS cg ON c.Id = cg.ClientId
	WHERE c.FirstName = @name)

	RETURN @result
	END
	
