CREATE FUNCTION udf_GetTouristsCountOnATouristSite (@Site VARCHAR(100))
	RETURNS INT
	AS
	BEGIN
	DECLARE @result INT
	
	SET @result = 
	(SELECT COUNT(*)
	FROM Tourists AS t
	JOIN SitesTourists AS st ON T.Id = st.TouristId
	JOIN Sites AS s ON st.SiteId = s.Id
	WHERE s.[Name] = @Site
	)
	RETURN @result
	END

	SELECT dbo.udf_GetTouristsCountOnATouristSite ('Regional History Museum – Vratsa')
