SELECT
d.DepartmentID,
SUM(e.Salary) AS TotalSalary
FROM Departments AS d
JOIN Employees AS e ON d.DepartmentID = e.DepartmentID 
GROUP BY d.DepartmentID
ORDER BY d.DepartmentID