USE [Zkh]
GO

/****** Object:  Table [dbo].[КонтрольКачества]    Script Date: 22.11.2018 12:54:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[КонтрольКачества](
	[Код_контроля] [int] IDENTITY(1,1) NOT NULL,
	[Код_заявки] [int] NULL,
	[Оценка] [int] NULL,
	[Комментарий] [nvarchar](max) NULL,
 CONSTRAINT [PK_КонтрольКачества] PRIMARY KEY CLUSTERED 
(
	[Код_контроля] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[КонтрольКачества]  WITH CHECK ADD  CONSTRAINT [FK_КонтрольКачества_ЗаявкиЖильцов] FOREIGN KEY([Код_заявки])
REFERENCES [dbo].[ЗаявкиЖильцов] ([Код_заявки])
GO

ALTER TABLE [dbo].[КонтрольКачества] CHECK CONSTRAINT [FK_КонтрольКачества_ЗаявкиЖильцов]
GO


