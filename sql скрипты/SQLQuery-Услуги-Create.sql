USE [Zkh]
GO

/****** Object:  Table [dbo].[Услуги]    Script Date: 22.11.2018 13:16:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Услуги](
	[Код_услуги] [int] IDENTITY(1,1) NOT NULL,
	[Код_сферы] [int] NULL,
	[Название_услуги] [nvarchar](50) NULL,
	[Описание_услуги] [nvarchar](max) NULL,
	[Тариф] [int] NULL,
 CONSTRAINT [PK_Услуги] PRIMARY KEY CLUSTERED 
(
	[Код_услуги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[Услуги]  WITH CHECK ADD  CONSTRAINT [FK_Услуги_СферыУслуг] FOREIGN KEY([Код_сферы])
REFERENCES [dbo].[СферыУслуг] ([Код_сферы])
GO

ALTER TABLE [dbo].[Услуги] CHECK CONSTRAINT [FK_Услуги_СферыУслуг]
GO


