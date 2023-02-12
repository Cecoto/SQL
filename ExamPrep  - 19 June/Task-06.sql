SELECT
[Name],
AnimalType,
FORMAT(BirthDate,'dd.MM.yyyy')
FROM Animals AS a
JOIN AnimalTypes AS an ON a.AnimalTypeId=an.Id
ORDER BY [Name]