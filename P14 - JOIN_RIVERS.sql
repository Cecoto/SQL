SELECT TOP 5
c.CountryName
,r.RiverName
FROM Continents AS cont 
JOIN Countries AS c ON cont.ContinentCode = c.ContinentCode
LEFT JOIN CountriesRivers AS cr ON c.CountryCode=cr.CountryCode
LEFT JOIN Rivers AS r ON cr.RiverId=r.Id
WHERE cont.ContinentCode='AF' 
ORDER BY c.CountryName

