SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [MultipliesByTwoLogic].[test coreect row is multiplied by two]
AS
BEGIN
	EXEC tSQLt.FakeTable 'dbo', 'Stuff';
	INSERT INTO dbo.[Stuff] (Id, StuffNumber) VALUES (1, 2);
	INSERT INTO dbo.[Stuff] (Id, StuffNumber) VALUES (2, 3);
	INSERT INTO dbo.[Stuff] (Id, StuffNumber) VALUES (3, 4);

	CREATE TABLE #Actual (
        StuffNumber INT
    );

	INSERT #Actual EXEC dbo.MultipliesByTwo '2'

	CREATE TABLE #Expected (
        StuffNumber INT
    );

	INSERT INTO #Expected (StuffNumber) VALUES (3*2);

	EXEC tSQLt.AssertEqualsTable '#Expected', '#Actual';

END;
GO
