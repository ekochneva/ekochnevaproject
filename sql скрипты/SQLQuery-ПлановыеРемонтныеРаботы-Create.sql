USE [Zkh]
GO

/****** Object:  Table [dbo].[ѕлановые–емонтные–аботы]    Script Date: 22.11.2018 13:10:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ѕлановые–емонтные–аботы](
	[ од_работы] [int] IDENTITY(1,1) NOT NULL,
	[ од_объекта] [int] NULL,
	[ од_типа] [int] NULL,
	[Ќазвание_работы] [nvarchar](50) NULL,
	[ƒата_начала] [date] NULL,
	[¬ыполнено] [bit] NULL,
 CONSTRAINT [PK_ѕлановые–емонтные–аботы] PRIMARY KEY CLUSTERED 
(
	[ од_работы] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ѕлановые–емонтные–аботы]  WITH CHECK ADD  CONSTRAINT [FK_ѕлановые–емонтные–аботы_ќбъекты] FOREIGN KEY([ од_объекта])
REFERENCES [dbo].[ќбъекты] ([ од_объекта])
GO

ALTER TABLE [dbo].[ѕлановые–емонтные–аботы] CHECK CONSTRAINT [FK_ѕлановые–емонтные–аботы_ќбъекты]
GO

ALTER TABLE [dbo].[ѕлановые–емонтные–аботы]  WITH CHECK ADD  CONSTRAINT [FK_ѕлановые–емонтные–аботы_“ипыѕлановых–емонтных–абот] FOREIGN KEY([ од_типа])
REFERENCES [dbo].[“ипыѕлановых–емонтных–абот] ([ од_типа])
GO

ALTER TABLE [dbo].[ѕлановые–емонтные–аботы] CHECK CONSTRAINT [FK_ѕлановые–емонтные–аботы_“ипыѕлановых–емонтных–абот]
GO


