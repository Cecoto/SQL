CREATE VIEW V_EmployeeSalary AS
SELECT
	FirstName,
	LastName,
	Salary
FROM Employees

SELECT *
FROM V_EmployeeSalary
WHERE Salary >10000
ORDER BY Salary DESC