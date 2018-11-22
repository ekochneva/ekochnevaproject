USE [Zkh]
GO

/****** Object:  Table [dbo].[Подрядчики]    Script Date: 22.11.2018 13:11:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Подрядчики](
	[Код_подрядчика] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](50) NULL,
 CONSTRAINT [PK_Подрядчики] PRIMARY KEY CLUSTERED 
(
	[Код_подрядчика] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


