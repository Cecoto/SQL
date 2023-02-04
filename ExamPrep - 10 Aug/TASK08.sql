SELECT
s.[Name] AS [Site],
l.[Name] AS [Location],
l.Municipality,
l.Province,
s.Establishment
FROM Sites AS s
JOIN Locations AS l ON S.LocationId = L.Id
WHERE l.[Name] LIKE '[^BMD]%' AND Establishment LIKE '%BC'
ORDER BY s.[Name]