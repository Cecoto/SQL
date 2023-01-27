SELECT
d.DepartmentID,
MIN(e.Salary) AS MinimumSalary
FROM Departments AS d
JOIN Employees AS e ON d.DepartmentID = e.DepartmentID 
WHERE d.DepartmentID=2 OR d.DepartmentID=5 OR d.DepartmentID=7
AND HireDate>'01/01/2000'
GROUP BY d.DepartmentID
ORDER BY d.DepartmentID