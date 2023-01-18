SELECT
e.EmployeeID,
e.FirstName,
CASE 
WHEN DATEPART(YEAR,p.StartDate) >=2005 THEN NULL
WHEN DATEPART(YEAR,p.StartDate)<2005 THEN p.[Name]
END AS ProjectName
FROM Employees AS e
JOIN EmployeesProjects AS em ON E.EmployeeID=EM.EmployeeID
JOIN  Projects AS p ON em.ProjectID=p.ProjectID
WHERE em.EmployeeID=24
