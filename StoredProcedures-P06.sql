CREATE PROC usp_EmployeesBySalaryLevel 
@leveOfSalary VARCHAR(10)
AS
SELECT 
e.FirstName AS 'First Name',
e.LastName AS 'Last Name'
FROM Employees AS e
WHERE dbo.udf_GetSalaryLevel(e.Salary) = @leveOfSalary

EXEC usp_EmployeesBySalaryLevel @leveOfSalary = 'High'