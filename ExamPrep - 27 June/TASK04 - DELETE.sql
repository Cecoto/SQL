DELETE FROM OrderParts
WHERE OrderId IN(
SELECT OrderId FROM Orders
WHERE OrderId = 19
)
DELETE FROM Orders
WHERE OrderId = 19