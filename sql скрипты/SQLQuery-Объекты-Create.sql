USE [Zkh]
GO

/****** Object:  Table [dbo].[Объекты]    Script Date: 22.11.2018 12:57:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Объекты](
	[Код_объекта] [int] IDENTITY(1,1) NOT NULL,
	[Город] [nvarchar](50) NULL,
	[Улица] [nvarchar](50) NULL,
	[Дом] [int] NULL,
	[Количество_этажей] [int] NULL,
	[Количество_квартир] [int] NULL,
 CONSTRAINT [PK_Объекты] PRIMARY KEY CLUSTERED 
(
	[Код_объекта] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


