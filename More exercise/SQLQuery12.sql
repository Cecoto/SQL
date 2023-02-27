SELECT 
CONCAT(c.FirstName,' ',c.LastName) AS FullName,
a.Country,
a.ZIP,
CONCAT('$',MAX(ci.PriceForSingleCigar)) AS CigarPrice
FROM Clients AS c
JOIN Addresses AS a ON c.AddressId = a.Id
JOIN ClientsCigars AS cg ON C.Id = CG.ClientId
JOIN Cigars As ci ON cg.CigarId = ci.Id
WHERE a.ZIP NOT LIKE '%[^0-9]%'
GROUP BY c.FirstName,c.LastName,A.Country,A.ZIP
ORDER BY FullName ASC