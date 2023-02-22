SELECT 
c.[Name],
d.[Name],
COUNT(*)
FROM Countries AS c
JOIN Distributors AS d ON c.Id = d.CountryId
JOIN Ingredients AS i ON i.DistributorId = d.Id
GROUP BY d.[Name],c.[Name]
ORDER BY c.[Name],d.[Name]
