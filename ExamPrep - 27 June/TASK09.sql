SELECT
j.JobId,
ISNULL(SUM(op.Quantity*p.Price),0) AS Total
FROM Jobs AS j
LEFT JOIN Orders AS o ON j.JobId = o.JobId
LEFT JOIN OrderParts AS op ON o.OrderId = op.OrderId
LEFT JOIN Parts AS p ON op.PartId = p.PartId
WHERE j.[Status] = 'Finished'
GROUP BY j.JobId
ORDER BY SUM(op.Quantity*p.Price) DESC ,J.JobId