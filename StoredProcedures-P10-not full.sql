CREATE OR ALTER PROC usp_GetHoldersWithBalanceHigherThan 
@number DECIMAL(20,4)
AS
SELECT
ah.FirstName,
ah.LastName
FROM AccountHolders AS ah
JOIN Accounts AS acc ON ah.Id=acc.AccountHolderId
WHERE acc.Balance > @number
ORDER BY FirstName,LastName


EXEC usp_GetHoldersWithBalanceHigherThan @number = 121231.1234412