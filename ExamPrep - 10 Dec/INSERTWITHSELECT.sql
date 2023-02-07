INSERT INTO Passengers(FullName,Email) 
SELECT
CONCAT(P.FirstName,' ',P.LastName) AS FullName,
CONCAT(P.FirstName,'',P.LastName,'@gmail.com') AS Email
FROM Pilots AS p
WHERE p.Id BETWEEN 5 AND 15