CREATE FUNCTION udf_AllUserCommits(@username VARCHAR(100))
	RETURNS INT
	AS
	BEGIN
	DECLARE @result INT
	SET @result = (
	SELECT 
	COUNT(*)
	FROM Users AS u
	JOIN Commits AS c ON u.Id = c.ContributorId
	WHERE u.Username = @username)
	RETURN @result
	END

	SELECT dbo.udf_AllUserCommits('UnderSinduxrein')

