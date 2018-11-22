USE [Zkh]
GO

/****** Object:  Table [dbo].[Оборудование]    Script Date: 22.11.2018 12:56:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Оборудование](
	[Код_оборудования] [int] IDENTITY(1,1) NOT NULL,
	[Код_должности] [int] NULL,
	[Название] [nvarchar](50) NULL,
	[Назначение] [nvarchar](max) NULL,
 CONSTRAINT [PK_Оборудование] PRIMARY KEY CLUSTERED 
(
	[Код_оборудования] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[Оборудование]  WITH CHECK ADD  CONSTRAINT [FK_Оборудование_Должности] FOREIGN KEY([Код_должности])
REFERENCES [dbo].[Должности] ([Код_должности])
GO

ALTER TABLE [dbo].[Оборудование] CHECK CONSTRAINT [FK_Оборудование_Должности]
GO


