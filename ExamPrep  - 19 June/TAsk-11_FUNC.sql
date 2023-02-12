CREATE FUNCTION udf_GetVolunteersCountFromADepartment (@VolunteersDepartment VARCHAR(50))
RETURNS INT 
AS
BEGIN
DECLARE @result INT
	SET @result = 
	(SELECT
	COUNT(*)
	FROM Volunteers AS v
	JOIN VolunteersDepartments AS vd ON v.DepartmentId = vd.Id
	WHERE vd.DepartmentName = @VolunteersDepartment
	)
RETURN @result
END

SELECT dbo.udf_GetVolunteersCountFromADepartment ('Guest engagement')

