CREATE FUNCTION udf_HoursToComplete(@StartDate DATETIME, @EndDate DATETIME)
	RETURNS INT
	AS
	BEGIN
	DECLARE @result INT
	IF(@StartDate IS NULL OR @EndDate IS NULL)
		RETURN 0
		SET @result = 
		DATEDIFF(HOUR,@StartDate,@EndDate)
		RETURN @result
	END

	SELECT dbo.udf_HoursToComplete(OpenDate, CloseDate) AS TotalHours
   FROM Reports
