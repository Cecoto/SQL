SELECT
d.[Name]  AS DistributorName,
i.[Name] AS IngredientName,
p.[Name] AS ProductName,
AVG(f.Rate) AS AverageRate
FROM Distributors AS d 
JOIN Ingredients AS i ON i.DistributorId = d.Id
JOIN ProductsIngredients AS pg ON pg.IngredientId = i.Id
JOIN Products AS p ON pg.ProductId = p.Id
JOIN Feedbacks AS f ON f.ProductId = p.Id
GROUP BY P.[Name], d.[Name],i.[Name]
HAVING AVG(f.Rate) BETWEEN 5 AND 8
ORDER BY DistributorName,IngredientName,ProductName
