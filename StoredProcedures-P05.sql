CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4))
RETURNS VARCHAR(15)
AS

BEGIN
DECLARE @result VARCHAR(15)
 IF(@salary < 30000)
	SET @result = 'Low'
 ELSE IF(@salary BETWEEN 30000 AND 50000)
	SET @result = 'Average'
 ELSE
	SET @result='High'

RETURN @result
END

SELECT 
Salary,
dbo.udf_GetSalaryLevel(Salary) AS 'Salary Level'
FROM Employees