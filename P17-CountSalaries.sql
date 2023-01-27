SELECT
COUNT(*) as [Count]
FROM Employees AS e
LEFT JOIN Employees AS m ON e.ManagerID=m.EmployeeID
WHERE e.ManagerID IS NULL
