-- TASK 11

CREATE FUNCTION udf_ClientWithCigars(@name NVARCHAR(70))
RETURNS INT
AS
BEGIN
DECLARE @result INT
	SET @result = 
	(SELECT
		COUNT(*)
	FROM ClientsCigars
	WHERE ClientId IN(SELECT Id FROM Clients WHERE FirstName=@name))
RETURN @result
END

SELECT dbo.udf_ClientWithCigars('Betty')
