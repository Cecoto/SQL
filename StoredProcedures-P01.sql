CREATE OR ALTER PROC usp_GetEmployeesSalaryAbove35000
AS
SELECT 
e.FirstName AS 'First Name',
e.LastName AS 'Last Name'
FROM Employees AS e
WHERE e.Salary>35000

EXEC usp_GetEmployeesSalaryAbove35000
