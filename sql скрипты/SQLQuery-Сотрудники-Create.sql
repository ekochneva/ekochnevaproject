USE [Zkh]
GO

/****** Object:  Table [dbo].[Сотрудники]    Script Date: 22.11.2018 13:12:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Сотрудники](
	[Код_сотрудника] [int] IDENTITY(1,1) NOT NULL,
	[Код_должности] [int] NULL,
	[ФИО] [nvarchar](50) NULL,
	[Дата_рождения] [date] NULL,
	[Пол] [nchar](10) NULL,
	[Адрес] [nvarchar](50) NULL,
	[Телефон] [nvarchar](50) NULL,
 CONSTRAINT [PK_Сотрудники] PRIMARY KEY CLUSTERED 
(
	[Код_сотрудника] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Сотрудники]  WITH CHECK ADD  CONSTRAINT [FK_Сотрудники_Должности] FOREIGN KEY([Код_должности])
REFERENCES [dbo].[Должности] ([Код_должности])
GO

ALTER TABLE [dbo].[Сотрудники] CHECK CONSTRAINT [FK_Сотрудники_Должности]
GO


