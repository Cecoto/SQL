SELECT 
CONCAT(e.FirstName,' ',e.LastName) AS Employee,
d.[Name] AS Department,
c.[Name] AS Category,
r.[Description],
FORMAT(R.OpenDate,'dd.MM.yyyy') AS OpenDate,
s.[Label] AS [Status],
u.[Name] AS [User]
FROM Reports AS r
JOIN Employees AS e ON r.EmployeeId = e.Id
JOIN Categories AS c ON r.CategoryId = c.Id
JOIN Users AS u ON r.UserId = u.Id
JOIN [Status] AS s ON r.StatusId = s.Id
JOIN Departments AS d ON e.DepartmentId = d.Id
ORDER BY E.FirstName DESC,e.LastName DESC,
d.[Name]ASC,c.[Name],r.[Description] ASC,OpenDate ASC,[Status] ASC,u.[Name]

