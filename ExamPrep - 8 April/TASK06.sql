SELECT
r.[Description],
c.[Name] AS CategoryName
FROM Reports AS r
JOIN Categories AS c ON r.CategoryId = c.Id
ORDER BY R.[Description],c.[Name]