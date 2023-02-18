SELECT 
CONCAT(c.FirstName,' ',c.LastName) AS Client,
DATEDIFF(DAY, J.IssueDate, '2017/04/24') AS 'Days going',
J.[Status]
FROM Clients AS c
JOIN Jobs AS j ON c.ClientId = j.ClientId
WHERE j.[Status] != 'Finished'
ORDER BY [Days going] DESC, c.ClientId