-- Select rows from a Table or View 'Person' in schema 'dbo'
SELECT * FROM dbo.Person
WHERE name = '%s%'	/* add search conditions here */
GO