CREATE FUNCTION udf_FlightDestinationsByEmail(@email VARCHAR(100))
	RETURNS INT 
	AS
	BEGIN
	DECLARE @result INT 
	SET @result = 
	(SELECT
	COUNT(*)
	FROM FlightDestinations AS fd
	JOIN Passengers AS p ON fd.PassengerId = p.Id
	WHERE @email = p.Email)
	RETURN @result
	END 

	SELECT dbo.udf_FlightDestinationsByEmail ('PierretteDunmuir@gmail.com')
	SELECT dbo.udf_FlightDestinationsByEmail('Montacute@gmail.com')
