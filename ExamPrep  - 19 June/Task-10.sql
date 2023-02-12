SELECT 
a.[Name],
DATEPART(YEAR,a.BirthDate) AS BirthYear,
AN.AnimalType
FROM Animals AS a
LEFT JOIN Owners AS o ON a.OwnerId=o.Id
JOIN AnimalTypes AS an ON a.AnimalTypeId = an.Id
WHERE a.OwnerId IS NULL AND DATEPART(YEAR,a.BirthDate)>2017
ORDER BY a.[Name]