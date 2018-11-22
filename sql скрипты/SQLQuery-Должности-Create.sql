USE [Zkh]
GO

/****** Object:  Table [dbo].[Должности]    Script Date: 22.11.2018 12:49:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Должности](
	[Код_должности] [int] IDENTITY(1,1) NOT NULL,
	[Код_отдела] [int] NULL,
	[Название_должности] [nvarchar](50) NULL,
	[Требования] [nvarchar](max) NULL,
	[Обязанности] [nvarchar](max) NULL,
	[Оплата] [int] NULL,
 CONSTRAINT [PK_Должности] PRIMARY KEY CLUSTERED 
(
	[Код_должности] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[Должности]  WITH CHECK ADD  CONSTRAINT [FK_Должности_Отделы] FOREIGN KEY([Код_отдела])
REFERENCES [dbo].[Отделы] ([Код_отдела])
GO

ALTER TABLE [dbo].[Должности] CHECK CONSTRAINT [FK_Должности_Отделы]
GO


