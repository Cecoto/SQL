SELECT
c.Id,
CONCAT(c.FirstName,' ',c.LastName) AS ClientName,
c.Email
FROM Clients AS c
LEFT JOIN ClientsCigars AS cg ON c.Id = cg.ClientId
WHERE ClientId IS NULL
ORDER BY ClientName ASC 
