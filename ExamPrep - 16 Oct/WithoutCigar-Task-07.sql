--TASK 07
SELECT 
c.Id,
CONCAT(C.FirstName,' ',C.LastName) AS ClientName,
c.Email
FROM Clients AS c
LEFT JOIN ClientsCigars AS cs ON c.Id=CS.ClientId
WHERE cs.CigarId IS NULL
ORDER BY ClientName