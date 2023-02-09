CREATE PROC usp_SearchByAirportName @airportName VARCHAR(70)
	AS 
	SELECT
	a.AirportName,
	p.FullName,
	CASE
	WHEN fd.TicketPrice <=400 THEN 'Low'
	WHEN fd.TicketPrice BETWEEN 401 AND 1500 THEN 'Medium'
	ELSE 'High'
	END AS LevelOfTickerPrice,
	af.Manufacturer,
	af.Condition,
	ay.TypeName
	FROM Airports AS a
	JOIN FlightDestinations AS fd ON a.Id = fd.AirportId
	JOIN Aircraft AS af ON fd.AircraftId = af.Id
	JOIN Passengers AS p ON fd.PassengerId = p.Id
	JOIN AircraftTypes AS ay ON af.TypeId = ay.Id
	WHERE @airportName = a.AirportName
	ORDER BY af.Manufacturer,p.FullName

	EXEC usp_SearchByAirportName 'Sir Seretse Khama International Airport'
