CREATE FUNCTION ufn_IsWordComprised(@setOfLetters VARCHAR(50), @word VARCHAR(30))
RETURNS INT
AS
BEGIN
DECLARE @result INT
IF(@word LIKE '%' + @setOfLetters+ '%')
SET @result = 1
ELSE
SET @result = 0
RETURN @result
END