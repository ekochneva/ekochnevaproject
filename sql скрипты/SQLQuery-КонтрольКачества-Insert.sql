USE [Zkh]
GO

INSERT INTO [dbo].[КонтрольКачества]
           ([Код_заявки]
           ,[Оценка]
           ,[Комментарий])
     VALUES
           (<Код_заявки, int,>
           ,<Оценка, int,>
           ,<Комментарий, nvarchar(max),>)
GO


