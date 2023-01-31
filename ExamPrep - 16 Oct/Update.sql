--TASK 03

UPDATE Cigars SET PriceForSingleCigar = PriceForSingleCigar *1.2
WHERE TastId = 1
UPDATE Brands SET BrandDescription = 'New description'
WHERE BrandDescription IS NULL

--TASK 04
DELETE FROM Clients
WHERE AddressId IN(
SELECT Id
FROM Addresses 
WHERE Country LIKE 'C%')

DELETE
FROM Addresses
WHERE Country LIKE 'C%'