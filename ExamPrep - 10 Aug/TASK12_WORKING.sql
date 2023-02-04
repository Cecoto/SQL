CREATEPROC usp_AnnualRewardLottery(@TouristName VARCHAR(100))
	AS
	DECLARE @countSites INT
		SET @countSites=
		(SELECT COUNT(*)
		FROM Tourists AS t
		JOIN SitesTourists AS st ON t.Id=st.TouristId
		JOIN Sites AS s ON st.SiteId = s.Id
		WHERE t.[Name] = @TouristName);
	SELECT 
	[Name],
	CASE
		WHEN @countSites >=25 AND @countSites<50 THEN 'Bronze badge'
		WHEN @countSites >=50 AND @countSites<100 THEN 'Silver badge'
		WHEN @countSites >=100 THEN 'Gold badge'
	END
	FROM Tourists
	WHERE [Name]=@TouristName


	
	--
	EXEC usp_AnnualRewardLottery 'Gerhild Lutgard'
	EXEC usp_AnnualRewardLottery 'Teodor Petrov'
	EXEC usp_AnnualRewardLottery 'Zac Walsh'
	EXEC usp_AnnualRewardLottery 'Brus Brown'



