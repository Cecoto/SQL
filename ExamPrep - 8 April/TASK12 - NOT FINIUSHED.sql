CREATE PROC usp_AssignEmployeeToReport(@EmployeeId INT, @ReportId INT)
	AS
	SELECT
	(SELECT 
	*
	FROM Employees AS e
	JOIN Reports AS r ON e.id = r.EmployeeId
	JOIN Categories AS c ON c.DepartmentId = e.DepartmentId
	WHERE e.Id = @EmployeeId) AS Employee,
	(SELECT 
	*
	FROM Employees AS e
	JOIN Reports AS r ON e.id = r.EmployeeId
	JOIN Categories AS c ON c.DepartmentId = e.DepartmentId
	WHERE) AS Report

	IF()
	UPDATE Reports
	 SET
