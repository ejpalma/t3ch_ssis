SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

USE [AdventureWorksDW2012]
GO

-- =============================================
-- Author:		ejpalma
-- Create date: 20190420
-- Description:	Create (if it is needed) and init the NewFactCurrencyRate table.
-- =============================================
CREATE PROCEDURE ResetNewFactCurrencyRate
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	SET NOCOUNT ON;
	
	DECLARE @OBJ_EXISTS AS BIT;
	SET @OBJ_EXISTS = 0;

	DECLARE @OBJ_NAME AS VARCHAR(100);
	SET @OBJ_NAME = N'NewFactCurrencyRate';
 
	IF NOT EXISTS(SELECT 1 FROM sys.Tables WHERE Name = @OBJ_NAME AND Type = N'U')
	BEGIN
		CREATE TABLE NewFactCurrencyRate (
			[AverageRate] REAL,
			[CurrencyID] NVARCHAR(50),
			[CurrencyDate] DATE,
			[EndOfDayRate] REAL,
			[CurrencyAlternateKey] NVARCHAR(3),
			[DateKey] INT
		)
	END
	ELSE
	BEGIN
		TRUNCATE TABLE NewFactCurrencyRate;
	END
END
GO
