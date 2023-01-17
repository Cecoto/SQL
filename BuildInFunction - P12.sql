SELECT 
	CountryName,
	IsoCode
FROM Countries
WHERE LOWER(CountryName) LIKE '%A%A%A%'
ORDER BY IsoCode ASC