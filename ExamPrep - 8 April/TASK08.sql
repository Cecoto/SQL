SELECT 
u.Username,
c.[Name] AS CategoryName
FROM REPORTS AS r
JOIN Users AS u ON r.UserId = u.Id
JOIN Categories AS c ON r.CategoryId = c.Id
WHERE DATEPART(DAY,u.Birthdate) = DATEPART(DAY,r.OpenDate)
ORDER BY u.Username, CategoryName