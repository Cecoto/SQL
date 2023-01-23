SELECT
e.EmployeeID,
e.FirstName,
m.EmployeeID,
m.[FirstName] AS ManagerName
FROM Employees AS e
LEFT JOIN Employees AS m ON e.ManagerID = m.EmployeeID
WHERE e.ManagerID IS NOT NULL AND m.EmployeeID = 3 OR  m.EmployeeID = 7
ORDER BY e.EmployeeID