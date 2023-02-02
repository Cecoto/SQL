






--TASK 12
GO
CREATE PROC usp_SearchByTaste(@taste NVARCHAR(50))
AS
SELECT
c.CigarName,
CONCAT('$',c.PriceForSingleCigar) AS Price,
t.TasteType,
b.BrandName,
CONCAT(s.[Length],' cm') AS CigarLength,
CONCAT(s.RingRange,' cm') AS CigarRingRange
FROM Cigars AS c
JOIN Brands AS b ON C.BrandId = B.Id
JOIN Sizes AS s ON c.SizeId = s.Id
JOIN Tastes AS t ON c.TastId = t.Id
WHERE t.TasteType=@taste
ORDER BY s.[Length],s.RingRange DESC


EXEC usp_SearchByTaste 'Woody'


