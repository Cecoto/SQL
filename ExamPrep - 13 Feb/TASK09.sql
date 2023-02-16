SELECT
r.Id,
r.[Name],
COUNT(*) AS Commits
FROM Commits AS c
JOIN Repositories AS r ON c.RepositoryId = r.Id
JOIN Files AS f ON c.Id = f.CommitId
GROUP BY r.[Name],r.Id 
ORDER BY COUNT(*) DESC,r.id ,r.[Name]