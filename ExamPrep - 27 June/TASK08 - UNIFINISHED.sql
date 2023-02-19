SELECT 
CONCAT(m.FirstName,' ',m.LastName) AS Available,
j.[Status]
FROM Mechanics AS m
RIGHT JOIN Jobs AS j ON m.MechanicId = j.MechanicId
WHERE (j.[Status] = 'Finished' OR j.MechanicId IS NULL)
GROUP BY m.FirstName,m.LastName,m.MechanicId,j.[Status]
ORDER BY m.MechanicId
