UPDATE Aircraft 
SET Condition = 'A'
 WHERE Condition = 'C' AND Condition = 'B' 
 OR (FlightHours IS NULL AND [Year]>=2013) OR (FlightHours BETWEEN 0 AND 100
 AND [Year] >=2013)
