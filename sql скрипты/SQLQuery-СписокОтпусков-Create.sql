USE [Zkh]
GO

/****** Object:  Table [dbo].[СписокОтпусков]    Script Date: 22.11.2018 13:13:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[СписокОтпусков](
	[Код_отпуска] [int] IDENTITY(1,1) NOT NULL,
	[Код_сотрудника] [int] NULL,
	[Дата_начала] [date] NULL,
	[Дата_конца] [date] NULL,
 CONSTRAINT [PK_СписокОтпусков] PRIMARY KEY CLUSTERED 
(
	[Код_отпуска] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[СписокОтпусков]  WITH CHECK ADD  CONSTRAINT [FK_СписокОтпусков_Сотрудники] FOREIGN KEY([Код_сотрудника])
REFERENCES [dbo].[Сотрудники] ([Код_сотрудника])
GO

ALTER TABLE [dbo].[СписокОтпусков] CHECK CONSTRAINT [FK_СписокОтпусков_Сотрудники]
GO


