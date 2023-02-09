SELECT 
r.[Description],
FORMAT(r.OpenDate,'dd-MM-yyyy')  AS OpenDate
FROM Reports as r
WHERE EmployeeId IS NULL
ORDER BY r.OpenDate,r.[Description] 