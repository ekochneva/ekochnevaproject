USE [Zkh]
GO

/****** Object:  Table [dbo].[“ипыѕлановых–емонтных–абот]    Script Date: 22.11.2018 13:15:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[“ипыѕлановых–емонтных–абот](
	[ од_типа] [int] IDENTITY(1,1) NOT NULL,
	[Ќазвание] [nvarchar](50) NULL,
	[ќписание] [nvarchar](max) NULL,
	[—рок] [int] NULL,
	[—тоимость] [int] NULL,
 CONSTRAINT [PK_“ипыѕлановых–емонтных–абот] PRIMARY KEY CLUSTERED 
(
	[ од_типа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


