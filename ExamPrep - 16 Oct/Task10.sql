--TASK 10
SELECT 
c.LastName,
AVG(s.[Length]) AS CiagrLength,
CEILING(AVG(s.RingRange)) AS CiagrRingRange
FROM Clients AS c
JOIN ClientsCigars AS cs ON c.Id=CS.ClientId
JOIN Cigars as cg ON cs.CigarId=cg.Id
JOIN Sizes AS s ON cg.SizeId = S.Id
GROUP BY c.LastName
ORDER BY CiagrLength DESC
