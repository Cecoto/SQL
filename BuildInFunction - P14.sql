SELECT 
	[Name],
	CAST([Start] as date) AS Start
FROM Games
WHERE DATEPART(YEAR,[Start])= 2011 OR DATEPART(YEAR,[Start])= 2012
ORDER BY [Start],[Name]