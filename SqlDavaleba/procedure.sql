-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE stpInsertClient
	@firstname nvarchar(50),
	@lastname nvarchar(50),
	@idn nvarchar(50),
	@date date,
	@gym_id int,
	@aboniment_id int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.Klientebi(saxeli, gvari, pir_nomeri, gadaxdis_tarigi, darbazi_fk, abonimenti_fk) 
	VALUES (@firstname, @lastname, @idn, @date, @gym_id, @aboniment_id)
END
GO
