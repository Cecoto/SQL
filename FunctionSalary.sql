CREATE FUNCTION udf_GetSalaryLevel(@Salary MONEY)
RETURNS VARCHAR(10)
AS
BEGIN
	DECLARE @Result VARCHAR(10)
		SET @Result = 'High'
		IF(@Salary<30000)
			BEGIN
			SET @Result = 'Low'
			END
		ELSE IF(@Salary BETWEEN 30000 AND 50000)
			BEGIN
			SET @Result = 'Avarage'
			END
		RETURN @Result
END

SELECT
CONCAT(FirstName,' ',LastName) AS FullName,
Salary,
dbo.udf_GetSalaryLevel(Salary) AS SalaryLevel

FROM Employees