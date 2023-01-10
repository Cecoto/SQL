SELECT 
	CONCAT(FirstName,' ',LastName) AS Fullname,
	JobTitle,
	FORMAT(Salary,'0.00')
FROM Employees