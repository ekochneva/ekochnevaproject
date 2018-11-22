USE [Zkh]
GO

/****** Object:  Table [dbo].[СферыУслуг]    Script Date: 22.11.2018 13:14:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[СферыУслуг](
	[Код_сферы] [int] IDENTITY(1,1) NOT NULL,
	[Код_подрядчика] [int] NULL,
	[Название] [nvarchar](50) NULL,
 CONSTRAINT [PK_СферыУслуг] PRIMARY KEY CLUSTERED 
(
	[Код_сферы] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[СферыУслуг]  WITH CHECK ADD  CONSTRAINT [FK_СферыУслуг_Подрядчики] FOREIGN KEY([Код_подрядчика])
REFERENCES [dbo].[Подрядчики] ([Код_подрядчика])
GO

ALTER TABLE [dbo].[СферыУслуг] CHECK CONSTRAINT [FK_СферыУслуг_Подрядчики]
GO


