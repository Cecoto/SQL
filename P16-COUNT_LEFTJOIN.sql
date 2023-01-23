SELECT
COUNT(*) AS [Count]
FROM Countries AS c
LEFT JOIN MountainsCountries AS mc ON C.CountryCode = mc.CountryCode
LEFT JOIN Mountains AS m ON mc.MountainId = m.Id
WHERE mc.MountainId IS NULL
GROUP BY(mc.MountainId)
                                 