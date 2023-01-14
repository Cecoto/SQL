SELECT 
	DepartmentID AS [номер на отдел],
	 [Name] AS [име на отдел]
FROM Departments
WHERE
	DepartmentID=3
	OR [Name]='Finance'
 