CREATE OR ALTER PROC usp_AnimalsWithOwnersOrNot(@AnimalName VARCHAR(40))
	AS
	
	SELECT 
	a.[Name],
	REPLACE(CASE
		
		WHEN a.OwnerId IS NULL THEN 'For adoption'
		ELSE o.[Name]
	END ,'','')AS OwnersName
	FROM Animals AS a
	LEFT JOIN Owners AS o ON a.OwnerId = o.Id
	WHERE a.[Name]=@AnimalName
	

	EXEC usp_AnimalsWithOwnersOrNot 'Pumpkinseed Sunfish'

	EXEC usp_AnimalsWithOwnersOrNot 'Hippo'



