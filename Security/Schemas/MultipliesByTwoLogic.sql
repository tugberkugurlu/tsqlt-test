CREATE SCHEMA [MultipliesByTwoLogic]
AUTHORIZATION [dbo]
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'tSQLt.TestClass', @xp, 'SCHEMA', N'MultipliesByTwoLogic', NULL, NULL, NULL, NULL
GO
