USE [Zkh]
GO

/****** Object:  Table [dbo].[Отделы]    Script Date: 22.11.2018 13:08:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Отделы](
	[Код_отдела] [int] IDENTITY(1,1) NOT NULL,
	[Название_отдела] [nvarchar](50) NULL,
	[Должностная_инструкция] [nvarchar](max) NULL,
 CONSTRAINT [PK_Отделы] PRIMARY KEY CLUSTERED 
(
	[Код_отдела] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


