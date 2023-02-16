CREATE PROC usp_SearchForFiles(@fileExtension VARCHAR(20))
  AS
  SELECT 
  f.[id],
  f.[Name],
  CONCAT(f.Size,'KB') AS Size
  FROM Files AS f
  WHERE f.[Name] LIKE '%' + @fileExtension
  ORDER BY f.Id ASC,f.[Name] ASC,f.Size DESC

  EXEC usp_SearchForFiles 'txt'
