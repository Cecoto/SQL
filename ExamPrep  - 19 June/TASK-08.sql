SELECT 
CONCAT(o.[Name],'-',a.[Name]) AS OwnersAnimals,
PhoneNumber,
ac.CageId
FROM Animals AS a
JOIN Owners AS o ON a.OwnerId=o.Id
JOIN AnimalTypes an ON a.AnimalTypeId = an.Id
JOIN Cages AS c ON a.AnimalTypeId = c.AnimalTypeId
JOIN AnimalsCages AS ac ON ac.AnimalId=a.Id
WHERE an.AnimalType = 'Mammals'
GROUP BY o.[Name],a.[Name],PhoneNumber,ac.CageId
ORDER BY o.[Name],a.[Name] DESC

