
--TASK 05
SELECT
c.CigarName,
c.PriceForSingleCigar,
c.ImageURL
FROM Cigars AS c
ORDER BY PriceForSingleCigar , CigarName DESC