SELECT 
a.AirportName,
fd.[Start],
fd.TicketPrice,
p.FullName,
af.Manufacturer,
af.Model
FROM FlightDestinations AS fd
JOIN Airports AS a ON fd.AirportId = a.Id
JOIN Passengers AS p ON fd.PassengerId = p.Id
JOIN Aircraft AS af ON fd.AircraftId = af.Id
WHERE (DATEPART(HOUR,fd.[Start]) BETWEEN 6 AND 20) AND fd.TicketPrice >2500
ORDER BY af.Model
