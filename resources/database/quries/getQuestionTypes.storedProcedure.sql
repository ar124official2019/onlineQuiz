USE [onlineQuiz-bsef17m35];

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE getQuestionTypes
AS
BEGIN
	SELECT type FROM QuestionType;
END
