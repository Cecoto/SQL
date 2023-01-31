--TASK 09

SELECT
CONCAT(c.FirstName,' ',c.LastName) AS FullName,
a.Country,
a.ZIP,
CONCAT('$',
	(SELECT
		MAX(PriceForSingleCigar)
	FROM Cigars AS cg
	JOIN ClientsCigars AS cc ON cg.Id = cc.CigarId AND cc.ClientId=c.Id)) AS CigarPrice
FROM Clients AS c 
JOIN Addresses AS a ON c.AddressId=a.Id
WHERE a.ZIP NOT LIKE '%[^0-9]%' 
ORDER BY FullName
