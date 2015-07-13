SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MultipliesByTwo]
(
	@id AS INT
)
AS
BEGIN
	SELECT StuffNumber * 2 FROM [Stuff]
	WHERE Id = @id;
END
GO
