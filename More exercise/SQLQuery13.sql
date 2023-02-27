SELECT
cl.LastName,
AVG(s.[Length]) AS CiagrLength,
CEILING(AVG(S.RingRange)) AS CiagrRingRange
FROM Clients AS cl
JOIN ClientsCigars cg ON CL.Id = CG.ClientId
JOIN Cigars AS c ON  CG.CigarId = C.Id
JOIN Sizes AS s ON c.SizeId = s.Id
GROUP BY cl.LastName
ORDER BY CiagrLength DESC
