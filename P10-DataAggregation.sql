SELECT DISTINCT
SUBSTRING(FirstName,1,1)
FROM WizzardDeposits
GROUP BY FirstName,DepositGroup
HAVING DepositGroup = 'Troll Chest'

