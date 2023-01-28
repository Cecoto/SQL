CREATE PROC usp_GetEmployeesSalaryAboveNumber
@number DECIMAL(18,4) 
AS
	SELECT
	e.FirstName AS 'First Name',
	e.LastName AS 'Last Name'
	FROM Employees AS e
	WHERE E.Salary>@number

	EXEC usp_GetEmployeesSalaryAboveNumber @number = 35000
