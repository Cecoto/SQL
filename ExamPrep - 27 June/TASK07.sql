SELECT
CONCAT(m.FirstName,' ',m.LastName) AS Mechanic,
AVG(DATEDIFF(DAY, j.IssueDate,j.FinishDate))
FROM Mechanics AS m
JOIN Jobs as j ON m.MechanicId = j.MechanicId
WHERE j.[Status] = 'Finished'
GROUP BY m.FirstName,m.LastName,m.MechanicId
ORDER BY m.MechanicId

--DATEDIFF(DAY, J.IssueDate, '2017/04/24') AS 'Days going'