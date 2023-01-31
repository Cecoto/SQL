-- TASK 06
SELECT 
c.Id,
c.CigarName,
c.PriceForSingleCigar,
t.TasteType,
t.TasteStrength
FROM Cigars AS c
JOIN Tastes AS t ON C.TastId=T.Id
WHERE t.TasteType = 'Earthy' OR t.TasteType = 'Woody'
ORDER BY PriceForSingleCigar DESC