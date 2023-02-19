SELECT 
p.PartId,
p.[Description],
pn.Quantity AS [Required],
p.StockQty AS [In Stock],
O.Delivered AS Ordered
FROM Parts AS p
JOIN PartsNeeded AS pn ON p.PartId = pn.PartId
JOIN Jobs AS j ON pn.JobId = j.JobId
JOIN OrderParts AS  op ON op.PartId = p.PartId
JOIN Orders AS o ON op.OrderId = o.OrderId
WHERE j.[Status] = 'Pending' OR j.[Status] = 'In Progress'
GROUP BY p.[Description],pn.Quantity,
p.StockQty,p.PartId,O.Delivered
ORDER BY p.PartId