USE [Zkh]
GO

/****** Object:  Table [dbo].[УчетСредств]    Script Date: 22.11.2018 13:17:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[УчетСредств](
	[Код_учета] [int] IDENTITY(1,1) NOT NULL,
	[Код_сотрудника] [int] NULL,
	[Код_услуги] [int] NULL,
	[Сумма_поступления] [int] NULL,
	[Сумма_списания] [int] NULL,
	[Описание] [nvarchar](max) NULL,
 CONSTRAINT [PK_УчетСредств] PRIMARY KEY CLUSTERED 
(
	[Код_учета] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[УчетСредств]  WITH CHECK ADD  CONSTRAINT [FK_УчетСредств_Сотрудники] FOREIGN KEY([Код_сотрудника])
REFERENCES [dbo].[Сотрудники] ([Код_сотрудника])
GO

ALTER TABLE [dbo].[УчетСредств] CHECK CONSTRAINT [FK_УчетСредств_Сотрудники]
GO

ALTER TABLE [dbo].[УчетСредств]  WITH CHECK ADD  CONSTRAINT [FK_УчетСредств_Услуги] FOREIGN KEY([Код_услуги])
REFERENCES [dbo].[Услуги] ([Код_услуги])
GO

ALTER TABLE [dbo].[УчетСредств] CHECK CONSTRAINT [FK_УчетСредств_Услуги]
GO


