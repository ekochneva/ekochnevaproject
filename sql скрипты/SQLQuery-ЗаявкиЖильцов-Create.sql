USE [Zkh]
GO

/****** Object:  Table [dbo].[ЗаявкиЖильцов]    Script Date: 22.11.2018 12:53:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ЗаявкиЖильцов](
	[Код_заявки] [int] IDENTITY(1,1) NOT NULL,
	[Код_жильца] [int] NULL,
	[Код_сотрудника] [int] NULL,
	[Код_услуги] [int] NULL,
	[Название] [nvarchar](50) NULL,
	[Описание] [nvarchar](max) NULL,
	[Выполнено] [bit] NULL,
 CONSTRAINT [PK_ЗаявкиЖильцов] PRIMARY KEY CLUSTERED 
(
	[Код_заявки] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[ЗаявкиЖильцов]  WITH CHECK ADD  CONSTRAINT [FK_ЗаявкиЖильцов_Жильцы] FOREIGN KEY([Код_жильца])
REFERENCES [dbo].[Жильцы] ([Код_жильца])
GO

ALTER TABLE [dbo].[ЗаявкиЖильцов] CHECK CONSTRAINT [FK_ЗаявкиЖильцов_Жильцы]
GO

ALTER TABLE [dbo].[ЗаявкиЖильцов]  WITH CHECK ADD  CONSTRAINT [FK_ЗаявкиЖильцов_Сотрудники] FOREIGN KEY([Код_сотрудника])
REFERENCES [dbo].[Сотрудники] ([Код_сотрудника])
GO

ALTER TABLE [dbo].[ЗаявкиЖильцов] CHECK CONSTRAINT [FK_ЗаявкиЖильцов_Сотрудники]
GO

ALTER TABLE [dbo].[ЗаявкиЖильцов]  WITH CHECK ADD  CONSTRAINT [FK_ЗаявкиЖильцов_Услуги] FOREIGN KEY([Код_услуги])
REFERENCES [dbo].[Услуги] ([Код_услуги])
GO

ALTER TABLE [dbo].[ЗаявкиЖильцов] CHECK CONSTRAINT [FK_ЗаявкиЖильцов_Услуги]
GO


