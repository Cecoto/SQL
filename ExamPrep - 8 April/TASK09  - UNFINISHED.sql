SELECT
CONCAT(e.FirstName,' ', e.LastName) AS FullName,
COUNT(*) AS UsersCount
FROM Reports AS r
LEFT JOIN Employees  AS e ON R.EmployeeId = e.Id
RIGHT JOIN Users AS u ON r.UserId = u.Id
GROUP BY E.FirstName,e.LastName

