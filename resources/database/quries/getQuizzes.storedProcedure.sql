USE [onlineQuiz-bsef17m35]
GO
/****** Object:  StoredProcedure [dbo].[getAllQuizzes]    Script Date: 17/04/2020 22:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[getAllQuizzes]
	@teacherId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *,
			(SELECT COUNT(Question.id) FROM Question
				WHERE Question.quizId = id) AS questionCount,
			(SELECT COUNT(Submission.quizId) FROM Submission
				WHERE Submission.quizId = id) AS submissionCount
	FROM Quiz WHERE Quiz.teacherId = @teacherId;
END
